-- Business Query: Are heavy discounts helping or hurting margins?
-- This query will prove the root cause of most of the company's losses.

SELECT 
    CASE 
        WHEN discount=0 THEN '1. No discount (0%)'
        WHEN discount<=0.10 THEN '2. Low (1-10%)'
        WHEN discount<=0.20 THEN '3. Moderate (11-20%)'
        WHEN discount<=0.30 THEN '4. High (21-30%)'
        WHEN discount<=0.40 THEN '5. Very High (31-40%)'
        ELSE '6. Extreme (40%+)'
    END AS discount_tier,
    COUNT(*) AS orders,
    ROUND(AVG(sales),2) AS avg_ordder_value,
    ROUND(AVG(profit),2) AS avg_profit_per_order,
    ROUND(SUM(profit),2) AS total_profit
FROM orders
GROUP BY 1
ORDER BY 1;

-- FINDING: Every tier above 20% discount has NEGATIVE average profit
-- This is your most important insight. It goes straight into recommendations.