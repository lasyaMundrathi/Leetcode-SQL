# Write your MySQL query statement below
select max(tmp.num) as num from (select num from MyNumbers group by num having count(*) =1)tmp 