# Write your MySQL query statement below

select round(sum(tiv_2016),2) as tiv_2016 
from Insurance
where 
    (lat, lon) in (
        select lat, lon
        from Insurance
        group by lat,lon
        having count(pid) = 1
    )
    and
    tiv_2015 in (
        select tiv_2015
        from Insurance
        group by tiv_2015
        having count(pid)>1
    )
