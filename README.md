# AI Trading Bot

Autonomous swing-trading agent powered by Claude Code. Manages a live ~$10,000 Alpaca account with five scheduled daily workflows.

## Quick Start

1. Copy `env.template` to `.env` and fill in credentials.
2. Run `chmod +x scripts/*.sh`
3. Open this repo in Claude Code and run `/portfolio` to verify connectivity.

## Five Daily Workflows

| Workflow | Schedule (CT) | Purpose |
|---|---|---|
| pre-market | 6:00 AM | Research catalysts, write trade ideas |
| market-open | 8:30 AM | Execute trades, set trailing stops |
| midday | 12:00 PM | Cut losers, tighten stops on winners |
| daily-summary | 3:00 PM | EOD snapshot, ClickUp notification |
| weekly-review | Fri 4:00 PM | Weekly stats, grade, strategy updates |

## Key Rules

- Stocks ONLY — no options ever
- Max 6 positions, 20% each, 3 trades/week
- 10% trailing stop on every position (real GTC order)
- Cut losers at -7%, tighten stops at +15%/+20%

## Credentials

Never commit `.env`. Set credentials as env vars in cloud routine settings.

## Research

Uses Claude Code's built-in `WebSearch` tool for all market research —
no paid research API required.
