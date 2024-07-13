# Write your MySQL query statement below
SELECT product_name, SUM(unit) AS unit
FROM Orders 
INNER JOIN Products USING(product_id)
WHERE MONTH(order_date) = '02' AND YEAR(order_date) = '2020'
GROUP BY product_id HAVING SUM(unit) >= 100;