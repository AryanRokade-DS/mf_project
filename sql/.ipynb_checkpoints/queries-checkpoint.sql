-- 1. Top 5 Funds by AUM
SELECT scheme_name, aum_crore
FROM fact_performance
ORDER BY aum_crore DESC
LIMIT 5;

-- 2. Average NAV
SELECT AVG(nav) AS average_nav
FROM fact_nav;

-- 3. Highest Expense Ratio
SELECT scheme_name, expense_ratio_pct
FROM fact_performance
ORDER BY expense_ratio_pct DESC;

-- 4. Total Transactions
SELECT COUNT(*) FROM fact_transactions;

-- 5. Transactions by State
SELECT state, COUNT(*) AS total
FROM fact_transactions
GROUP BY state;

-- 6. Average 1-Year Return
SELECT AVG(return_1yr_pct)
FROM fact_performance;

-- 7. Funds with Expense Ratio < 1%
SELECT scheme_name
FROM fact_performance
WHERE expense_ratio_pct < 1;

-- 8. Average SIP Inflow
SELECT AVG(sip_inflow_crore)
FROM fact_sip;

-- 9. Maximum Benchmark Value
SELECT MAX(close_value)
FROM fact_benchmark;

-- 10. Number of Schemes
SELECT COUNT(*)
FROM dim_fund;