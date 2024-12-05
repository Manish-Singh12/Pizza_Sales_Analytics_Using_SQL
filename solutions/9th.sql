-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(quantity), 0) AS 'Average Number of Pizzas Ordered Per Day'
FROM
    (SELECT 
        o.order_date, SUM(od.quantity) AS 'quantity'
    FROM
        orders o
    INNER JOIN order_details od ON o.order_id = od.order_id
    GROUP BY 1) pizzas_ordered_per_day;