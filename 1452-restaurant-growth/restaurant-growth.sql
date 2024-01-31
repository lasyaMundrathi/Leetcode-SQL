SELECT 
    distinct visited_on,
    amount,
    ROUND(amount/7, 2) AS average_amount
FROM 
    (SELECT
        visited_on,
        SUM(amount) OVER (
            ORDER BY visited_on 
            RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW
        ) AS amount,

        MIN(visited_on) OVER() as firstDay
    FROM Customer
    ) AS c
WHERE
    visited_on >= firstDay + INTERVAL 6 DAY;