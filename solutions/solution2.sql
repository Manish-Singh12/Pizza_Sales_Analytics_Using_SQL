-- Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(od.quantity * p.price), 2) AS 'Total Revenue'
FROM
    order_details od
        INNER JOIN
    pizzas p ON od.pizza_id = p.pizza_id;