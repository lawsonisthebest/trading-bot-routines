# Trade Log

## Day 0 — EOD Snapshot (pre-launch baseline)

**Portfolio:** $10,000.00 | **Cash:** $10,000.00 (100%) | **Day P&L:** $0 | **Phase P&L:** $0

No positions yet. Bot launches tomorrow.

> **Correction (Apr 23):** Day 0 baseline was recorded as $10,000 but actual paper account funded at $100,000. Phase P&L uses $100,000 as starting equity from Day 1 forward.

---

## Apr 23 — EOD Snapshot (Day 2, Thursday)

**Portfolio:** $100,000.00 | **Cash:** $100,000.00 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** $0.00 (0.00%)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| —      | —      | —     | —     | —       | —              | —    |

**Notes:** First funded day of live trading. Market opened weak (futures -0.46%) and stayed risk-off all session. AXP beat estimates (EPS $4.28 vs $4.06 est) but stock fell -0.55% — no clean VWAP hold emerged, no entry taken. LMT missed badly (EPS $6.44 vs $6.77 est, FCF turned -$291M) — thesis broken, removed from watchlist permanently. S&P 500 closed -0.12% pulling back from ATH 7,137. Stayed 100% cash per discipline (no forced entries). FCX reports after close tonight; 75% historical beat rate — monitoring for gap-up entry Friday AM if constructive. Trades this week: 0 of 3 allowed.

---

## Apr 24 — EOD Snapshot (Day 3, Friday)

**Portfolio:** $100,000.00 | **Cash:** $100,000.00 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** $0.00 (0.00%)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| —      | —      | —     | —     | —       | —              | —    |

**Notes:** Deliberate hold day. FCX -12% premarket on Grasberg copper volume collapse despite earnings beat — primary materials thesis broken, removed from watchlist. AXP premarket spike to $358 proved erroneous; closed ~$314 (-4.7% from prior close) — Financials thesis broken. Oil 5-day run hit headwind from Israel-Lebanon 3-week ceasefire; DVN/EOG energy longs low conviction. PG beat modest (+$1.99 vs $1.90 est) but it's Friday with weekend geopolitical risk — no entry. Intraday market surged +0.68% (DOJ dropped Powell investigation); Intel +23.2%, AMD +13.9%, QCOM +10.3% — chasing post-20% gaps violates discipline. UMich Consumer Sentiment hit record low (49.8). Entering weekend 100% cash, full 3-trade budget intact. New setup for Monday: tech/semiconductor momentum (NVDA, AMD, QCOM) as sector rotation toward tech solidifies. Trades this week: 0 of 3.

---

## Apr 26 — Weekend Crypto Entry (Saturday)

**Portfolio:** ~$100,000 | **Cash:** ~$90,042 (90.04%) | **Crypto:** $9,958 (9.96%) | **Phase P&L:** -$5.55 (-0.01%)

| Ticker  | Shares  | Entry      | Current    | Unrealized P&L | Stop (trigger/limit)  |
|---------|---------|------------|------------|----------------|-----------------------|
| BTC/USD | 0.12768 | $77,993.44 | $77,950.01 | -$5.55 (-0.06%) | $66,294 / $65,900 GTC |

**Entry notes:**
- BTC/USD long — 3 catalysts: Morgan Stanley spot BTC ETF launch (15,000 advisors), $1.2B spot ETF inflows past 5 days (best since Jan), BTC/DXY inverse at 4-year extreme.
- 10% position sizing per crypto rules. Stop-limit GTC (order 521e80ad): trigger $66,294 / limit $65,900.
- Note: Alpaca crypto does not accept order type `stop` — `stop_limit` used instead.
- Tighten to 10% trail at +15% ($89,692), to 7% at +30% ($101,391).
- Altcoins skipped — BTC dominance 60% (Bitcoin Season), no independent catalyst.

---

## Apr 27 — Intraday Entries (14:03 ET scan)

**Portfolio:** $99,816 → ~$99,659 (after fills) | **Cash:** ~$60,161 | **Deployed:** ~39.7% | **Weekly trades:** 3 of 8

| Ticker  | Shares | Entry      | Stop (trail) | Target     | R:R  | Thesis |
|---------|--------|------------|--------------|------------|------|--------|
| META    | 22     | $678.83    | $611.01 (10% trail, order 8d4a55e3) | $781 (+15%) | 1.5:1 | Pre-earnings run; reports Wed 4/29 after close; AI ad revenue thesis |
| UCO     | 112    | $44.433    | $39.98 (10% trail, order 9e7d2543)  | $53.32 (+20%) | 2.0:1 | WTI $96+, Hormuz closed, Iran talks suspended — oil supply shock |
| XLE     | 175    | $56.82     | $51.14 (10% trail, order 32b61207)  | $65.34 (+15%) | 1.5:1 | Energy sector ETF; oil Hormuz catalyst + sector recovery |
| BTC/USD | 0.12768| $77,993.44 | $66,294/$65,900 (GTC stop-limit, order 521e80ad) | $89,692 (+15%) | — | Ongoing; -1.52% unrealized; thesis intact |

