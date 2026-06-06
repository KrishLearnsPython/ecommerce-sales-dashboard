-- Business Query: Who are our most valuable customers?

SELECT
    customer_id,customer_name,segment,region,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales),2) AS lifetime_revenue,
    ROUND(SUM(profit),2) AS lifetime_profit,
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order
FROM orders
GROUP BY 1,2,3,4
ORDER BY lifetime_revenue DESC
LIMIT 20;