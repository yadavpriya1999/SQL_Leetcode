# Write your MySQL query statement below
with cte1 as 
(select *
from Students 
cross join Subjects ),

#No need to add multiple time 'with', add comma

cte2 as 
(select student_id,subject_name,count(subject_name) as counts
from Examinations 
group by student_id,subject_name)

select 
c1.student_id,c1.student_name,c1.subject_name,
CASE   #To handle null value
   When counts is not null 
    then counts
   else 0
END as attended_exams 
from cte1 c1
left join cte2  c2
on c1.student_id=c2.student_id
and c1.subject_name =c2.subject_name
order by c1.student_id,c1.subject_name ;
