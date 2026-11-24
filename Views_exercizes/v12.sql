drop view if exists v12_department_info;

create view v12_department_info as
select dept_name,building
from department;

show create view v12_department_info;


create or replace view v12_department_info as
select
	dept_name,
    building,
    budget
from department;

select *
from v12_department_info;

drop view if exists v12_department_info;

show full tables 
where Tables_in_university ='v12_department_info';