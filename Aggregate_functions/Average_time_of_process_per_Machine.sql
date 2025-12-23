-- Write your MySQL query statement below
-- -------------------------------------


select a.machine_id,Round(Avg(a.timestamp-b.timestamp),3) as processing_time
from Activity b join Activity a
on a.machine_id=b.machine_id and a.activity_type='end'and a.process_id=b.process_id
and b.activity_type='start'
group by a.machine_id