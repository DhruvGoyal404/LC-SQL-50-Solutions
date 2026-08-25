https://leetcode.com/problems/managers-with-at-least-5-direct-reports/?envType=study-plan-v2&envId=top-sql-50
SELECT b.name
FROM employee a
JOIN employee b
    ON a.managerId = b.id
GROUP BY a.managerId
HAVING COUNT(a.managerId) >= 5;