# Write your MySQL query statement below
-- select  query_name,round(avg(sum(rating/position)),2) as quality, (select count(rating) from Queries where rating <3 group by query_name) / count(*) as poor_query_percentage from Queries
-- group by query_name;

SELECT 
    query_name,
    ROUND(AVG(rating / position), 2) AS quality,
    round(SUM(CASE WHEN rating<3 then 1 else 0 end) * 100/ count(rating),2) AS poor_query_percentage 
FROM 
    Queries 
where query_name is not null    
GROUP BY 
    query_name;
