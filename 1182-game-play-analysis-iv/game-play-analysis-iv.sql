# Write your MySQL query statement below

select round(sum(if(DATEDIFF(a.event_date,b.first_login_date)=1,1,0))/ count(distinct a.player_id),2) as fraction from Activity a 
join (SELECT player_id, MIN(event_date) as first_login_date
    FROM Activity
    GROUP BY player_id) b
on a.player_id=b.player_id ;

  
