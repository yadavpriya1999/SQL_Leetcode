# Write your MySQL query statement below
select visited_on,
(
    select sum(amount)
    from Customer
    where visited_on between date_sub(c.visited_on ,interval 6 day )
    and c.visited_on
) as amount,
round((
    select sum(amount)/7
    from Customer
    where visited_on between date_sub(c.visited_on ,interval 6 day )
    and c.visited_on
),2) as average_amount

from Customer c
where visited_on >=(
    select Date_Add(min(visited_on), interval 6 Day)
    from Customer
)
group by visited_on 
order by visited_on
;

