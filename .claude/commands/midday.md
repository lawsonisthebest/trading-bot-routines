---
description: Midday scan — cut losers, tighten stops on winners, thesis check
---

Local midday scan workflow. Uses the local .env for credentials.

STEP 1 — Read memory:
- memory/TRADING-STRATEGY.md (exit rules)
- tail of memory/TRADE-LOG.md (entries, original thesis, stops)
- today's memory/RESEARCH-LOG.md entry

STEP 2 — Pull current state:
  bash scripts/alpaca.sh positions
  bash scripts/alpaca.sh orders

STEP 3 — Cut losers. For any position where unrealized_plpc <= -0.07:
  bash scripts/alpaca.sh close SYM
  bash scripts/alpaca.sh cancel ORDER_ID
Log exit to TRADE-LOG: exit price, realized P&L, "cut at -7% per rule".

STEP 4 — Tighten trailing stops on winners. Cancel old stop, place new one:
- Up >= +20% -> trail_percent: "5"
- Up >= +15% -> trail_percent: "7"
Never tighten within 3% of current price. Never move a stop down.

STEP 5 — Thesis check. If a thesis broke intraday, cut the position even if
not at -7% yet. Document reasoning in TRADE-LOG.

STEP 6 — Optional intraday WebSearch research if something moves sharply
with no obvious cause. Append addendum to RESEARCH-LOG.

STEP 7 — Notification only if action was taken:
  bash scripts/clickup.sh "<action summary>"
