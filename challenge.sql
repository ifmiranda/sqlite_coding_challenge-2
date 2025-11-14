-- Task 1  Top 5 Customers by Total Spend --- 
SELECT
    c.first_name || ' ' || c.last_name AS customer_name,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS total_spend
FROM orders AS o
JOIN order_items AS oi
    ON oi.order_id = o.id
JOIN customers AS c
    ON c.id = o.customer_id
GROUP BY
    c.id,
    c.first_name,
    c.last_name
ORDER BY
    total_spend DESC
LIMIT 5;







































