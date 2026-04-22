---
description: Friday weekly review — stats, grade, strategy updates if warranted
---

Local weekly review workflow. Uses the local .env for credentials.

STEP 1 — Read memory for full week context:
- memory/WEEKLY-REVIEW.md (match template exactly)
- ALL this week's entries in memory/TRADE-LOG.md
- ALL this week's entries in memory/RESEARCH-LOG.md
- memory/TRADING-STRATEGY.md

STEP 2 — Pull week-end state:
  bash scripts/alpaca.sh account
  bash scripts/alpaca.sh positions

STEP 3 — Compute week metrics:
- Starting portfolio (Monday AM equity)
- Ending portfolio (today's equity)
- Week return ($ and %)
- S&P 500 week return via the native WebSearch tool with query:
  "S&P 500 weekly performance week ending $(date +%Y-%m-%d)"
- Trades (W/L/open), win rate, best, worst, profit factor

STEP 4 — Append full review to memory/WEEKLY-REVIEW.md:
- Stats table
- Closed trades table
- Open positions at week end
- What worked (3-5 bullets)
- What didn't work (3-5 bullets)
- Key lessons
- Adjustments for next week
- Overall letter grade (A-F)

STEP 5 — If a rule has proven out for 2+ weeks or failed badly, also update
memory/TRADING-STRATEGY.md and call out the change.

STEP 6 — Send ONE ClickUp message (<= 15 lines):
  bash scripts/clickup.sh "Week ending MMM DD
  Portfolio: \$X (±X% week, ±X% phase)
  vs S&P 500: ±X%
  Trades: N (W:X / L:Y / open:Z)
  Best: SYM +X% Worst: SYM -X%
  One-line takeaway: <...>
  Grade: <letter>"
