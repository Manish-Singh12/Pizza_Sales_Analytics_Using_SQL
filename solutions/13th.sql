-- Determine the top 3 most ordered pizza types based on revenue for each pizza category

SELECT category, name, Revenue
FROM
(SELECT category, name, Revenue, RANK() OVER(PARTITION BY category ORDER BY Revenue DESC) AS rnk 
FROM 
	(SELECT pt.category, pt.name, ROUND(SUM(od.quantity*p.price),2) AS 'Revenue' 
	FROM order_details od
	INNER JOIN pizzas p
	ON od.pizza_id = p.pizza_id
	INNER JOIN pizza_types pt
	ON p.pizza_type_id = pt.pizza_type_id
	GROUP BY 1, 2) sales) ranked_sales
WHERE rnk < 4;