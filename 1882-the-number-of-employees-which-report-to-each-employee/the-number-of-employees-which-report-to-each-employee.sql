# Write your MySQL query statement below
select employee_id,name,reports_count,average_age  from Employees e join (select reports_to, count(reports_to) as reports_count,round(avg(age)) as average_age from Employees
group by reports_to
having count(reports_to) >=1)tmp
on e.employee_id=tmp.reports_to
order by employee_id