# Research Log

Daily pre-market research entries will be appended here.

---

## 2026-04-22 — Pre-Market Research

### Account
- **⚠️ ALL API KEYS MISSING** — ALPACA_API_KEY, ALPACA_SECRET_KEY, CLICKUP_API_KEY, CLICKUP_WORKSPACE_ID, CLICKUP_CHANNEL_ID not exported in process env
- Live account data unavailable; ClickUp alert skipped (key absent)
- Last known state (Day 0 baseline): Equity $10,000 | Cash $10,000 | No positions | Daytrade count: 0

### Market Context
- **WTI:** ~$89/bbl (up 2%+ vs prior session) | **Brent:** $101.73/bbl (+3.30%)
  — Source: [Yahoo Finance / Oneindia](https://www.oneindia.com/india/crude-oil-rates-today-april-21-2026-wti-brent-crude-oil-prices-slip-check-latest-global-oil-pr-8064585.html)
- **S&P 500 futures:** +0.5–0.7% premarket | **Nasdaq 100 futures:** +0.7%
  — Source: [TheStreet](https://www.thestreet.com/latest-news/stock-market-today-apr-22-2026-updates)
- **VIX:** ~19.0 (↓2.5%, range 18.93–19.19) — fear normalizing, risk appetite returning
  — Source: [247 Wall St.](https://247wallst.com/investing/2026/04/22/the-vix-hasnt-been-this-calm-since-march-heres-why-traders-are-breathing-easier/)
- **Primary catalyst:** Trump extended Iran ceasefire indefinitely; Nasdaq hit all-time intraday high
  — Source: [247 Wall St. live](https://247wallst.com/investing/2026/04/22/stock-market-live-april-22-2026-sp-500-spy-rises-on-cease-fire-news-again/)
- **Earnings before open:** GE Vernova (GEV) beat + raised guidance (+8–12% premarket); Boeing (BA); Philip Morris (PM); AT&T (T)
  — Source: [Bloomberg premarket movers](https://www.bloomberg.com/news/articles/2026-04-22/us-stock-futures-today-adobe-boeing-twilio-united-air-vertiv)
- **Earnings after close:** Tesla (TSLA) Q1 2026 (growth concerns), IBM, ServiceNow (NOW)
  — Source: [Electrek TSLA preview](https://electrek.co/2026/04/21/tesla-tsla-q1-2026-earnings-preview-wall-street-expects-growth/)
- **Economic calendar:** No major scheduled release (CPI/PPI/FOMC/jobs) confirmed for April 22
- **Sector momentum YTD:** Energy #1 (re-rated as utility-growth hybrids for data center power); Technology #2; Healthcare #3; Industrials recovering in April; Financials lagging
  — Source: [Charles Schwab sector outlook](https://www.schwab.com/learn/story/stock-sector-outlook)

### Trade Ideas
1. **GEV (GE Vernova)** — Data center power demand secular theme; beat + raised Q1 guidance; Energy sector YTD leader. Already +8–12% today. Entry: wait for pullback to ~prior close +3% on day 2–3; stop 10% below entry; target +20%. R:R 2:1. **Do not chase gap.**
   — Source: [Sunday Guardian](https://sundayguardianlive.com/business/us-stock-market-today-22-april-2026-nasdaq-hits-all-time-high-as-trump-extends-iran-ceasefire-ge-vernova-soars-12-check-us-indices-top-movers-what-investors-should-watch-185862/)
2. **XLE or energy leader** — Oil elevated ($89–101); geopolitical premium persists; Energy sector momentum intact. Entry: dip buy if WTI pulls back to $85 area; stop 10% below; target +15%. R:R 1.5:1.
3. **NOW (ServiceNow)** — AI platform, reporting after close today. Do NOT enter pre-earnings. Watch for post-earnings gap setup tomorrow if beat.

### Risk Factors
- Oil at $101 Brent = inflationary pressure; Fed may stay hawkish
- TSLA earnings after close could whip Nasdaq overnight
- Ceasefire "indefinite" is unverified — any reversal = instant risk-off
- **API keys unset** — cannot place, monitor, or stop orders until restored; NO TRADES until keys verified
- PDT limit in play (< $25k account)

### Decision
**HOLD** — No trades today.
- Account state unverifiable (API keys missing); cannot place orders safely
- GEV gap already too extended for safe entry
- TSLA binary event after close creates overnight risk
- Patience > activity; revisit once API keys are restored and account state confirmed

Format each entry:

## YYYY-MM-DD — Pre-market Research

### Account
- Equity: $X
- Cash: $X
- Buying power: $X
- Daytrade count: N

### Market Context
- WTI / Brent:
- S&P 500 futures:
- VIX:
- Today's catalysts:
- Earnings before open:
- Economic calendar:
- Sector momentum:

### Trade Ideas
1. TICKER — catalyst, entry $X, stop $X, target $X, R:R X:1
2. ...

### Risk Factors
- ...

### Decision
TRADE or HOLD (default HOLD if no edge)
