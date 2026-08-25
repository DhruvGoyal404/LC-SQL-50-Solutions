https://leetcode.com/problems/not-boring-movies/submissions/2119641966/?envType=study-plan-v2&envId=top-sql-50

select id, movie, description, rating from cinema
where description != 'boring' and MOD(id, 2) = 1 
order by rating desc