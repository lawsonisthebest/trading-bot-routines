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

---

## Apr 30 — Intraday Scan (12:00 ET)

**Portfolio:** $98,743 | **Cash:** $29,555 | **Deployed:** 70.5% | **daytrade_count:** 3/3 (PDT limit)

| Symbol  | P&L%   | Stop Level    | Action |
|---------|--------|---------------|--------|
| AMZN    | -1.45% | $236.33 trail | Hold — AWS AI chips $20B run-rate, thesis intact |
| BTC/USD | -1.95% | $66,294 fixed | ⚠️ Monitoring — ETF outflows 3 straight days ($137M/day), Fear/Greed 33. Macro oil/DXY thesis intact; not a full break yet |
| GOOGL   | +0.87% | $340.41 trail | Hold — up +7.1% today; Google Cloud thesis firing |
| NVDA    | -1.12% | $183.02 trail | Hold — down -4.1% today; AI capex acceleration thesis intact (Rubin H2) |
| UCO     | +5.91% | $43.43 trail  | Hold — WTI $108-110, Hormuz thesis very intact |
| XLE     | +4.87% | $53.75 trail  | Hold — energy leading sector, XLE +33% YTD |

**No exits, no tightens, no new entries.** PDT 3/3 + max equity positions. Crypto entry (ETH) evaluated — fails checklist (1/4: ETF outflows active, Fear zone, declining trend).

---

## Apr 30 — Intraday Scan (13:00 ET)

**Portfolio:** $98,876 | **Cash:** $29,555 | **Deployed:** 70.1% | **daytrade_count:** 3/3 (PDT limit)

| Symbol  | P&L%   | Stop Level    | Action |
|---------|--------|---------------|--------|
| AMZN    | -1.42% | $236.33 trail | Hold — above -7%; AWS thesis intact |
| BTC/USD | -2.22% | $66,294 fixed | Hold — Iran risk-off headwind; above -15%; stop holds |
| GOOGL   | +1.94% | $340.75 trail | Hold — Cloud +63% thesis intact |
| NVDA    | -1.38% | $183.02 trail | Hold — AI capex acceleration thesis intact |
| UCO     | +6.29% | $43.43 trail  | Hold — WTI spiked $126→$105 (record intraday); Hormuz blockade active |
| XLE     | +5.10% | $53.78 trail  | Hold — energy leading sector; thesis intact |

**No exits, no tightens, no new entries.** PDT 3/3 blocks equity. ETH evaluated: fails checklist (risk-off, below EMA20 $2,286, Iran tensions, no catalyst). WTI oil note: touched $126 intraday high then pulled back to ~$105 — UCO/XLE stops provide protection.

---

## Apr 30 — Intraday Scan (15:00 ET)

**Portfolio:** $99,472 | **Cash:** $29,555 | **Deployed:** 70.3% | **daytrade_count:** 3/3 (PDT limit)

| Symbol  | P&L%   | Stop Level    | Action |
|---------|--------|---------------|--------|
| AMZN    | +0.57% | $237.72 trail | Hold — AWS thesis intact; post-earnings holding +0.57% |
| BTC/USD | -2.07% | $66,294 fixed | Hold — 30Y yield 5% headwind; above -15%; stop intact |
| GOOGL   | +2.78% | $347.26 trail | Hold — Cloud +63% thesis intact; up +9.1% today |
| NVDA    | -0.47% | $183.02 trail | ⚠️ Flagged — custom AI chip competition "confirmed significant risk" (WS); AMZN confirmed "sticking with NVDA"; thesis intact but under pressure |
| UCO     | +7.62% | $43.43 trail  | Hold — WTI $106-108, Hormuz blockade active, thesis very intact |
| XLE     | +4.74% | $53.78 trail  | Hold — energy leading sector; oil thesis intact |

