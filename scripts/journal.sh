#!/usr/bin/env bash
# Trade journal wrapper.
# Appends one JSON line per fill to data/trades.jsonl. The dashboard at
# docs/index.html reads this file and renders charts/tables/calendar.
#
# Usage:
#   bash scripts/journal.sh trade \
#     --action BUY \
#     --symbol AAPL \
#     --qty 100 \
#     --price 175.50 \
#     --side buy \
#     --order-type market \
#     --asset stock \
#     --thesis "Q4 earnings beat" \
#     --stop 161.46 \
#     --target 200.00 \
#     --pnl 0
#
# Optional: if NOTION_API_KEY + NOTION_DATABASE_ID are set, ALSO posts to
# Notion. Otherwise just writes the JSON line and returns success.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"
DATA_DIR="$ROOT/data"
JSONL="$DATA_DIR/trades.jsonl"
mkdir -p "$DATA_DIR"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

cmd="${1:-}"
shift || true

if [[ "$cmd" != "trade" ]]; then
  echo "Usage: bash scripts/journal.sh trade --action BUY|SELL --symbol SYM --qty N --price X.XX [--thesis '...'] [--stop X.XX] [--target X.XX] [--pnl X.XX] [--order-type market|limit|stop|trailing_stop] [--side buy|sell] [--asset stock|etf|crypto]" >&2
  exit 1
fi

action=""; symbol=""; qty=""; price=""; thesis=""
stop=""; target=""; pnl="0"; order_type="market"; side=""; asset="stock"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --action) action="$2"; shift 2;;
    --symbol) symbol="$2"; shift 2;;
    --qty) qty="$2"; shift 2;;
    --price) price="$2"; shift 2;;
    --thesis) thesis="$2"; shift 2;;
    --stop) stop="$2"; shift 2;;
    --target) target="$2"; shift 2;;
    --pnl) pnl="$2"; shift 2;;
    --order-type) order_type="$2"; shift 2;;
    --side) side="$2"; shift 2;;
    --asset) asset="$2"; shift 2;;
    *) echo "unknown arg: $1" >&2; exit 1;;
  esac
done

: "${action:?--action required}"
: "${symbol:?--symbol required}"
: "${qty:?--qty required}"
: "${price:?--price required}"

stamp_iso="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
notional="$(awk -v q="$qty" -v p="$price" 'BEGIN { printf "%.2f", q*p }')"

PY="$(command -v python3 || command -v python)"
line="$("$PY" - "$stamp_iso" "$action" "$symbol" "$qty" "$price" "$notional" \
    "$order_type" "$asset" "$side" "$stop" "$target" "$pnl" "$thesis" <<'PY'
import json, sys
ts, action, symbol, qty, price, notional, otype, asset, side, stop, target, pnl, thesis = sys.argv[1:]
def num(s):
    try: return float(s) if s else None
    except: return None
row = {
    "timestamp": ts,
    "action": action,
    "symbol": symbol,
    "qty": num(qty),
    "price": num(price),
    "notional": num(notional),
    "order_type": otype,
    "asset_class": asset,
    "side": side,
    "stop_price": num(stop),
    "target_price": num(target),
    "realized_pnl": num(pnl),
    "thesis": thesis,
}
print(json.dumps(row, separators=(",", ":")))
PY
)"

printf '%s\n' "$line" >> "$JSONL"
echo "[journal] $action $symbol x$qty @ \$$price -> data/trades.jsonl"

# Optional Notion mirror — only if both env vars present
if [[ -n "${NOTION_API_KEY:-}" && -n "${NOTION_DATABASE_ID:-}" ]]; then
  payload="$("$PY" - "$NOTION_DATABASE_ID" "$action" "$symbol" "$qty" "$price" \
      "$notional" "$stamp_iso" "$thesis" "$stop" "$target" "$pnl" "$order_type" \
      "$side" "$asset" <<'PY'
import json, sys
db, action, symbol, qty, price, notional, ts, thesis, stop, target, pnl, otype, side, asset = sys.argv[1:]
def num(s):
    try: return float(s) if s else None
    except: return None
props = {
    "Trade": {"title": [{"text": {"content": f"{action} {symbol} x{qty} @ ${price}"}}]},
    "Action": {"select": {"name": action}},
    "Symbol": {"rich_text": [{"text": {"content": symbol}}]},
    "Quantity": {"number": num(qty) or 0},
    "Price": {"number": num(price) or 0},
    "Notional": {"number": num(notional) or 0},
    "Timestamp": {"date": {"start": ts}},
    "Order Type": {"select": {"name": otype}},
    "Asset Class": {"select": {"name": asset}},
}
if side: props["Side"] = {"select": {"name": side}}
if num(stop) is not None: props["Stop Price"] = {"number": num(stop)}
if num(target) is not None: props["Target Price"] = {"number": num(target)}
if num(pnl) is not None: props["Realized P&L"] = {"number": num(pnl)}
if thesis: props["Thesis"] = {"rich_text": [{"text": {"content": thesis[:1900]}}]}
print(json.dumps({"parent": {"database_id": db}, "properties": props}))
PY
  )"
  curl -fsS -X POST "https://api.notion.com/v1/pages" \
    -H "Authorization: Bearer $NOTION_API_KEY" \
    -H "Notion-Version: 2022-06-28" \
    -H "Content-Type: application/json" \
    -d "$payload" > /dev/null && echo "[journal] also mirrored to Notion" || echo "[journal] notion mirror failed (continuing)"
fi
