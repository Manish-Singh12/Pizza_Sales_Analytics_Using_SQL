-- Analyze the cumulative revenue generated over time.

SELECT 
	order_date, 
    ROUND(SUM(Revenue) OVER(ORDER BY order_date), 2) AS 'Cumulative Revenue'
FROM
	(SELECT 
		o.order_date, SUM(od.quantity*p.price) AS 'Revenue'
	FROM 
		order_details od
	INNER JOIN pizzas p ON od.pizza_id = p.pizza_id
	INNER JOIN orders o ON od.order_id = o.order_id
	GROUP BY 1) sales_per_day;