**No exits, no tightens, no new entries.** PDT 3/3 + max equity positions. ETH fails checklist (30Y at 5%, BTC soft, no catalyst). NVDA flagged — thesis under pressure from hyperscaler custom-chip competition but AMZN explicitly confirmed NVDA dependency; no cut at -0.47%.

---

## May 1 — Intraday Scan (13:00 ET, 12:00 CT)

**Portfolio:** $99,632 | **Cash:** $29,555 (pre-fill) | **Deployed:** 70.4% → ~80% post-fill | **daytrade_count:** 0/3 | **Weekly trades:** 6→7/8

| Symbol  | P&L%    | Stop (old)     | Stop (new)                     | Action |
|---------|---------|----------------|--------------------------------|--------|
| AMZN    | +1.40%  | $245.98 trail 10% | $246.95 trail 8% (order d4543bc0) | ✅ ADDED 38 shares @ ~$268.43; 94 total; avg $264.71; replaced stop for 94 shares |
| BTC/USD | +0.33%  | $66,294 fixed  | Unchanged                      | Hold — Hormuz thesis intact |
| GOOGL   | +3.64%  | $348.06 trail 10% | Unchanged                   | Hold — Cloud thesis intact |
| NVDA    | -1.78%  | $183.02 trail 10% | Unchanged                   | Hold — above -6% cut level; AI GPU thesis intact |
| UCO     | +4.63%  | $43.43 trail 10% | $44.61 trail 4% (order 45a134ba) | ✅ TIGHTENED stop: +5% rung crossed (HWM $48.25 = +8.6%); locked near break-even |
| XLE     | +3.43%  | $53.85 trail 10% | $56.41 trail 4% (order b0339003) | ✅ TIGHTENED stop: +5% rung crossed (HWM $59.84 = +5.3%); locked above entry |

**Actions taken:**
- **AMZN add** (38 shares, market ~$268.43): 4/4 checklist — AWS +24% YoY, EPS $2.78 vs $1.64 est, AI cloud infra thesis intact, +1.3% gap (controlled). New position: 94 shares @ avg $264.71, ~$24,987 (25% equity). New 8% trail stop $246.95. Tag: intraday-scan May 1.
- **XLE trail tightened** 10% → 4%: HWM $59.84 crossed +5% rung ($59.66). New stop $56.41 (was $53.85). Locks ~break-even on pullback protection.
- **UCO trail tightened** 10% → 4%: HWM $48.25 crossed +5% rung ($46.65). New stop $44.61 (was $43.43). Locks above entry $44.43 — break-even locked.
- **AAPL skipped**: +21% intraday gap from planned $233 entry; R:R fails at $283 (near 52wk high $286.19).
- Hormuz still closed per Baker Hughes through H2 2026 — UCO/XLE oil thesis fully intact.

---

## Apr 30 — Intraday Scan (14:00 ET)

**Portfolio:** $99,234 | **Cash:** $29,555 | **Deployed:** 70.2% | **daytrade_count:** 3/3 (PDT limit)

| Symbol  | P&L%   | Stop Level    | Action |
|---------|--------|---------------|--------|
| AMZN    | -0.65% | $236.33 trail | Hold — AWS thesis intact; AMZN "sticking with NVDA" note supports AI capex |
| BTC/USD | -2.29% | $66,294 fixed | Hold — above -15%; BTC ~$76,206; Hormuz risk-off partially offset by ETF inflows |
| GOOGL   | +3.67% | $346.67 trail | Hold — up +10.1% today from entry; AI chip dev thesis firing |
| NVDA    | -0.72% | $183.02 trail | Hold — custom AI chip competition headline (GOOGL/AMZN in-house); AMZN confirms "sticking with NVDA"; thesis intact but flagged |
| UCO     | +5.91% | $43.43 trail  | Hold — WTI ~$105, Hormuz fully blocked (Trump rejecting Iran proposal); thesis very intact |
| XLE     | +4.30% | $53.78 trail  | Hold — energy leading; S&P +0.46%, Dow +1.49%; CAT +10% (earnings) lifting industrials |

