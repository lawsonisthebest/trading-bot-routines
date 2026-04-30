#!/usr/bin/env bash
# Notion trade-journal wrapper.
# Logs every fill (buy or sell) to a Notion database as a new page.
#
# Usage:
#   bash scripts/notion.sh trade \
#     --action BUY \
#     --symbol AAPL \
#     --qty 100 \
#     --price 175.50 \
#     --side buy \
#     --order-type market \
#     --thesis "Q4 earnings beat, sector momentum" \
#     --stop 161.46 \
#     --target 200.00 \
#     --pnl 0
#
# Env required: NOTION_API_KEY, NOTION_DATABASE_ID
# Falls back to logs/notion-fallback.md if either is missing.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"
FALLBACK="$ROOT/logs/notion-fallback.md"
mkdir -p "$ROOT/logs"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

cmd="${1:-}"
shift || true

if [[ "$cmd" != "trade" ]]; then
  echo "Usage: bash scripts/notion.sh trade --action BUY --symbol SYM --qty N --price X.XX [--thesis '...'] [--stop X.XX] [--target X.XX] [--pnl X.XX] [--order-type market] [--side buy|sell] [--asset stock|crypto|etf]" >&2
  exit 1
fi

# Defaults
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

stamp_iso="$(date -u +%Y-%m-%dT%H:%M:%S.000Z)"
stamp_human="$(date '+%Y-%m-%d %H:%M %Z')"
notional="$(awk -v q="$qty" -v p="$price" 'BEGIN { printf "%.2f", q*p }')"

# Fallback path: append to local file when Notion isn't configured.
if [[ -z "${NOTION_API_KEY:-}" || -z "${NOTION_DATABASE_ID:-}" ]]; then
  {
    printf "\n## %s — %s %s\n" "$stamp_human" "$action" "$symbol"
    printf "- Qty: %s @ \$%s = \$%s\n" "$qty" "$price" "$notional"
    printf "- Side: %s | Type: %s | Asset: %s\n" "$side" "$order_type" "$asset"
    [[ -n "$stop" ]] && printf "- Stop: \$%s\n" "$stop"
    [[ -n "$target" ]] && printf "- Target: \$%s\n" "$target"
    [[ "$pnl" != "0" ]] && printf "- P&L: \$%s\n" "$pnl"
    [[ -n "$thesis" ]] && printf "- Thesis: %s\n" "$thesis"
  } >> "$FALLBACK"
  echo "[notion fallback] appended to logs/notion-fallback.md"
  exit 0
fi

# Build the JSON payload via python (jq isn't always present).
PY="$(command -v python3 || command -v python)"
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
if side:
    props["Side"] = {"select": {"name": side}}
if num(stop) is not None:
    props["Stop Price"] = {"number": num(stop)}
if num(target) is not None:
    props["Target Price"] = {"number": num(target)}
if num(pnl) is not None:
    props["Realized P&L"] = {"number": num(pnl)}
if thesis:
    # Notion rich_text caps at 2000 chars per chunk; truncate defensively.
    props["Thesis"] = {"rich_text": [{"text": {"content": thesis[:1900]}}]}

body = {"parent": {"database_id": db}, "properties": props}
print(json.dumps(body))
PY
)"

curl -fsS -X POST "https://api.notion.com/v1/pages" \
  -H "Authorization: Bearer $NOTION_API_KEY" \
  -H "Notion-Version: 2022-06-28" \
  -H "Content-Type: application/json" \
  -d "$payload" \
  > /dev/null
echo "[notion] logged $action $symbol x$qty @ \$$price"
