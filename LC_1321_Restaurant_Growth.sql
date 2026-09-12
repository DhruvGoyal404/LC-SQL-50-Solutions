SELECT a.visited_on,
       SUM(b.amount) AS amount,
       ROUND(SUM(b.amount) / 7, 2) AS average_amount
FROM (
    SELECT DISTINCT visited_on
    FROM Customer
) a
JOIN Customer b
    ON b.visited_on BETWEEN DATE_SUB(a.visited_on, INTERVAL 6 DAY)
                        AND a.visited_on
WHERE a.visited_on >= (
    SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY)
    FROM Customer
)
GROUP BY a.visited_on
ORDER BY a.visited_on;