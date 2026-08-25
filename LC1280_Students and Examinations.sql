https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50

SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.student_id) as attended_exams 
FROM Students s CROSS JOIN Subjects sub LEFT JOIN Examinations e ON e.subject_name = sub.subject_name and e.student_id = s.student_id
GROUP BY s.student_id, s.student_name, sub.subject_name ORDER BY s.student_id ASC, sub.subject_name ASC