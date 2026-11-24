drop view if exists v08_course_search;

create view v08_course_search as
select course_id, title, dept_name , credits
from course;

select course_id, title, dept_name 
from v08_course_search
where title like '%Database%';

select course_id, title, dept_name 
from v08_course_search
where title like '%System%';