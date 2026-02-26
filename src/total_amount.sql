-- Question 6: Total amount spent by each customer
SELECT 
    s.userid,
    SUM(p.price) AS total_amount_spent
FROM sales s
JOIN product p
ON s.product_id = p.product_id
GROUP BY s.userid;
-- Question 11: Amount spent by each customer as a gold member

SELECT
    g.userid,
    SUM(p.price) AS total_amount_spent
FROM gold_member_users g
JOIN sales s
    ON g.userid = s.userid
JOIN product p
    ON s.product_id = p.product_id
WHERE s.created_date >= g.signup_date
GROUP BY g.userid
ORDER BY g.userid;