# Write your MySQL query statement below
select manager.name 
from Employee as employee
join Employee as manager
on employee.managerID = manager.id
group by employee.managerID
having count(employee.id) >= 5
