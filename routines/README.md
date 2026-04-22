# Cloud Routine Prompts

Paste each `*.md` prompt verbatim into its respective Claude Code cloud routine.
Do NOT paraphrase — the env-var check block and the commit-and-push steps are load-bearing.

## Cron schedules (America/Chicago)

| Routine | Cron | Time |
|---|---|---|
| pre-market | `0 6 * * 1-5` | 6:00 AM weekdays |
| market-open | `30 8 * * 1-5` | 8:30 AM weekdays |
| midday | `0 12 * * 1-5` | 12:00 PM weekdays |
| daily-summary | `0 15 * * 1-5` | 3:00 PM weekdays |
| weekly-review | `0 16 * * 5` | 4:00 PM Fridays |

## Required env vars on every routine

- `ALPACA_API_KEY`, `ALPACA_SECRET_KEY`
- `ALPACA_ENDPOINT`, `ALPACA_DATA_ENDPOINT` (optional)
- `CLICKUP_API_KEY`, `CLICKUP_WORKSPACE_ID`, `CLICKUP_CHANNEL_ID`

Research uses Claude Code's native WebSearch tool — no research API key needed.

## Must-toggle settings

- Install Claude GitHub App on the repo.
- Toggle ON "Allow unrestricted branch pushes" in each routine's environment.
