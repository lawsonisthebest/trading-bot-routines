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
2. Target 80-95% deployed during normal markets (idle cash is opportunity cost)
3. 3-5 equity positions + up to 2 crypto positions at a time (bigger, fewer)
4. Max 30% of equity per normal position (was 20%)
5. Max 15% per LEVERAGED ETF (3x/2x) or crypto position (was 10%)
6. Max 25% total crypto allocation across all crypto positions
7. Max 25% total leveraged-ETF allocation
8. Max 40% in any one sector (was 30%)
9. 8% trailing stop on every equity position as a real GTC order (was 10% — tighter to lock gains)
10. Crypto stop: 12% fixed stop (was 15% — tighter)
11. Cut equity losers at -6% manually (was -7%); cut crypto losers at -12%
12. Tighten equity trail: 5% at +10%, 4% at +20%, 3% at +30% (was 7% at +15%)
13. Never within 2% of current price; never move a stop down
14. Max 12 new equity trades per week (was 8); crypto doesn't count
15. MIN 2 new trades per week if qualified setups appeared (was 1)
16. Follow sector momentum, but don't require leading sector
17. Exit a sector after 2 consecutive failed trades
18. Bias: ACT on qualified setups. Inaction on a qualified setup is a bug.
19. SELL DISCIPLINE: when in profit, take partial profits aggressively (see
    Profit-Taking Ladder below). Locked gains > unrealized gains.

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

## Position Sizing — BIGGER TRADES
- Default equity position: 25% of equity (so 4 positions ≈ 100% deployed)
- High-conviction (catalyst + momentum + clean technicals): up to 30%
- Speculative/lower-conviction: 15-20%
- Leveraged ETF (TQQQ, SPXL, UVXY, etc.): default 10%, max 15%
- Inverse ETF (SQQQ, SPXS, etc., used as hedge): default 10%, max 15%
- Crypto (BTC, ETH, etc.): default 12%, max 15% per coin, 25% total portfolio
- Never put more than 40% into a single sector at one time

For a $100k account, default sizes mean:
- Standard equity trade: $25,000 per position (was $15,000)
- High-conviction: up to $30,000
- Crypto: ~$12,000 per coin
This is meaningful capital per trade — small wins add up fast.

## Crypto-Specific Rules
- Crypto orders must use `time_in_force: "gtc"` (NOT "day" — crypto is 24/7)
- Symbol format: `BTC/USD`, `ETH/USD` (slash required)
- Quote via `alpaca.sh crypto-quote BTC/USD`
- No trailing-stop order type on Alpaca crypto — use fixed stop-loss at -15%
- BTC and ETH are the only "core" crypto positions allowed at high sizing;
  anything else (SOL, AVAX, etc.) caps at 5%
- Weekend crypto check runs Saturday AM (via its own cron) since US equity
  routines don't fire on weekends

## Sell-Side Rules — TAKE PROFITS, DON'T BE GREEDY
- Unrealized loss <= -6%: close immediately (cut sooner than before)
- Thesis broken: close regardless of P&L
- 2 consecutive failed trades in a sector: exit all sector positions

## Profit-Taking Ladder (the "lock gains" rule)
This forces realized profits instead of letting winners round-trip back to flat.
Apply per position. "Take X" means SELL X% of the original share count.

| Unrealized Gain | Action |
|---|---|
| **+5%** | Tighten trailing stop to 4% (lock break-even fast) |
| **+10%** | TAKE 25% off. Tighten trail on remainder to 5%. |
| **+20%** | TAKE another 25% off. Tighten trail to 4%. |
| **+35%** | TAKE another 25% off. Trail final 25% loose at 6% to ride a runner. |
| **+50%** | If still in, trail at 8% — let it run. Most positions never see this. |
| **Strong catalyst still active** (e.g., earnings beat, sector breakout, technical channel intact) | At any rung, may SKIP the partial sell IF you log specifically why — "letting GEV run, sector momentum + Q1 beat thesis intact". Default is to take the partial. |

EXCEPTION: If you have hard evidence the stock is going to keep ripping
(strong sector flow, catalyst still fresh, no resistance overhead, volume
expanding), document the reason in TRADE-LOG and let it run with a tight
trail. But the default at every rung above is TAKE THE PARTIAL.

For crypto (no native trailing stops):
- +10%: take 25% off, raise fixed stop to entry (break-even)
- +25%: take 25% off, raise stop to entry +10%
- +50%: take 25% off, raise stop to entry +25%
- Beyond +50%: trail manually each scan

## Day Trading Lean
This account is intended as a day trading account. PREFER same-day exits
on positions that hit +10% or more during the session, especially if the
catalyst was a one-day event (earnings reaction, news pop). Holding
overnight is allowed only if:
- Position is up <5% (let it cook), OR
- Catalyst is multi-day (sector rotation, ongoing news cycle), OR
- Stop is locked at break-even or better
Otherwise: TAKE THE GAIN before close.

## Trailing Stop Fallback Ladder
1. trailing_stop (preferred)
2. fixed stop 10% below entry (if PDT blocks trailing)
3. Queue for tomorrow AM (if both blocked) — log in TRADE-LOG

## Heartbeat
Every routine sends a ClickUp message, even on no-activity days, so the
operator knows the bot is alive. Silence = broken.
