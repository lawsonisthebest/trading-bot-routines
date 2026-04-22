# Trading Strategy

## Mission
Beat the S&P 500 over the challenge window. Stocks only — no options, ever.

## Capital & Constraints
- Starting capital: ~$10,000
- Platform: Alpaca
- Instruments: Stocks ONLY
- PDT limit: 3 day trades per 5 rolling days (account < $25k)

## Core Rules
1. NO OPTIONS — ever
2. 75-85% deployed
3. 5-6 positions at a time, max 20% each
4. 10% trailing stop on every position as a real GTC order
5. Cut losers at -7% manually
6. Tighten trail: 7% at +15%, 5% at +20%
7. Never within 3% of current price; never move a stop down
8. Max 3 new trades per week
9. Follow sector momentum
10. Exit a sector after 2 consecutive failed trades
11. Patience > activity

## Entry Checklist
- Specific catalyst?
- Sector in momentum?
- Stop level (7-10% below entry)
- Target (min 2:1 R:R)

## Buy-Side Gate (all must pass before any order)
- Total positions after fill <= 6
- Trades this week + 1 <= 3
- Position cost <= 20% of equity
- Position cost <= available cash
- daytrade_count < 3 (PDT rule)
- Catalyst documented in today's RESEARCH-LOG
- Instrument is a stock (not an option)

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
