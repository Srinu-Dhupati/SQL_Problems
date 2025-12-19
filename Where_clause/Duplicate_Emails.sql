# Write your MySQL query statement below

select Distinct email as Email 
from Person 
group by email 
having count(email)>1;