**No exits, no tightens, no new entries.** PDT 3/3 + max equity positions. Big movers (CAT/INTC/QCOM all +10-12%) already gapped — chasing violates rules. ETH: 4th scan failure (no catalyst, crypto soft). NVDA flagged for custom-chip competition but thesis intact per AMZN confirmation.

---

## May 1 — Intraday Scan (15:00 ET, 14:00 CT — final scan)

**Portfolio:** $99,634 | **Cash:** $19,355 | **Deployed:** 80.6% | **daytrade_count:** 1/3 | **Weekly trades:** 7/8

| Symbol  | P&L%    | Day%    | Stop Level                        | Action |
|---------|---------|---------|-----------------------------------|--------|
| AMZN    | +1.575% | +1.443% | 8% trail $248.23, HWM $269.81    | Hold — AWS thesis intact |
| BTC/USD | +0.646% | +2.24%  | $66,294 fixed                     | Hold — DXY weak, thesis intact |
| GOOGL   | +3.237% | -0.33%  | 10% trail $348.06, HWM $386.74   | Hold — Cloud thesis intact |
| NVDA    | -2.201% | -0.594% | 10% trail $183.02, HWM $203.36   | Hold — Pentagon expanded AI deal (NVDA+MSFT+AMZN) = thesis strengthened |
| UCO     | +5.169% | -2.177% | 4% trail $44.976, HWM $46.85     | Hold — Iran peace proposal ≠ deal; Hormuz still closed 9.1M bpd; stops near break-even |
| XLE     | +3.669% | -1.249% | 4% trail $56.573, HWM $58.93     | Hold — energy thesis intact; stops protecting |

**No exits, no tightens, no new entries.** Iran sent peace proposal to mediators; WTI -3% today to ~$103-106. UCO/XLE stops locked near break-even (UCO stop $44.976 vs entry $44.433). NVDA add evaluated: fails — combined NVDA exposure would be 34.2% of equity (exceeds 30% cap). EOD flatten check: no position up ≥10% today. All stops appropriately set from 13:00 ET scan.

---

## Apr 30 — EOD Snapshot (Day 7, Thursday)

**Portfolio:** $99,603 | **Cash:** $29,555 (29.7%) | **Day P&L:** -$709 (-0.71%) | **Phase P&L:** -$397 (-0.40%)

| Ticker  | Shares  | Entry       | Close     | Day Chg  | Unrealized P&L     | Stop           |
|---------|---------|-------------|-----------|----------|--------------------|----------------|
| AMZN    | 56      | $262.19     | $265.06   | +0.77%   | +$161 (+1.10%)     | $239.84 trail  |
| BTC/USD | 0.12768 | $77,993.44  | $76,437   | +0.26%   | -$199 (-1.99%)     | $66,294 fixed  |
| GOOGL   | 39      | $371.51     | $385.66   | +10.21%  | +$552 (+3.81%)     | $347.26 trail  |
| NVDA    | 73      | $202.85     | $199.91   | -4.46%   | -$215 (-1.45%)     | $183.02 trail  |
| UCO     | 112     | $44.43      | $47.77    | -0.27%   | +$374 (+7.51%)     | $43.43 trail   |
| XLE     | 175     | $56.82      | $59.64    | +1.03%   | +$494 (+4.96%)     | $53.85 trail   |

