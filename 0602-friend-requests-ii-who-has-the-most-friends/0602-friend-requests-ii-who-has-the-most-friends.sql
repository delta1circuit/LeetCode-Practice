# Write your MySQL query statement below
SELECT ra.id, SUM(ra.id_sum) AS num
FROM (
    SELECT r1.requester_id AS id, COUNT(DISTINCT r1.accepter_id) AS id_sum
    FROM RequestAccepted r1
    GROUP BY r1.requester_id

    UNION ALL

    SELECT r2.accepter_id AS id, COUNT(r2.accepter_id) AS id_sum
    FROM RequestAccepted r2
    GROUP BY r2.accepter_id
) ra
GROUP BY ra.id
ORDER BY num DESC
LIMIT 1;





