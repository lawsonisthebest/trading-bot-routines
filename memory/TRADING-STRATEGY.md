# Trading Strategy

## Mission
Beat the S&P 500 over the challenge window. Stocks only — no options, ever.
Be ACTIVE, not reckless: take reasonable setups rather than waiting for perfection.

## Capital & Constraints
- Starting capital: ~$10,000 (currently $100k paper for testing)
- Platform: Alpaca
- Instruments: Stocks ONLY
- PDT limit: 3 day trades per 5 rolling days (account < $25k)

## Core Rules
1. NO OPTIONS — ever
2. Target 70-85% deployed during normal markets (idle cash is opportunity cost)
3. 4-6 positions at a time, max 20% each
4. 10% trailing stop on every position as a real GTC order
5. Cut losers at -7% manually
6. Tighten trail: 7% at +15%, 5% at +20%
7. Never within 3% of current price; never move a stop down
8. Max 5 new trades per week (was 3 — loosened for activity)
9. Follow sector momentum, but don't require it to be the leading sector
10. Exit a sector after 2 consecutive failed trades
11. Bias: ACT on qualified setups. "Patience > activity" only applies when NO qualified setups exist.

## Entry Philosophy
Default to TRADE when a setup passes the checklist below. Only HOLD when:
- No setup in RESEARCH-LOG passes the checklist, OR
- VIX > 30 (panic tape), OR
- SPY futures down > 1.5% pre-open (avoid knife-catches), OR
- Account already at max positions (6) or max weekly trades (5)

Do NOT require all of: red futures to be green, sector to be leading, perfect VWAP setup, tight spreads AND a catalyst. Two of the four is enough.

## Entry Checklist (setup is valid if 3 of 4 pass)
- [ ] Specific catalyst (earnings beat, guidance raise, sector tailwind, breakout on volume)
- [ ] Sector in momentum OR at least not in visible decline
- [ ] Stop level identified (7-10% below entry, aligned with a structural level)
- [ ] Target identified with min 1.8:1 R:R (was 2:1 — loosened slightly)

## Timing Rules
- Can enter from 8:35 AM CT onward (was 8:45 — loosened). Just avoid the first 5 minutes.
- Extended hours trading OK for exits on thesis break, not new entries.
- Midday entries (11:00 AM CT) permitted if: morning setup valid, didn't fill at open due to chop, and trend confirmed.

## Buy-Side Gate (all must pass before any order)
- Total positions after fill <= 6
- Trades this week + 1 <= 5
- Position cost <= 20% of equity
- Position cost <= available cash
- daytrade_count < 3 (PDT rule)
- Catalyst documented in today's RESEARCH-LOG (or added now if valid intraday setup)
- Instrument is a stock (not an option)

## Position Sizing
- Default: 15% of equity per position (so 5 positions ≈ 75% deployed)
- High-conviction (catalyst + momentum + clean technicals): up to 20%
- Speculative/lower-conviction: 10%
- Never put more than 30% into a single sector at one time

## Sell-Side Rules
- Unrealized loss <= -7%: close immediately
- Thesis broken: close regardless of P&L
- Up >= +20%: tighten trailing stop to 5%
- Up >= +15%: tighten trailing stop to 7%
- 2 consecutive failed trades in a sector: exit all sector positions

## Trailing Stop Fallback Ladder
1. trailing_stop (preferred)
2. fixed stop 10% below entry (if PDT blocks trailing)
3. Queue for tomorrow AM (if both blocked) — log in TRADE-LOG

## Heartbeat
Every routine sends a ClickUp message, even on no-activity days, so the
operator knows the bot is alive. Silence = broken.
