select d.name as Department,e.name as Employee ,e.salary as Salary from Employee e 
join (select departmentId,max(salary) as max_salary from Employee group by departmentId) as d1 
on d1.departmentId=e.departmentId and e.salary=d1.max_salary join 
Department d on d.id=e.departmentId;