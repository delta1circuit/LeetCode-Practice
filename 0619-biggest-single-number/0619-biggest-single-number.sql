# Write your MySQL query statement below
with maxNum(Num, num_count) as (
    select num, count(*) as num_count
    from MyNumbers
    group by num
    having num_count = 1
)

select max(Num) as num from maxNum