drop view if exists v18_department_payroll;

create view v18_department_payroll as
select
    dept_name,
    COUNT(ID) as instructor_count,
    SUM(salary) as salary_total
from instructor
group by dept_name;

select *
from v18_department_payroll
order by salary_total desc;

SHOW CREATE VIEW v18_department_payroll;

select
    dept_name,
    instructor_count,
    salary_total
from v18_department_payroll;