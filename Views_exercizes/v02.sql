create view v02_high_credit_course as 
select course_id, title, dept_name, credits
from course
where credits = 4;


select
    course_id,
    title,
    dept_name,
    credits
from v02_high_credit_course
where dept_name = 'Civil Eng.'
order by 
	credits desc,
    title asc;