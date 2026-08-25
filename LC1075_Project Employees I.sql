https://leetcode.com/problems/project-employees-i/?envType=study-plan-v2&envId=top-sql-50

select a.project_id, ROUND(AVG(b.experience_years),2) as average_years from project a left join employee b on a.employee_id = b.employee_id group by a.project_id