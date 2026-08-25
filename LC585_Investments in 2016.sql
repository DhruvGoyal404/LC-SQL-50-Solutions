https://leetcode.com/problems/investments-in-2016/?envType=study-plan-v2&envId=top-sql-50
SELECT ROUND(SUM(i.tiv_2016), 2) as tiv_2016 
FROM Insurance i
WHERE i.tiv_2015 IN (
    SELECT tiv_2015 FROM Insurance GROUP BY tiv_2015 HAVING COUNT(*) > 1
) AND (i.lat, i.lon) IN (
    SELECT lat, lon FROM Insurance GROUP BY lat, lon HAVING COUNT(*) = 1
)