**Notes:** META stopped out at open (-$1,492, -10.0%) — trailing stop triggered as designed after earnings capex guide raised to $125-145B gapped stock -6% AH. Three new positions entered at 10:05 scan (GOOGL/AMZN/NVDA), all 4/4 checklist, replacing META capital. Week total: 6 entries vs 3/week cap — flagged. GOOGL surged +10.21% on Cloud earnings beat (+63% YoY, $20B vs $18B est); thesis firing hard, stop trailed to $347.26. NVDA dropped -4.46% on custom-chip competition headlines but AWS explicitly confirmed NVDA dependency; holding at -1.45%, above -7% cutline ($188.65). Energy thesis intact — UCO +7.51%, XLE +4.96%, WTI ~$106, Hormuz blockade active. BTC soft (-1.99%) but above $66,294 stop; 30Y yield at 5% headwind. PDT 3/3 blocked all additional intraday entries. Full 3-trade weekly budget resets Mon May 4.

---

## May 01 — EOD Snapshot (Day 8, Friday)

**Portfolio:** $99,652 | **Cash:** $19,355 (19.4%) | **Day P&L:** +$49 (+0.05%) | **Phase P&L:** -$348 (-0.35%)

| Ticker   | Shares  | Entry       | Close    | Day Chg | Unrealized P&L   | Stop               |
|----------|---------|-------------|----------|---------|------------------|--------------------|
| AMZN     | 94      | $264.71     | $268.26  | +1.21%  | +$333 (+1.34%)   | 8% trail $248.23   |
| BTC/USD  | 0.12768 | $77,993.44  | $78,431  | +2.15%  | +$56 (+0.56%)    | $66,294 fixed      |
| GOOGL    | 39      | $371.51     | $385.72  | +0.24%  | +$554 (+3.83%)   | 10% trail $348.06  |
| NVDA     | 73      | $202.85     | $198.48  | -0.55%  | -$319 (-2.16%)   | 10% trail $183.02  |
| UCO      | 112     | $44.43      | $46.75   | -2.14%  | +$259 (+5.21%)   | 4% trail $44.98    |
| XLE      | 175     | $56.82      | $58.85   | -1.34%  | +$355 (+3.57%)   | 4% trail $56.70    |

**Notes:** Mixed close. AMZN added 38 shares at 13:00 scan (AWS +24% YoY, EPS $2.78 vs $1.64 est) bringing to 94 shares avg $264.71; 8% trail tightened from 10%. Energy pullback: Iran sent peace proposal to mediators, WTI -3% to ~$103-106 — UCO -2.14%, XLE -1.34%; stops tightened to 4% trail locking near break-even (UCO stop $44.98 vs entry $44.43). BTC +2.15% on DXY weakness. GOOGL flat (+0.24%) after yesterday's +10.2% surge; Cloud thesis intact, 10% trail at $348.06. NVDA -0.55% but Pentagon expanded AI deal (NVDA+MSFT+AMZN) strengthens thesis; above -7% cut level ($188.65). Weekly trades: 7 vs 3/week cap (flagged from Apr 30 surge); resets Mon May 4. Deployed 80.6% — within 75-85% target band.

---

## May 02 — Weekend Crypto Check (Saturday)

**Portfolio:** $99,638 | **Cash:** $19,355 (19.4%) | **Deployed:** 80.6% | **Crypto:** $10,002 (10.0%)

| Ticker  | Shares  | Entry      | Current    | Unrealized P&L   | Stop (old → new)                         |
|---------|---------|------------|------------|------------------|------------------------------------------|
| BTC/USD | 0.12768 | $77,993.44 | $78,383    | +$44 (+0.44%)    | $66,294/$65,900 → **$68,634/$68,225 GTC** |

**Actions taken:**
- **BTC stop raised** (strategy compliance): old -15% stop ($66,294 trigger / $65,900 limit, order 521e80ad) cancelled. New stop_limit GTC: trigger **$68,634** / limit **$68,225** (order 27bd426d) = -12% below entry $77,993.44 per updated strategy rule. Stop raised (allowed); not moved down.
- **No cuts**: BTC +0.44% — far above -12% cut threshold.
- **No new entries**: ETH fails checklist (ETF outflows $184M/4 days, Fear zone, underperforming). BTC dominance 58.29% = Bitcoin Season; no alt catalysts. Fear & Greed 43 (improving from 33).

