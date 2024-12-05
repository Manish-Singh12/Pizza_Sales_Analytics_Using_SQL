-- Retrieve the total number of orders placed.

-- From `order_details` table
SELECT 
    COUNT(DISTINCT (order_id)) AS 'Total Orders'
FROM
    order_details;

-- From `order` table
SELECT 
    COUNT(*) AS 'Total Orders'
FROM
    orders;