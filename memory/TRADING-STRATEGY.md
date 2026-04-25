# Trading Strategy

## Mission
Beat the S&P 500 over the challenge window. Multi-asset (stocks, ETFs,
crypto). No options, ever. Be ACTIVE, not reckless: take reasonable setups
rather than waiting for perfection.

## Capital & Constraints
- Starting capital: ~$10,000 (currently $100k paper for testing)
- Platform: Alpaca
- Tradable: US stocks, ETFs (including leveraged and inverse), crypto (24/7)
- NOT tradable on Alpaca: raw futures, spot forex, options. Exposure to
  futures/forex markets via ETF proxies (see WATCHLIST.md).
- PDT limit: 3 day trades per 5 rolling days (account < $25k). Crypto is
  exempt from PDT.

## Core Rules
1. NO OPTIONS — ever
2. Target 70-85% deployed during normal markets (idle cash is opportunity cost)
3. 4-6 equity positions + up to 2 crypto positions at a time
4. Max 20% of equity per normal position
5. Max 10% per LEVERAGED ETF (3x/2x) or crypto position
6. Max 20% total crypto allocation across all crypto positions
7. Max 15% total leveraged-ETF allocation
8. Max 30% in any one sector
9. 10% trailing stop on every equity position as a real GTC order
10. Crypto stop: 15% fixed stop (higher volatility tolerance). Trail to 10%
    after +15% gain, 7% after +30%.
11. Cut equity losers at -7% manually; cut crypto losers at -15%
12. Tighten equity trail: 7% at +15%, 5% at +20%
13. Never within 3% of current price; never move a stop down
14. Max 8 new equity trades per week; crypto doesn't count toward this cap
15. MIN 1 new trade per week if qualified setups appeared in any scan
16. Follow sector momentum, but don't require leading sector
17. Exit a sector after 2 consecutive failed trades
18. Bias: ACT on qualified setups. Inaction on a qualified setup is a bug.

## Entry Philosophy — BIAS TO ACTION
Default to TRADE. HOLD is the EXCEPTION, used only when ALL of these are true:
- VIX > 35 (real panic, not just elevated), OR
- SPY futures down > 2% pre-open (true crash setup), OR
- Account at max positions (6 equity + 2 crypto) AND no exit candidates, OR
- Zero qualified setups across the ENTIRE WATCHLIST after a real scan

A "real scan" means checking the broad watchlist (not just earnings names).
On any normal day there are dozens of qualified setups across 200+ tickers.
Saying "no qualified setup" is almost always wrong — it usually means
"didn't look hard enough."

DO NOT defer with phrases like:
- "wait for confirmation"
- "wait for tape to settle"
- "reassess in 15 minutes"
- "monitor for now"
- "conditions not perfect"
If the setup is qualified per the checklist, ACT NOW. The next routine fires
in 30 minutes — there's no need to defer within a single routine.

## Entry Checklist (setup is valid if 2 of 4 pass — was 3 of 4)
- [ ] Catalyst (earnings, guidance, news, sector flow, technical breakout)
- [ ] Sector / underlying not in active decline
- [ ] Stop level identifiable (7-10% below entry, structural OR ATR-based)
- [ ] Reasonable R:R (min 1.5:1 — was 1.8:1)

## Activity Targets (force productive risk-taking)
- MIN 1 new trade per trading week if any qualified setup exists at any
  scan during the week. Zero-trade weeks are a strategy failure unless the
  HOLD criteria above were genuinely met every single day.
- AIM for 2-4 new equity trades per week
- MAX 8 new equity trades per week (was 5 — loosened)
- Crypto trades exempt from these counts

## Timing Rules
- Equity entries allowed any time market is open (8:30 AM - 3:00 PM CT).
  No more 5-minute or 15-minute waiting period.
- Crypto entries any time, 24/7.
- Extended hours OK for exits on thesis break or stop hit; entries during
  RTH only (cleaner liquidity).
- Intraday-scan routine fires every 30 min — use that cadence to react,
  don't defer within a single routine.

## Buy-Side Gate (all must pass before any order)
- Total EQUITY positions after fill <= 6
- Total CRYPTO positions after fill <= 2
- Equity trades this week + 1 <= 8 (crypto exempt)
- Position cost <= sizing cap (20% standard / 10% leveraged or crypto)
- Total crypto allocation after fill <= 20%
- Total leveraged-ETF allocation after fill <= 15%
- Position cost <= available cash
- daytrade_count < 3 (PDT rule — equity only)
- Catalyst documented in today's RESEARCH-LOG (or added now if valid intraday setup)
- Instrument is a stock, ETF, or crypto (NOT an option)

## Position Sizing
- Default equity position: 15% of equity (so 5 positions ≈ 75% deployed)
- High-conviction (catalyst + momentum + clean technicals): up to 20%
- Speculative/lower-conviction: 10%
- Leveraged ETF (TQQQ, SPXL, UVXY, etc.): max 10%, default 5%
- Inverse ETF (SQQQ, SPXS, etc., used as hedge): max 10%, default 5%
- Crypto (BTC, ETH, etc.): max 10% per coin, 20% total portfolio
- Never put more than 30% into a single sector at one time

## Crypto-Specific Rules
- Crypto orders must use `time_in_force: "gtc"` (NOT "day" — crypto is 24/7)
- Symbol format: `BTC/USD`, `ETH/USD` (slash required)
- Quote via `alpaca.sh crypto-quote BTC/USD`
- No trailing-stop order type on Alpaca crypto — use fixed stop-loss at -15%
- BTC and ETH are the only "core" crypto positions allowed at high sizing;
  anything else (SOL, AVAX, etc.) caps at 5%
- Weekend crypto check runs Saturday AM (via its own cron) since US equity
  routines don't fire on weekends

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
