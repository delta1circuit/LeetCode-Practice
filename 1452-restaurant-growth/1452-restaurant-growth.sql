# Write your MySQL query statement below
with window_fn as (
    select distinct visited_on,
    sum(amount) over(order by visited_on range between interval 6 day preceding and current row) as amount,
    min(visited_on) over() as first_date
    from customer
)

select visited_on, amount, ROUND(amount/7, 2) as average_amount
from window_fn
where visited_on >= first_date+6