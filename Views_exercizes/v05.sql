create view  v05_instructor_directory as
select  instructor.ID, instructor.name , instructor.dept_name
from instructor;

select * from v05_instructor_directory ;

select  ID, name , dept_name
from v05_instructor_directory
order by name desc;