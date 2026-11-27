drop view if exists v31_student_enrollments;

create view v31_student_enrollments as 
select
	student.ID AS student_id,
    student.name,
    course.course_id,
    course.title,
    takes.semester,
	takes.year
from 
student inner join takes
on 
	student.ID = takes.ID
join course 
on
	takes.course_id = course.course_id;
    
select * 
from v31_student_enrollments
where name = 'N. Lee'
	