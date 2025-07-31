# Write your MySQL query statement below
with cte as (select mr.*,u.name,m.title
from MovieRating mr
join Users u
on mr.user_id= u.user_id
join Movies m
on mr.movie_id =m.movie_id )

(select name as results
from cte
group by name 
order by count(*) Desc , name
limit 1)

union all

(select title
from cte
where date_format(created_at,'%Y-%m')='2020-02'
group by title
order by avg(rating) desc, title
limit 1)

