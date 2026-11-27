drop view if exists v32_declared_course_credits;

create view v32_declared_course_credits as
select 
	COUNT(takes.course_id) AS enrollment_records,
	SUM(course.credits) AS declared_credits
from student inner join takes
on 
	student.ID = takes.ID
join course 
on
	takes.ID = course.course_id
order by student.ID asc, atudent.name asc;

--INCOMPLETE--