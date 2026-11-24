drop view if exists v11_student_names;

create view v11_student_names as
select name,ID
from student;

select * 
from v11_student_names 
order by name asc, ID asc;


select distinct name 
from v11_student_names;