# Write your MySQL query statement below
select  tweet_id
from tweets where char_length(content)>15;