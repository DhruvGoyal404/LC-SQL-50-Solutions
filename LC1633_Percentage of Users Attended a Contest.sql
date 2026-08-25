https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50
SELECT r.contest_id, ROUND(r.registered_count/u.total_users*100, 2) as percentage
FROM (
    SELECT contest_id, COUNT(contest_id) AS registered_count
    FROM Register
    GROUP BY contest_id
) r
CROSS JOIN (
    SELECT COUNT(user_id) AS total_users
    FROM Users
) u
ORDER BY percentage desc, contest_id asc