create view v01_course_catalog as
select
	course_id,
    title,
    dept_name,
    credits
from course;

select
	course_id,
    title,
    dept_name,
    credits
from v01_course_catalog
order by title asc;