# Write your MySQL query statement below
with salaryrank as(
    select dense_rank() over (order by salary desc) as srank, salary
    from Employee
)

select(
    select distinct salary from salaryrank where srank = 2 
) as SecondHighestSalary;
