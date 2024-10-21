# Write your MySQL query statement below
select eu.unique_id, e.name
from Employees e

#Taking all the data from Table 1 
left join EmployeeUNI eu 

#Common between the two tables
on e.id = eu.id
