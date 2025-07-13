# Write your MySQL query statement below
select max(salary) as  SecondHighestSalary
from Employee e1
where 1 = (select count(distinct salary)
from Employee e2 where e2.salary > e1.salary);