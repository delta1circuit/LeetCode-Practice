# Write your MySQL query statement below
select empuni.unique_id, empname.name
from Employees empname left join EmployeeUNI empuni on empname.id = empuni.id