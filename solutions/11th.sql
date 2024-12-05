-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pt.category AS 'Pizza Category',
    ROUND(SUM(od.quantity * p.price) / (SELECT 
                    SUM(od.quantity * p.price)
                FROM
                    order_details od
                        INNER JOIN
                    pizzas p ON od.pizza_id = p.pizza_id) * 100,
            2) AS '% of Total Revenue'
FROM
    order_details od
        INNER JOIN
    pizzas p ON od.pizza_id = p.pizza_id
        INNER JOIN
    pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY 1
ORDER BY 2 DESC;