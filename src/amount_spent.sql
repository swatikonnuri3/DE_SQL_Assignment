-- Question 9: Most purchased item of each customer

SELECT
    s.userid,
    p.product_name,
    COUNT(*) AS item_count
FROM sales s
JOIN product p
    ON s.product_id = p.product_id
GROUP BY s.userid, p.product_name
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM sales s2
        WHERE s2.userid = s.userid
        GROUP BY s2.product_id
    ) t
)
ORDER BY s.userid;