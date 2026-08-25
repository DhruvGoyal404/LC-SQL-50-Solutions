https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50
SELECT s.user_id,
ROUND( COALESCE( SUM( CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END ) / COUNT(c.user_id), 0), 2)
as confirmation_rate
From Signups s LEFT JOIN Confirmations c
ON s.user_id = c.user_id GROUP BY s.user_id