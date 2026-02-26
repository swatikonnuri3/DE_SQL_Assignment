-- Question 8: First product purchased by each customer

SELECT
    u.userid,
    p.product_name,
    s.created_date AS first_purchase_date
FROM users u
JOIN sales s
    ON u.userid = s.userid
JOIN product p
    ON s.product_id = p.product_id
WHERE s.created_date = (
    SELECT MIN(s2.created_date)
    FROM sales s2
    WHERE s2.userid = s.userid
)
ORDER BY u.userid;
-- Question 13: Display distinct customer IDs

SELECT DISTINCT
    userid
FROM users;