# Write your MySQL query statement below
with cte as (select 
d.name as Department,
e.name as Employee,
e.salary as Salary,
dense_rank() over(partition by d.name order by e.salary desc) as ranks
from Employee e
join Department d
on e.departmentId=d.id
)

select Department , Employee , Salary
from cte
where ranks <=3;

