drop view if exists v26_student_locations;

create view v26_student_locations as 
select
	student.ID,
    student.name,
    student.dept_name,
    department.building
from student inner join department 
on
	student.dept_name = department.dept_name;
	
select 
	ID,
    name,
    dept_name,
    building
from v26_student_locations
where building='Lambeau'