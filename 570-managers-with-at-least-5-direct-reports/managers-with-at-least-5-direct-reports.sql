# Write your MySQL query statement below
select e.name from Employee e
inner join
(select id,managerId,count(managerId)as direct_reports
from Employee 
group by managerId
having direct_reports > 4 
)as tmp
where e.id=tmp.managerId