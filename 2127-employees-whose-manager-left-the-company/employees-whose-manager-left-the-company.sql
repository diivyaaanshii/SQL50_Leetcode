# Write your MySQL query statement below
select employee_id from employees e where salary <30000 and  not exists (select 1 from employees s where s.employee_id=e.manager_id)
and manager_id is not null order by employee_id;