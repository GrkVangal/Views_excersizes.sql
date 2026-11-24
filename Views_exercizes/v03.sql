create view  v03_student_directory as
select student.ID, student.name, student.dept_name
from  student;

select * from university.v03_student_directory
limit 10;

select ID, name, dept_name
from v03_student_directory
order by 
	name desc,
    ID asc;
