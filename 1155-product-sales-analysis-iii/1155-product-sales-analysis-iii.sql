# Write your MySQL query statement below
WITH temp AS (
    SELECT *,RANK() OVER (PARTITION BY product_id ORDER BY year) as ranking
    FROM sales
)

SELECT product_id,year first_year,quantity,price
FROM temp
WHERE ranking = 1