drop view if exists v13_course_counts;

create view v13_course_counts as
select 
	dept_name,
    count(course_id) as course_count
from course 
group by dept_name;

select
	dept_name,
    course_count
from v13_course_counts
order by course_count desc;

select
	dept_name,
    course_count
from v13_course_counts
where course_count >40;

select
	dept_name,
    course_count
from v13_course_counts
where course_count > 40
order by course_count desc;