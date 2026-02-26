-- Question 7: Distinct visit dates for each customer
SELECT DISTINCT
    userid,
    created_date
FROM sales
ORDER BY userid, created_date;
