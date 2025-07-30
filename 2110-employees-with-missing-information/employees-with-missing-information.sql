# Write your MySQL query statement below
with cte as(select e.employee_id
from Employees e
left join Salaries s
on e.employee_id = s.employee_id
where s.employee_id is null

UNION ALL

select s.employee_id
from Salaries s
left join Employees e
on e.employee_id = s.employee_id
where e.employee_id is NULL)

select employee_id
from cte
order by employee_id;