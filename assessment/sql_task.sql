
-- SQL queries for data analysis
-- Author : Priyashantha Perera
-- Date : 2024-05-31

-- Task 1: Retrive the top 5 customers by total spending
SELECT 
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_spending
FROM
    customers c
JOIN
    order o ON c.customer_id = o.customer_id
GROUP BY 
    total_spending DESC
LIMIT
    5:

-- Task 2 : Find the number of orders placed each month in the last year
SELECT
    DATE_FORMAT(order_date,'%Y-%m') AS order_month,
    COUNT(*) AS order_count
FROM
    orders
WHERE
    order_date >= DATE_SUB(CURDATE(), INTERVEL 1 YEAR)
GROUP BY
    order_month;

--Task 3 : Determine average order value (AOV)
SELECT
    AVG(total_amount) AS average_order_value
FROM
    orders;

-- Task 4 : Find customers who have not placed any orders in the last 6 months
SELECT
    c.customer_id
    c.name
FROM
    customers c
LEFT JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    o.order_id IS NULL
OR 
    o.order_date < DATE_SUB(CURDATE(), INTERVEL 6 MONTHS);

