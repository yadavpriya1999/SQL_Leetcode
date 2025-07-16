# Write your MySQL query statement below
with cte as
(select departmentId,d.name as Department, e.name as Employee ,e.salary,
max(e.salary) over(partition by e.departmentId ) as maxsalary
from  Employee e join Department d 
on e.departmentId=d.id)

select Department , Employee , maxsalary as Salary
from  cte
where salary=maxsalary
order by Employee;