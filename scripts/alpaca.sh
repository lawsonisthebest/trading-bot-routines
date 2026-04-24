#!/usr/bin/env bash
# Alpaca API wrapper. All trading API calls go through here.
# Usage: bash scripts/alpaca.sh <subcommand> [args...]
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"
if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

: "${ALPACA_API_KEY:?ALPACA_API_KEY not set in environment}"
: "${ALPACA_SECRET_KEY:?ALPACA_SECRET_KEY not set in environment}"

API="${ALPACA_ENDPOINT:-https://api.alpaca.markets/v2}"
DATA="${ALPACA_DATA_ENDPOINT:-https://data.alpaca.markets/v2}"
CRYPTO_DATA="${ALPACA_CRYPTO_DATA_ENDPOINT:-https://data.alpaca.markets/v1beta3/crypto/us}"
H_KEY="APCA-API-KEY-ID: $ALPACA_API_KEY"
H_SEC="APCA-API-SECRET-KEY: $ALPACA_SECRET_KEY"

cmd="${1:-}"
shift || true

case "$cmd" in
  account)
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$API/account"
    ;;
  positions)
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$API/positions"
    ;;
  position)
    sym="${1:?usage: position SYM}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$API/positions/$sym"
    ;;
  quote)
    sym="${1:?usage: quote SYM}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$DATA/stocks/$sym/quotes/latest"
    ;;
  crypto-quote)
    # Usage: crypto-quote BTC/USD   (URL-encodes the slash)
    sym="${1:?usage: crypto-quote SYM (e.g. BTC/USD)}"
    enc="${sym//\//%2F}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$CRYPTO_DATA/latest/quotes?symbols=$enc"
    ;;
  crypto-bars)
    # Usage: crypto-bars BTC/USD 1Day 5
    sym="${1:?usage: crypto-bars SYM timeframe limit}"
    tf="${2:-1Day}"; limit="${3:-10}"
    enc="${sym//\//%2F}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$CRYPTO_DATA/bars?symbols=$enc&timeframe=$tf&limit=$limit"
    ;;
  assets)
    # List tradable assets; filter with optional asset_class (us_equity|crypto)
    cls="${1:-}"
    if [[ -n "$cls" ]]; then
      curl -fsS -H "$H_KEY" -H "$H_SEC" "$API/assets?status=active&asset_class=$cls"
    else
      curl -fsS -H "$H_KEY" -H "$H_SEC" "$API/assets?status=active"
    fi
    ;;
  clock)
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$API/clock"
    ;;
  orders)
    status="${1:-open}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" "$API/orders?status=$status"
    ;;
  order)
    body="${1:?usage: order '<json>'}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" -H "Content-Type: application/json" \
      -X POST -d "$body" "$API/orders"
    ;;
  cancel)
    oid="${1:?usage: cancel ORDER_ID}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" -X DELETE "$API/orders/$oid"
    ;;
  cancel-all)
    curl -fsS -H "$H_KEY" -H "$H_SEC" -X DELETE "$API/orders"
    ;;
  close)
    sym="${1:?usage: close SYM}"
    curl -fsS -H "$H_KEY" -H "$H_SEC" -X DELETE "$API/positions/$sym"
    ;;
  close-all)
    curl -fsS -H "$H_KEY" -H "$H_SEC" -X DELETE "$API/positions"
    ;;
  *)
    echo "Usage: bash scripts/alpaca.sh <account|positions|position|quote|crypto-quote|crypto-bars|assets|clock|orders|order|cancel|cancel-all|close|close-all> [args]" >&2
    exit 1
    ;;
esac
echo
