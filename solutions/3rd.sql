-- Identify the highest-priced pizza.

SELECT 
    pt.name AS 'Highest-priced pizza', p.price AS Price
FROM
    pizza_types pt
        INNER JOIN
    pizzas p ON pt.pizza_type_id = p.pizza_type_id
ORDER BY 2 DESC
LIMIT 1;