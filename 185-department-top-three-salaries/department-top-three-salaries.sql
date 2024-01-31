# Write your MySQL query statement below
SELECT Department ,Employee,salary as Salary
FROM (
    SELECT 
        d.name as Department,e.name as Employee,
        salary,
        DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) as rn
    FROM 
        Employee e
    join Department d on e.departmentId=d.id   
) as ranked
WHERE rn <= 3
;


