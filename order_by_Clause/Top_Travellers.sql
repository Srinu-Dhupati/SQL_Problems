# Write your MySQL query statement below
select u1.name,IFNULL(sum(r1.distance),0) as travelled_distance 
from Users u1  left join Rides r1 on r1.user_id=u1.id 
group by u1.id order by travelled_distance  desc,name asc;