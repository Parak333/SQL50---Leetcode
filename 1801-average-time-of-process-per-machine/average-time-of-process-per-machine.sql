# Write your MySQL query statement below
select a1.machine_id, round(avg(a2.timestamp - a1.timestamp),3) as processing_time
from activity a1
join activity a2

#After self join since we have 1 machine '0' and 2 processes in machine 1 so self join
on a1.machine_id = a2.machine_id
and a1.process_id = a2.process_id

#timestamp 1 should be less than 2 as if you are starting work at 1pm and ending at 2pm
and a1.timestamp < a2.timestamp

#Group by something used before aggr function
group by a1.machine_id
