# Write your MySQL query statement below
with ranktable as (
    select *, dense_rank() over (partition by departmentId order by salary desc) as rnk
    from Employee
)

select d.name as Department, r.name as Employee, r.salary as Salary
from ranktable r
join Department d
on r.departmentId = d.id
where (r.departmentId, r.rnk) in (
    select departmentId, rnk from ranktable
    where rnk <= 3
)