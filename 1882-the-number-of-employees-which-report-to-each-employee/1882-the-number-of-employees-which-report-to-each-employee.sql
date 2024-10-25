# Write your MySQL query statement below
WITH cte AS (SELECT *
FROM employees
WHERE reports_to IS NOT NULL)

SELECT e.employee_id,e.name,COUNT(c.reports_to) reports_count, ROUND(AVG(c.age)) as average_age
FROM employees e
JOIN cte c
ON c.reports_to = e.employee_id
GROUP BY 1
ORDER BY 1