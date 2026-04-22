#!/usr/bin/env bash
# Cron entrypoint. Runs one routine prompt through Claude Code headless.
# Usage: bash scripts/run-routine.sh <routine-name>
#   where <routine-name> is one of: pre-market, market-open, midday,
#   daily-summary, weekly-review (matches routines/<name>.md).
set -euo pipefail

ROUTINE="${1:?usage: run-routine.sh <routine-name>}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PROMPT_FILE="$ROOT/routines/${ROUTINE}.md"

if [[ ! -f "$PROMPT_FILE" ]]; then
  echo "FATAL: no prompt at $PROMPT_FILE" >&2
  exit 1
fi

LOG_DIR="$ROOT/logs"
mkdir -p "$LOG_DIR"
LOG="$LOG_DIR/$(date +%Y-%m-%d)_${ROUTINE}.log"

# Make sure claude + node are on PATH when launched by cron (cron has a minimal PATH).
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# Load credentials into the process env so wrappers AND the prompt's env-var check
# both see them. The routine prompt says "NO .env", which was written for the
# Claude cloud environment where secrets are injected by the platform — on this
# VPS the platform is us, and we keep secrets in .env (gitignored).
if [[ -f "$ROOT/.env" ]]; then
  set -a
  # shellcheck disable=SC1091
  source "$ROOT/.env"
  set +a
fi

{
  echo "=================================================="
  echo "Routine: $ROUTINE"
  echo "Started: $(date -Iseconds)"
  echo "Host IP: $(curl -s https://api.ipify.org 2>/dev/null || echo unknown)"
  echo "=================================================="

  cd "$ROOT"

  # Pull any human-authored updates to strategy/memory before running.
  git pull --quiet --rebase origin main || echo "WARN: git pull failed, continuing with local state"

  # Fire Claude Code headless. The prompt tells it what to do, including the final
  # commit + push step. --dangerously-skip-permissions is appropriate on this VPS
  # because (a) we control the machine, (b) the prompts are version-controlled,
  # and (c) the bot has no internet access to anything except the wrappers we wrote.
  claude \
    -p "$(cat "$PROMPT_FILE")" \
    --dangerously-skip-permissions \
    --add-dir "$ROOT"

  echo "Finished: $(date -Iseconds)"
} 2>&1 | tee -a "$LOG"
