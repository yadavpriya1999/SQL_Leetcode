# Write your MySQL query statement below
with cte as(select r.contest_id,count(r.user_id) as n,(select count(*) from Users)  as d
from Users u 
join Register r
on u.user_id=r.user_id
group by contest_id 
)

select contest_id,round((n/d)*100,2) as  percentage
from cte
order by percentage desc ,contest_id asc;


