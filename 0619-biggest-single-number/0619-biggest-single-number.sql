# Write your MySQL query statement below
SELECT IFNULL(MAX(temp.num),null) num
FROM (SELECT num
FROM MyNumbers 
GROUP BY num 
HAVING COUNT(*) = 1) temp