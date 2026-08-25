https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50
SELECT p.product_name, SUM(b.unit) AS unit 
FROM Products p LEFT JOIN Orders b 
ON p.product_id = b.product_id
WHERE b.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_name HAVING SUM(b.unit) >= 100;