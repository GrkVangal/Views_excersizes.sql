drop view if exists v06_department_buildings;

create view v06_department_buildings as
select dept_name , building
from department;

select * from university.v06_department_buildings
order by building asc, 
dept_name asc;

select dept_name , building
from v06_department_buildings
where building ='Curie';

select distinct building
from v06_department_buildings;
	