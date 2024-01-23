# Write your MySQL query statement below

select  contest_id, round(count(r.user_id) *100.00/(select count(*) from Users),2) as percentage from Register r
group by contest_id 
order by  percentage desc, contest_id asc