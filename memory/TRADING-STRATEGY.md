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
14. Max 5 new trades per week (equity); crypto doesn't count toward this cap
15. Follow sector momentum, but don't require leading sector
16. Exit a sector after 2 consecutive failed trades
17. Bias: ACT on qualified setups. "Patience > activity" only applies when NO
    qualified setups exist.

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
- Total EQUITY positions after fill <= 6
- Total CRYPTO positions after fill <= 2
- Equity trades this week + 1 <= 5 (crypto exempt)
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
