# Write your MySQL query statement below
WITH CTE AS (SELECT delivery_id,customer_id,order_date,customer_pref_delivery_date,RANK() OVER (PARTITION BY customer_id ORDER BY order_date ASC) ranking
FROM Delivery)

SELECT ROUND(AVG(order_date=customer_pref_delivery_date) * 100, 2) immediate_percentage
FROM CTE
WHERE ranking = 1