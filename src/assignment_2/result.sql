SELECT
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ', ') AS product_list
FROM product_details
GROUP BY sell_date
ORDER BY sell_date;