-- Identify the most common pizza size ordered.

SELECT 
    p.size AS 'Most-common Pizza Size Ordered',
    COUNT(od.quantity) AS 'Total Count'
FROM
    pizzas p
        INNER JOIN
    order_details od ON p.pizza_id = od.pizza_id
GROUP BY 1
ORDER BY 2 DESC;