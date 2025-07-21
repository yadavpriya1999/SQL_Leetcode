# Write your MySQL query statement below
select e1.employee_id
from Employees e1
inner join Employees e2
on e1.employee_id=e2.employee_id
where e1.salary < 30000
and e2.manager_id not in (select employee_id from Employees )
order by e1.employee_id;
