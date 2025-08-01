# Write your MySQL query statement below
select query_name,
round(avg(rating /position),2) as quality,
round(100.0 *sum(rating < 3)/count(*),2) as poor_query_percentage
from Queries
group by query_name ;
