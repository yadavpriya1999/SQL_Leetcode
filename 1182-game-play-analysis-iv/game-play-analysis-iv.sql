# Write your MySQL query statement below
select 
round(count(distinct player_id)/(select count(Distinct player_id) from Activity),2) as fraction
from Activity
where (player_id, Date_sub(event_date,Interval 1 Day)) IN
(
select  player_id ,
min(event_date) as first_login
from Activity
group by  player_id
) ;