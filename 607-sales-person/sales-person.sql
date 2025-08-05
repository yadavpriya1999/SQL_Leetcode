# Write your MySQL query statement below
with cte as 
(select o.sales_id
from Orders o
left join Company c
on o.com_id=c.com_id
where c.name like 'RED' )


select s.name
from SalesPerson s
where s.sales_id not in (
    select * from cte
);
