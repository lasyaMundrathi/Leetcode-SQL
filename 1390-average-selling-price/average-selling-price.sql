# Write your MySQL query statement below
SELECT P.product_id,IFNULL(round(sum(u.units * p.price) / SUM(u.units),2),0) AS average_price
FROM  Prices p 
LEFT JOIN UnitsSold u ON p.product_id = u.product_id AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY P.product_id;