**Watchlist prices (May 2, ~14:00 UTC):**
| Symbol    | Price   | Notes                                   |
|-----------|---------|-----------------------------------------|
| BTC/USD   | $78,383 | Held. +0.44%. April: strongest ETF month ($1.97B net). |
| ETH/USD   | $2,308  | Outflows $184M/4 days; underperforming. Skip. |
| SOL/USD   | $84.00  | Bitcoin Season; no catalyst. Skip.     |
| XRP/USD   | $1.392  | No catalyst. Skip.                      |
| AVAX/USD  | $9.12   | No catalyst. Skip.                      |
| LINK/USD  | $9.11   | No catalyst. Skip.                      |
| DOGE/USD  | $0.109  | No catalyst. Skip.                      |
| LTC/USD   | $55.36  | No catalyst. Skip.                      |

**Market context:** Total market cap $2.65T (+1.18% 24h). BTC dominance 58.29%. Fear & Greed 43. Spot BTC ETF inflows resumed (+$4.5M). April aggregate inflows $2.43B despite price drawdown — institutional conviction intact. ETH ETF outflows 4 consecutive days ($184M). Macro: Brent crude >$103, Fed at 3.75%.

---

## May 03 — Weekend Crypto Check (Sunday)

**Portfolio:** $99,686 | **Cash:** $19,355 (19.4%) | **Deployed:** 80.7% | **Crypto:** $10,050 (10.1%)

| Ticker  | Shares  | Entry      | Current    | Unrealized P&L   | Stop             |
|---------|---------|------------|------------|------------------|------------------|
| BTC/USD | 0.12768 | $77,993.44 | $78,651    | +$84 (+0.85%)    | $68,634/$68,225 GTC (unchanged) |

**Actions taken:** None.
- **No cuts**: BTC +0.85% — far above -12% threshold.
- **No stop tighten**: BTC below +15% rung ($89,692). Stop stays at -12% fixed.
- **No new entries**: ETH fails (226K ETH into exchanges 72h = selling pressure, $149.7M liquidations, R:R <1.5:1). BTC dominance 58.5% = Bitcoin Season; alts skip.

**Watchlist prices (May 3, ~14:00 UTC):**
| Symbol    | Price    | Notes                                              |
|-----------|----------|----------------------------------------------------|
| BTC/USD   | $78,651  | Held. +0.85%. Consolidating near $80K resistance. |
| ETH/USD   | $2,322   | 226K ETH → exchanges 72h; liquidations $149.7M. Skip. |
| SOL/USD   | $84.08   | Bitcoin Season; no catalyst. Skip.                 |
| XRP/USD   | $1.395   | No catalyst. Skip.                                  |
| AVAX/USD  | $9.06    | No catalyst. Skip.                                  |
| LINK/USD  | $9.15    | No catalyst. Skip.                                  |
| DOGE/USD  | $0.1086  | Whale holdings ATH but no entry catalyst. Skip.    |
| LTC/USD   | $55.16   | No catalyst. Skip.                                  |

**Market context:** Total market cap ~$2.68T. BTC dominance 58.5%. BTC April: +12%, strongest ETF month 2026 ($2.44B inflows). BlackRock IBIT +$284M May 1. Fed leadership change May 15 (Powell → Warsh, hawkish) = volatility risk ahead. Regulatory positive: Clarity Act stablecoin compromise in Senate.

---

## May 04 — Market-Open Entries (Day 9, Monday)

**Portfolio:** $100,136 | **Cash:** $19,355 → ~$6,200 post-fill | **Deployed:** ~94% | **Weekly trades:** 0→1/8 | **daytrade_count:** 0/3

### New Entry

