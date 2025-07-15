# Write your MySQL query statement below

with cte as (
select *, LEAD(num,1) over() as n2, LEAD(num,2) over() as n3
from Logs )

select distinct num as ConsecutiveNums
from cte
where num=n2
and num=n3;