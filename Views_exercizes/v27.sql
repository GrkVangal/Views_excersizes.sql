drop view if exists v27_instructor_locations;

create view v27_instructor_locations as
select
	instructor.ID,
    instructor.name,
    instructor.dept_name,
    department.building
from instructor inner join department
on
	instructor.dept_name = department.dept_name;
    
select 
	ID,
    name,
    dept_name,
    building
from v27_instructor_locations
where dept_name ='Biology'
order by building asc, name asc






	