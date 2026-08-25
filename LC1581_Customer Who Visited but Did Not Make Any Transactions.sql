https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/?envType=study-plan-v2&envId=top-sql-50

SELECT a.customer_id,
       COUNT(a.customer_id) AS count_no_trans
FROM Visits a
LEFT JOIN Transactions e
    ON a.visit_id = e.visit_id
WHERE e.transaction_id IS NULL
GROUP BY a.customer_id;