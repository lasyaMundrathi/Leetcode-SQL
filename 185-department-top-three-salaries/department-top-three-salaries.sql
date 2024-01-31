# Write your MySQL query statement below
 select name as Department,Employee,salary as Salary from
(SELECT departmentId ,name as Employee,salary
FROM (
    SELECT 
        departmentId,name,
        salary,
        DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) as rn
    FROM 
        Employee
) as ranked
WHERE rn <= 3
ORDER BY departmentId, salary DESC)tmp
join Department d on departmentId=d.id
;
