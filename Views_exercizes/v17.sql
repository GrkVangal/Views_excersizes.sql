drop view if exists v17_course_credit_totals;

create view v17_course_credit_totals as
select
    dept_name,
    COUNT(course_id) as course_count,
    SUM(credits) as total_course_credits
from course
group by dept_name;

select
    dept_name,
    course_count,
    total_course_credits
from v17_course_credit_totals
order by total_course_credits desc;

select
    dept_name,
    course_count,
    total_course_credits
from v17_course_credit_totals
where dept_name = 'Law';