**Entry notes:**
- META: Intraday-scan entry at 2 PM ET — earnings Wednesday 4/29 after close. Up 0.54% today. 3/4 checklist pass. 15% sizing.
- UCO: Hormuz catalyst fully intact — IEA "largest supply shock on record"; WTI $96.15-96.85 +2% on stalled Iran talks. 4/4 pass. 5% leveraged-ETF sizing (2x cap rule).
- XLE: Energy sector ETF secondary oil play. 4/4 pass. 10% standard sizing.
- GOOGL skipped (also reports Wed): up 4.2% from planned $338.60 entry → R:R drops to 1.2:1 (below 1.5:1 minimum).
- Total deployed after entries: BTC $9,807 + META $14,932 + UCO $4,976 + XLE $9,944 = $39,659 (39.7% of equity).
- Tighten META/UCO/XLE trails: 7% at +15%, 5% at +20% (per strategy).

---

## Apr 29-30 — META Stop-Out

- META trailing stop (10%, order 8d4a55e3) triggered ~$611 at Apr 30 open
- Catalyst: Earnings beat (EPS $10.44, revenue +33%) BUT capex raised to $125-145B → stock gapped -6% AH to ~$630, continued lower to ~$605
- P&L: ($611.01 - $678.83) × 22 = **-$1,492 (-10.0%)**
- Stopped per rules; no override warranted. Stop worked as designed.
- Weekly trades: 3 entries (META/UCO/XLE counted on entry date Apr 27)

---

## Apr 30 — Intraday Entries (10:05 ET scan)

**Portfolio:** ~$98,896 | **Cash:** ~$29,556 (after fills) | **Deployed:** ~70.1% | **Weekly trades:** 6 of 8

| Ticker | Shares | Entry      | Stop (trail)                              | Target        | R:R  | Thesis |
|--------|--------|------------|-------------------------------------------|---------------|------|--------|
| GOOGL  | 39     | $371.51    | $333.86 (10% trail, order 8d39b26a)       | $445 (+19.8%) | 2.0:1 | Q1 earnings beat; Google Cloud +63% YoY to $20B vs $18B est; +7% AH; AI capex ROI leader |
| AMZN   | 56     | $262.19    | $236.06 (10% trail, order 10f815e7)       | $313 (+19.8%) | 1.98:1 | Q1 beat; AWS +24% (fastest 13Q); EPS $2.78 vs $1.64 est; $200B capex — AI infra accelerating |
| NVDA   | 73     | $202.85    | $182.63 (10% trail, order e0197b6b)       | $243 (+19.8%) | 1.81:1 | Cloud capex acceleration: GOOGL/AMZN/MSFT all beat; AWS confirms NVDA dependency; AI GPU primary beneficiary |

**Entry notes:**
- GOOGL: 4/4 checklist. Cloud earnings beat was the clearest setup of the batch. +6% today from $349.94 close.
- AMZN: 4/4 checklist. AWS fastest growth in 13 quarters. R:R 1.98:1 to +20% target.
- NVDA: 4/4 checklist. Indirect catalyst — AI capex from 3 cloud peers accelerating. Down -3% today vs $209.25 close (buy dip). AWS explicit "sticking with NVDA" confirmation.
- Total deployed: BTC $9,764 + UCO $5,275 + XLE $10,332 + GOOGL $14,469 + AMZN $14,684 + NVDA $14,815 = $69,339 (70.1% equity).
- At max equity positions (5 equity + 1 crypto = 6 total). No new entries until one exits.
- Tighten all new trails: 7% at +15%, 5% at +20%.

---

## Apr 30 — Intraday Scan (11:00 ET)

**Portfolio:** $98,863 | **Cash:** $29,555 | **Deployed:** 70.1% | **daytrade_count:** 3/3 (PDT limit)

| Symbol  | P&L%   | Stop Level   | Action |
|---------|--------|--------------|--------|
| AMZN    | -0.83% | $236.33 trail | Hold — thesis intact |
| BTC/USD | -2.07% | $66,294 fixed | Hold — above -15%; 30Y yield headwind, monitor |
| GOOGL   | +0.41% | $335.87 trail | Hold — thesis intact |
| NVDA    | -0.35% | $183.02 trail | Hold — thesis intact |
| UCO     | +6.74% | $43.43 trail  | Hold — WTI $108, thesis intact |
| XLE     | +4.40% | $53.46 trail  | Hold — energy only green sector |

**No exits, no tightens, no new entries.** PDT limit (3/3) + max positions blocks entries.
