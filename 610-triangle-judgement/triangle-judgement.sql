# Write your MySQL query statement below
select *,
 (CASE 
    When (x + y) > z and (x + z )> y  and (z + y) > x then 'Yes' 
    Else 'No' 
END) as triangle
from Triangle;
