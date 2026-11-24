drop view if exists v07_department_budgets;

create view  v07_department_budgets as
select dept_name, building, budget
from department;

select dept_name, building, budget
from v07_department_budgets
where budget > 100000
order by budget desc;