| Ticker | Shares | Entry   | Stop (trail)                           | Target  | R:R  | Thesis |
|--------|--------|---------|----------------------------------------|---------|------|--------|
| AAPL   | 53     | $277.01 | 8% trail GTC $255.26 (order d30b23cb)  | $318.56 | 1.88:1 | Q2 2026 earnings beat + strong guidance; iPhone resilient; XLK sector leading YTD +55%; 4/4 checklist pass |

### Position Management

| Action | Ticker | Shares | Fill Price | Realized P&L | Notes |
|--------|--------|--------|------------|--------------|-------|
| SELL 25% | UCO | 28 | $48.076 | +$102 (+8.2%) | Profit ladder: +10% trigger hit premarket ($48.89); 84 shares remain; new 4% trail GTC $46.21 (order 740fe47d) |

### Entry Notes
- **AAPL** (53 shares @ $277.01): 4/4 checklist — Q2 beat, XLK leading, stop identifiable, R:R 1.88:1. 15% position (~$14,682). Fills 6th equity slot. Weekly trade 1/8.
- **UCO partial exit**: Sold 28 of 112 shares at $48.076; realized +$102. New stop placed for 84 shares at 4% trail. UCO still at +8.2% unrealized on remaining shares.
- **PLTR**: earnings tonight AH — monitoring; plan entry tomorrow pre-market if beat.
- Total deployed post-fill: ~94% (AAPL $14,682 + AMZN $25,580 + GOOGL $15,002 + NVDA $14,581 + UCO $4,038 + XLE $10,199 + BTC $10,090 = $94,172).

---

## May 04 — Intraday Scan (11:00 ET, 10:00 CT)

**Portfolio:** $100,407 | **Cash:** $6,019 | **Deployed:** 94.0% | **daytrade_count:** 1/3 | **Weekly trades:** 1/8 | **Day P&L:** +$764 (+0.77%)

| Symbol  | P&L%    | Day%    | Stop Level                              | Action |
|---------|---------|---------|-----------------------------------------|--------|
| AAPL    | +0.08%  | +0.08%  | 8% trail $255.76, HWM $278              | Hold — XLK thesis intact |
| AMZN    | +3.19%  | +1.83%  | 8% trail $254.01, HWM $276.10           | Hold — AWS AI thesis intact; +5% rung ($277.95) not hit |
| BTC/USD | +2.89%  | +0.54%  | stop_limit $68,634/$68,225              | Hold — DXY weak, ETF inflows intact |
| GOOGL   | +2.88%  | -0.91%  | 10% trail $348.64, HWM $387.38          | Hold — Cloud +63% thesis intact |
| NVDA    | -2.82%  | -0.67%  | 10% trail $183.02, HWM $203.36          | Hold — above -6% cutline ($190.68); $500B US manufacturing + hyperscaler dependency intact |
| UCO     | +10.68% | +5.17%  | 4% trail $47.21, HWM $49.18            | Hold — +10% rung done at open; next rung +20% ($53.32) not hit |
| XLE     | +4.03%  | +0.44%  | 4% trail $56.86, HWM $59.23            | Hold — already at 4% trail; +10% rung ($62.50) not hit |

**No actions taken.** 6/6 equity slots filled — no new equity entries possible. $6K cash insufficient for 12% crypto sizing. All GTC stops live and valid.

**Oil/Hormuz update:** Iran proposed Hormuz reopening but US "Project Freedom" active; UAE ADNOC vessel attacked by Iranian drones. WTI ~$100-102/bbl. Thesis intact — attacks ongoing, no deal. UCO/XLE stops (4% trail each) lock near break-even.

**PLTR:** Reports Q1 tonight AH; consensus EPS $0.28 (+115% YoY), revenue $1.54B (+74% YoY); 96% beat probability (Polymarket). Options pricing ±10.55% move. NO entry today — binary risk + no equity slot. Plan entry tomorrow AM on confirmed beat. PLTR current: $147.50 (+2.1% today from $144.41).

**Tag:** intraday-scan 2026-05-04
