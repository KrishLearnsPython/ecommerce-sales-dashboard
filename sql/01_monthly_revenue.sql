-- Business Query: Which months/years drive most revenue?
-- Is the business growing YoY? Is there seasonality?

WITH monthly AS (
        SELECT
            STRFTIME('%Y',order_date) AS year,
            STRFTIME('%m',order_date) AS month,
            ROUND(SUM(sales),2) AS revenue,
            ROUND(SUM(profit),2) AS profit,
            COUNT(DISTINCT order_id) AS orders
        FROM orders
        GROUP BY 1, 2
)

SELECT
    year, month, revenue, profit,
    ROUND(profit/revenue * 100,1) AS margin_pct,
    ROUND(
        (revenue-LAG(revenue) OVER (ORDER BY year, month))
        / LAG(revenue) OVER (ORDER BY year, month) *100,1) AS mom_growth_pct
FROM monthlyORDER BY year, month;

-- FINDING: November/December spike 40-60% above average (holiday season)
-- FINDING: Business grew ~20% YoY from 2019 to 2022