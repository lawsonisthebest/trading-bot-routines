# Watchlist — Universe the Bot Scans

This is the set of instruments the bot considers every run. It's intentionally
broad (hundreds of names, not thousands) so scans stay fast but coverage is
wide. The bot is NOT limited to this list — news catalysts can surface any
liquid ticker — but these are always in view.

## Index ETFs (market barometer + tradable)
SPY, QQQ, IWM, DIA, VTI, VOO

## Sector ETFs (rotation tracking + tradable)
XLK (tech), XLF (financials), XLE (energy), XLV (healthcare), XLI (industrials),
XLY (consumer discretionary), XLP (consumer staples), XLB (materials),
XLRE (real estate), XLU (utilities), XLC (communication services)

## S&P 500 mega-caps (always scanned for momentum / news / earnings reactions)
AAPL, MSFT, GOOGL, GOOG, AMZN, META, NVDA, TSLA, BRK.B, UNH, JPM, V, XOM, JNJ,
PG, MA, HD, CVX, LLY, ABBV, MRK, AVGO, KO, PEP, BAC, WMT, COST, ADBE, CSCO,
TMO, ACN, CRM, MCD, ABT, LIN, DHR, NEE, VZ, TXN, WFC, NKE, QCOM, PM, AMD,
UPS, DIS, INTC, CAT, RTX, GS, LOW, T, HON, INTU, SPGI, IBM, AXP, BLK, BKNG,
MS, AMGN, PLD, SYK, DE, ELV, LMT, MDT, GILD, VRTX, ADI, ADP, TJX, AMT, BSX,
MDLZ, REGN, PYPL, CB, PFE, MMC, LRCX, CI, SCHW, C, ISRG, NOW, SO, DUK, SHW,
CME, BDX, EQIX, MU, MO, BA, AON, ICE, PGR, KLAC, GE, ITW, EL, ETN, SNPS,
APD, CSX, MNST, FCX, WM, NSC, TGT, SLB, EW, CDNS, MCK, FDX, HCA, CL, EMR,
USB, F, GM, ROP, ATVI, NOC, APH, COF, ORLY, PNC, AEP, AJG, D, MAR, ECL,
ADSK, HUM, MET, KMB, TRV, PSX, PSA, STZ, AIG, ALL, OXY, BK, SRE, GD, CMI,
CTAS, AFL, CHTR, PRU, VLO, MCO, CARR, DOW, PAYX, NXPI, MSI, WMB, HLT, YUM,
KHC, FIS, CNC, TT, TEL, DD, TFC, HSY, LHX, AZO, KDP, IDXX, AME, ILMN, TDG,
IQV, FTNT, ON, CTVA, CPRT, OTIS, CSGP, GIS, DLR, A, FAST, ODFL, VRSK, MPC,
WELL, PCAR, GWW, LULU, NUE, BIIB, ANET, KMI, CEG, MLM, VMC, EXC, WY, AVB,
DG, ADM, SBAC, ROST, BKR, HES, ED, LEN, DHI, CTSH, WST, EBAY, AWK, GPN,
ZTS, SYY, MTB, EIX, IT

## NASDAQ-100 extras (tech-heavy, often has biggest daily moves)
PANW, CRWD, DDOG, NET, SNOW, SHOP, UBER, LYFT, COIN, RBLX, PLTR, SMCI,
ARM, MSTR, DASH, ABNB, MDB, TEAM, OKTA, ZM, DOCU, CFLT, MRVL

## High-momentum / retail-attention watchlist (daily gappers tend to live here)
GME, AMC, RIVN, LCID, NIO, PLUG, BBAI, SOFI, RKLB, HOOD, AFRM, UPST, SQ,
ROKU, DKNG, PENN, CHWY, ETSY, W, BYND, CVNA, CELH, ANF, GEV

## Macro context instruments (tracked for signal, not directly traded)
These are NOT traded (either unavailable or doesn't fit strategy), but the bot
reads their state every pre-market to inform decisions:
- /ES (S&P 500 futures) — via Yahoo/CNBC in WebSearch
- /NQ (Nasdaq 100 futures)
- /CL (WTI crude)
- /GC (gold)
- /DX (dollar index)
- 10Y Treasury yield (^TNX)
- VIX (^VIX)

## Crypto (DISABLED by default)
Alpaca supports crypto trading 24/7. Strategy currently forbids it ("stocks
only"). To enable, move the list below above this line and update
TRADING-STRATEGY.md mandate.
- BTC/USD, ETH/USD, SOL/USD, AVAX/USD, LINK/USD, DOGE/USD
(Note: crypto is 24/7, so it would need its own cron schedule distinct from
equity market hours.)

## Futures & Forex (NOT TRADABLE on Alpaca)
Alpaca does not offer futures (/ES, /CL, /GC) or forex (EUR/USD, etc.).
These are tracked only as macro context. To trade them would require a
different broker (IBKR, Tastytrade, OANDA) and a rebuild of the wrapper.
