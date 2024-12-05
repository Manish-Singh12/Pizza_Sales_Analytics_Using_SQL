-- Join relevant tables to find the category-wise distribution of pizzas.

SELECT 
    category AS 'Pizza Category', COUNT(*) AS 'Count'
FROM
    pizza_types
GROUP BY 1;