# Write your MySQL query statement below
select employee_id, department_id
from Employee 
where employee_id IN (
    select  employee_id  
    from Employee 
    group by employee_id
    having count(*)=1
) or primary_flag='Y'
order by employee_id;