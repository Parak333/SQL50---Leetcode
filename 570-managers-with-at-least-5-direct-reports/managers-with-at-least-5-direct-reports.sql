# Getting manager ID with employees greater than 5
with table_a as 
(select managerID, count(managerID) as employees
from Employee 
where managerID is not null
group by managerId
having employees >= 5)

# Getting the name of that manager by joining it to Employee
select name
from Employee
join table_a
on table_a.managerId = Employee.id
