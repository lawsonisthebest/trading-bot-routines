---
description: Pre-market research — write today's trade ideas to RESEARCH-LOG
---

Local pre-market research workflow. Uses the local .env for credentials.

STEP 1 — Read memory:
- memory/TRADING-STRATEGY.md
- tail of memory/TRADE-LOG.md
- tail of memory/RESEARCH-LOG.md

STEP 2 — Pull live account state:
  bash scripts/alpaca.sh account
  bash scripts/alpaca.sh positions
  bash scripts/alpaca.sh orders

STEP 3 — Research using the native WebSearch tool. One search per query;
capture a URL citation for every fact added to the log:
- "WTI and Brent oil price right now"
- "S&P 500 futures premarket today"
- "VIX level today"
- "Top stock market catalysts today"
- "Earnings reports today before market open"
- "Economic calendar today CPI PPI FOMC jobs data"
- "S&P 500 sector momentum YTD"
- News on any currently-held ticker

STEP 4 — Write a dated entry to memory/RESEARCH-LOG.md:
- Account snapshot
- Market context
- 2-3 actionable trade ideas (catalyst + entry/stop/target)
- Risk factors
- Decision: TRADE or HOLD (default HOLD)

STEP 5 — Silent unless urgent:
  bash scripts/clickup.sh "<one line>"
