-- Business Query: Which states lose money despite high revenue?

SELECT
    region,
    state,
    ROUND(SUM(sales),2) AS revenue,
    ROUND(SUM(profit),2) AS profit,
    ROUND(SUM(profit)/SUM(sales)*100,1) AS margin_pct
    ROUND(AVG(discount)*100,1) AS avg_discount_pct
    COUNT(DISTINCT customer_id) AS customers
FROM orders
GROUP BY 1, 2
HAVING revenue>10000
ORDER BY profit ASC
LIMIT 15;


-- FINDING: Texas: $170K revenue, -$25K profit (avg discount 31%)
-- FINDING: Ohio: $78K revenue, -$17K profit
-- FINDING: Pennsylvania: $116K revenue, -$15K profit