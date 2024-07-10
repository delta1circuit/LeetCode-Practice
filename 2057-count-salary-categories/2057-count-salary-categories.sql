-- # Write your MySQL query statement below
with 
low_salary as 
(
    select 'Low Salary' as category,
    count(account_id) as count_ls
    from Accounts
    where income < 20000
),

avg_salary as 
(
    select 'Average Salary' as category, 
    count(account_id) as count_avg
    from Accounts
    where income >= 20000 and income <= 50000
),

high_salary as 
(
    select 'High Salary' as category, 
    count(account_id) as count_high
    from Accounts
    where income > 50000
)

select category, count_ls as accounts_count from low_salary
union all
select category, count_avg as accounts_count from avg_salary
union all
select category, count_high as accounts_count from high_salary;