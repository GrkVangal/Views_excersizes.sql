drop view if exists v15_instructor_counts;

create view v15_instructor_counts as
select
    dept_name,
    COUNT(ID) as instructor_count
from instructor
group by dept_name;

select
    dept_name,
    instructor_count
from v15_instructor_counts
order by instructor_count desc;

select
    dept_name,
    instructor_count
from v15_instructor_counts
where dept_name = 'Law';

select
    dept_name
from department
where dept_name not in (
    select dept_name
from  v15_instructor_counts
);

