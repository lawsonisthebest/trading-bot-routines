# Watchlist — Universe the Bot Scans

Multi-asset coverage: US equities, crypto (24/7 on Alpaca), futures-tracking
ETFs, forex ETFs, bonds, commodities, international. Alpaca doesn't offer
raw futures or forex contracts — we use liquid ETF proxies instead, which
track the underlying markets and trade during US equity hours.

## Index ETFs (market barometer + tradable)
SPY, QQQ, IWM, DIA, VTI, VOO, MDY

## Sector ETFs (rotation tracking + tradable)
XLK (tech), XLF (financials), XLE (energy), XLV (healthcare), XLI (industrials),
XLY (consumer discretionary), XLP (consumer staples), XLB (materials),
XLRE (real estate), XLU (utilities), XLC (communication services),
SMH (semis), KRE (regional banks), XBI (biotech), XRT (retail), KWEB (china tech),
ITB (homebuilders), JETS (airlines)

## S&P 500 mega-caps (always scanned for momentum / news / earnings reactions)
AAPL, MSFT, GOOGL, GOOG, AMZN, META, NVDA, TSLA, BRK.B, UNH, JPM, V, XOM, JNJ,
PG, MA, HD, CVX, LLY, ABBV, MRK, AVGO, KO, PEP, BAC, WMT, COST, ADBE, CSCO,
TMO, ACN, CRM, MCD, ABT, LIN, DHR, NEE, VZ, TXN, WFC, NKE, QCOM, PM, AMD,
UPS, DIS, INTC, CAT, RTX, GS, LOW, T, HON, INTU, SPGI, IBM, AXP, BLK, BKNG,
MS, AMGN, PLD, SYK, DE, ELV, LMT, MDT, GILD, VRTX, ADI, ADP, TJX, AMT, BSX,
MDLZ, REGN, PYPL, CB, PFE, MMC, LRCX, CI, SCHW, C, ISRG, NOW, SO, DUK, SHW,
CME, BDX, EQIX, MU, MO, BA, AON, ICE, PGR, KLAC, GE, ITW, EL, ETN, SNPS,
APD, CSX, MNST, FCX, WM, NSC, TGT, SLB, EW, CDNS, MCK, FDX, HCA, CL, EMR,
USB, F, GM, ROP, NOC, APH, COF, ORLY, PNC, AEP, AJG, D, MAR, ECL,
ADSK, HUM, MET, KMB, TRV, PSX, PSA, STZ, AIG, ALL, OXY, BK, SRE, GD, CMI,
CTAS, AFL, CHTR, PRU, VLO, MCO, CARR, DOW, PAYX, NXPI, MSI, WMB, HLT, YUM,
KHC, FIS, CNC, TT, TEL, DD, TFC, HSY, LHX, AZO, KDP, IDXX, AME, ILMN, TDG,
IQV, FTNT, ON, CTVA, CPRT, OTIS, CSGP, GIS, DLR, A, FAST, ODFL, VRSK, MPC,
WELL, PCAR, GWW, LULU, NUE, BIIB, ANET, KMI, CEG, MLM, VMC, EXC, WY, AVB,
DG, ADM, SBAC, ROST, BKR, HES, ED, LEN, DHI, CTSH, WST, EBAY, AWK, GPN,
ZTS, SYY, MTB, EIX, IT

## NASDAQ-100 extras (tech-heavy, often has biggest daily moves)
PANW, CRWD, DDOG, NET, SNOW, SHOP, UBER, LYFT, COIN, RBLX, PLTR, SMCI,
ARM, MSTR, DASH, ABNB, MDB, TEAM, OKTA, ZM, DOCU, CFLT, MRVL, ZS, TTD,
CDNS, ANSS, WDAY, PCTY

## High-momentum / retail-attention watchlist
GME, AMC, RIVN, LCID, NIO, PLUG, BBAI, SOFI, RKLB, HOOD, AFRM, UPST, SQ,
ROKU, DKNG, PENN, CHWY, ETSY, W, BYND, CVNA, CELH, ANF, GEV, TSM, BABA,
JD, PDD, NIO, XPEV, LI, BILI

## Crypto (ENABLED — 24/7 tradable on Alpaca)
Alpaca supports crypto spot trading. Symbols use BASE/USD format.
- BTC/USD, ETH/USD, SOL/USD, AVAX/USD, LINK/USD, DOGE/USD, LTC/USD,
  BCH/USD, UNI/USD, AAVE/USD, MATIC/USD, DOT/USD, XRP/USD
Quote lookup: `bash scripts/alpaca.sh crypto-quote BTC/USD`
Order (crypto uses `time_in_force: "gtc"` only; no `day`):
  `bash scripts/alpaca.sh order '{"symbol":"BTC/USD","qty":"0.001","side":"buy","type":"market","time_in_force":"gtc"}'`

## Futures-tracking ETFs (Alpaca doesn't offer raw futures)
Exposure to futures markets via liquid ETFs. Trade during US market hours.
- /ES S&P 500 futures → SPY, SPXL (3x long), SPXS (3x short)
- /NQ Nasdaq futures → QQQ, TQQQ (3x), SQQQ (3x short)
- /YM Dow futures → DIA, UDOW (3x)
- /RTY Russell 2000 futures → IWM, TNA (3x long), TZA (3x short)
- /CL WTI crude → USO, UCO (2x long), SCO (2x short)
- /NG natural gas → UNG, BOIL (2x), KOLD (2x short)
- /GC gold → GLD, IAU, UGL (2x)
- /SI silver → SLV, AGQ (2x)
- /HG copper → CPER
- /ZB 30Y bond → TLT, TMF (3x long), TMV (3x short)
- /ZN 10Y note → IEF
- /VX VIX → VXX, UVXY (1.5x), SVXY (-0.5x short)
**Leveraged ETFs (3x, 2x): size at HALF the normal cap due to volatility.**

## Forex ETFs (Alpaca doesn't offer spot forex)
- DXY dollar index → UUP (long USD), UDN (short USD)
- EUR/USD → FXE (long EUR)
- USD/JPY → FXY (long JPY, so inverse USD/JPY)
- GBP/USD → FXB (long GBP)
- USD/CNH → CYB (long yuan)
- USD/CAD → FXC (long CAD)
- USD/CHF → FXF (long CHF)
- USD/AUD → FXA (long AUD)
- Emerging market FX basket → CEW

## Bond / rate ETFs
SHY (1-3Y), IEF (7-10Y), TLT (20Y+), AGG (aggregate), LQD (IG corp),
HYG (high yield), TIP (TIPS), BKLN (leveraged loans)

## Commodity ETFs beyond metals/energy
DBA (agriculture), CORN, WEAT, SOYB, CANE (sugar), COW (livestock),
JO (coffee), NIB (cocoa), PALL (palladium), PPLT (platinum), URA (uranium)

## International / regional ETFs
EFA (developed ex-US), EEM (emerging mkts), VWO, FXI (china), KWEB,
EWJ (japan), EWG (germany), EWU (UK), EWZ (brazil), INDA (india),
ACWI (all-country world)

## Volatility / hedge instruments
VXX, UVXY (long vol), SVXY (short vol), TAIL (tail-risk hedge)

## Macro context instruments (tracked for signal via WebSearch, not directly traded)
- /ES, /NQ futures — via Yahoo Finance / CNBC ticker in WebSearch
- /CL, /GC, /DX — same
- 10Y Treasury yield (^TNX)
- VIX (^VIX)
- DXY (^DXY)
- Bitcoin dominance / total crypto cap
