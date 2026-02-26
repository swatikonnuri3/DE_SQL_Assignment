SELECT
    productid,
    sale_date,
    quantity_sold,
    RANK() OVER (PARTITION BY productid ORDER BY sale_date DESC) AS rank_no
FROM sales_data;
SELECT
    productid,
    sale_date,
    quantity_sold,
    LAG(quantity_sold) OVER (PARTITION BY productid ORDER BY sale_date) AS prev_quantity
FROM sales_data;
SELECT
    productid,
    sale_date,
    quantity_sold,
    FIRST_VALUE(quantity_sold) OVER (PARTITION BY productid ORDER BY sale_date) AS first_qty,
    LAST_VALUE(quantity_sold) OVER (
        PARTITION BY productid
        ORDER BY sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS last_qty
FROM sales_data;