select person_name from 
(
    select person_name, weight, turn,sum(weight) over(order by turn) as Total_Weight from Queue
) tmp
where Total_Weight<=1000
order by Total_Weight desc
limit 1;