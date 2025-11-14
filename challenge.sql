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

-- Task 2 Total Revenue by Product Category (All Orders) -- 
SELECT
    p.category AS category,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS total_revenue
FROM order_items AS oi
JOIN products AS p
    ON p.id = oi.product_id
JOIN orders AS o
    ON o.id = oi.order_id
GROUP BY
    p.category
ORDER BY
    total_revenue DESC;

-- Task 3 Employees Earning Above Their Company Average -- 
SELECT
    e.first_name,
    e.last_name,
    d.name AS department_name,
    e.salary AS employee_salary,
    ROUND(da.dept_avg_salary, 2) AS department_average_salary
FROM employees AS e
JOIN (
    -- Average salary per department
    SELECT
        department_id,
        AVG(salary) AS dept_avg_salary
    FROM employees
    GROUP BY department_id
) AS da
    ON da.department_id = e.department_id
JOIN departments AS d
    ON d.id = e.department_id
WHERE
    e.salary > da.dept_avg_salary          -- strictly greater than avg
ORDER BY
    d.name ASC,
    e.salary DESC;  

-- Task 4 - Cities with the Most Gold Customers -- 
SELECT 
c.city,
    COUNT(*) AS gold_customer_count
FROM customers AS c
WHERE
    c.loyalty_level = 'Gold'
GROUP BY
    c.city
ORDER BY
    gold_customer_count DESC,
    c.city ASC;   

-- Task 4 Extension Loyalty Distribution by City -- 
SELECT
    c.city,
    SUM(CASE WHEN c.loyalty_level = 'Gold'   THEN 1 ELSE 0 END) AS gold_customers,
    SUM(CASE WHEN c.loyalty_level = 'Silver' THEN 1 ELSE 0 END) AS silver_customers,
    SUM(CASE WHEN c.loyalty_level = 'Bronze' THEN 1 ELSE 0 END) AS bronze_customers,
    COUNT(*) AS total_customers
FROM customers AS c
GROUP BY
    c.city
ORDER BY
    gold_customers DESC,
    c.city ASC; 
 















































