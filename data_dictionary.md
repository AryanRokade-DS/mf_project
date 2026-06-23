# Data Dictionary

## dim_fund
- amfi_code: Unique AMFI scheme code
- fund_house: Mutual fund company
- scheme_name: Name of scheme
- category: Fund category
- expense_ratio_pct: Expense ratio (%)

## fact_nav
- amfi_code: Scheme code
- date: NAV date
- nav: Net Asset Value

## fact_transactions
- investor_id: Investor ID
- transaction_type: SIP/Lumpsum/Redemption
- amount_inr: Transaction amount
- state: Investor state

## fact_performance
- return_1yr_pct: 1-year return
- return_3yr_pct: 3-year return
- sharpe_ratio: Risk-adjusted return

## fact_holdings
- stock_symbol: Stock ticker
- stock_name: Company name
- weight_pct: Portfolio allocation (%)