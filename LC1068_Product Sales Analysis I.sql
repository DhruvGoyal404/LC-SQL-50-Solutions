https://leetcode.com/problems/product-sales-analysis-i/?envType=study-plan-v2&envId=top-sql-50
select p.product_name, e.year, e.price from Sales e LEFT JOIN Product p on e.product_id = p.product_id