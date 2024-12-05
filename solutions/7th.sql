-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) AS 'Day Hour',
    COUNT(order_id) AS 'Orders Count'
FROM
    orders
GROUP BY 1
ORDER BY 1;

