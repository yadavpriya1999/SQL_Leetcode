#Using Subquery
with cte as (select d.name Department,
e.name Employee,
e.salary as Salary,
max(e.salary) over(partition by e.departmentID ) as maxsalary
from Employee e
join Department d
on e.departmentID=d.id)

select Department,Employee,Salary
from cte
where Salary = maxsalary;