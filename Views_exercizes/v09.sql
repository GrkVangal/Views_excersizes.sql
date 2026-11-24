drop view if exists v09_low_credit_courses;

create view v09_low_credit_courses as
select course_id,title,credits,dept_name
from course
where credits=2;

select course_id,title,credits,dept_name
from v09_low_credit_courses
order by 
	credits asc,
    dept_name asc;

