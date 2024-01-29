# Write your MySQL query statement below
SELECT 'Low Salary' AS CATEGORY, count(account_id) AS ACCOUNTS_COUNT
FROM ACCOUNTS 
where income < 20000

UNION

SELECT 'Average Salary' AS CATEGORY, count(account_id) AS ACCOUNTS_COUNT
FROM ACCOUNTS
where INCOME BETWEEN 20000 AND 50000
UNION

SELECT 'High Salary' AS CATEGORY, count(account_id) AS ACCOUNTS_COUNT
FROM ACCOUNTS
where INCOME > 50000
