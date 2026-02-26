-- Question 5: Count all records from all four tables
SELECT 'gold_member_users' AS table_name, COUNT(*) AS total_records FROM gold_member_users
UNION ALL
SELECT 'users', COUNT(*) FROM users
UNION ALL
SELECT 'sales', COUNT(*) FROM sales
UNION ALL
SELECT 'product', COUNT(*) FROM product;