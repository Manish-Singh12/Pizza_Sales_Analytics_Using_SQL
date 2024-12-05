-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pt.name AS 'Most-ordered Pizza Types',
    SUM(od.quantity) AS 'Total Quantity'
FROM
    pizzas p
        INNER JOIN
    pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
        INNER JOIN
    order_details od ON p.pizza_id = od.pizza_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;