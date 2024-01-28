# Write your MySQL query statement below

select activity_date AS day ,COUNT(distinct user_id) AS active_users  from Activity

where activity_date between '2019-06-28' and '2019-07-27'
GROUP BY activity_date