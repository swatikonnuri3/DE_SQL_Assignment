-- Question 10: Customers who are not gold members

SELECT
    u.userid
FROM users u
LEFT JOIN gold_member_users g
    ON u.userid = g.userid
WHERE g.userid IS NULL;