# Write your MySQL query statement below
with cte as 
(select class, count(class) as c
from Courses
group by class)

select class 
from cte
where c >= 5;


