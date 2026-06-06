-- Business Query: Which categories and sub-categories destroy margin?

SELECT
    category,
    subcategory,
    ROUND(SUM(sales),2) AS revenue,
    ROUND(SUM(profit),2) AS profit,
    ROUND(SUM(profit)/SUM(sales)*100, 1) AS margin_pct,
    ROUND(AVG(discount)*100, 1) AS avg_discount_pct,
    COUNT(*) AS num_orders
FROM orders
GROUP BY 1, 2
ORDER BY profit ASC;


-- FINDING: Tables: $206K revenue, -$17K profit (avg 30% discount)
-- FINDING: Bookcases: $114K revenue, -$3K profit
-- FINDING: Technology has best margins (14-17%) with low discounts