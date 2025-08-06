# Write your MySQL query statement below
with cte as (select u.name as NAME,
sum(t.amount)  as BALANCE
from Users u
join Transactions t 
on u.account=t.account
group by t.account)

select NAME,BALANCE
from cte
where BALANCE >10000 ;
