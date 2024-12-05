-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pt.category AS 'Pizza Category',
    SUM(od.quantity) AS 'Total Quantity'
FROM
    pizzas p
        INNER JOIN
    pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
        INNER JOIN
    order_details od ON p.pizza_id = od.pizza_id
GROUP BY 1
ORDER BY 2 DESC;