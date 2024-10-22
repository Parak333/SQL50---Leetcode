# Write your MySQL query statement below
with comb_table as
(select * 
from students 
cross join 
subjects  ),

count_table as
(select student_id, subject_name, count(*) as attended_exams
from examinations 
group by student_id, subject_name
order by student_id, subject_name)

select comb_table.student_id, student_name, comb_table.subject_name, coalesce(attended_exams, 0) as attended_exams
from comb_table 
left join count_table
on comb_table.student_id = count_table.student_id
and comb_table.subject_name = count_table.subject_name
order by student_id, subject_name