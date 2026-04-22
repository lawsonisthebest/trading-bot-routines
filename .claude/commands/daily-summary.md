---
description: EOD snapshot + ClickUp recap. Always sends a message.
---

Local daily summary workflow. Uses the local .env for credentials.

STEP 1 — Read memory for continuity:
- tail of memory/TRADE-LOG.md (find most recent EOD snapshot -> yesterday's equity)
- Count TRADE-LOG entries dated today
- Count trades Mon-today this week

STEP 2 — Pull final state:
  bash scripts/alpaca.sh account
  bash scripts/alpaca.sh positions
  bash scripts/alpaca.sh orders

STEP 3 — Compute:
- Day P&L ($ and %)
- Phase cumulative P&L ($ and %)
- Trades today
- Trades this week

STEP 4 — Append EOD snapshot to memory/TRADE-LOG.md:

  ### MMM DD — EOD Snapshot (Day N, Weekday)
  **Portfolio:** $X | **Cash:** $X (X%) | **Day P&L:** ±$X (±X%) | **Phase P&L:** ±$X (±X%)
  | Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
  **Notes:** one-paragraph plain-english summary.

STEP 5 — Send ONE ClickUp message (always, <= 15 lines):
  bash scripts/clickup.sh "EOD MMM DD
  Portfolio: \$X (±X% day, ±X% phase)
  Cash: \$X
  Trades today: <list or none>
  Open positions:
    SYM ±X.X% (stop \$X.XX)
  Tomorrow: <one-line plan>"
