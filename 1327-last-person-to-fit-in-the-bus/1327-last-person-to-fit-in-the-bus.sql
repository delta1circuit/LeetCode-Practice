# Write your MySQL query statement below
with cum_sum(person_name, turn, cs) as 
(
    select person_name, turn, 
    sum(weight) over(order by turn) as cs
    from Queue
)

select person_name from cum_sum
where cs <= 1000
order by cs desc
limit 1;