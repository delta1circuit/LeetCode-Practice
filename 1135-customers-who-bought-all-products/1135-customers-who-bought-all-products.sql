# Write your MySQL query statement below
with ProdCount(customer_id, num_prods, unique_prods) as (
    select c.customer_id, 
    count(distinct c.product_key) as num_prods,
    count(distinct p.product_key) as unique_prods
    from Customer c, Product p
    group by c.customer_id
)

select customer_id from ProdCount 
where num_prods = unique_prods
