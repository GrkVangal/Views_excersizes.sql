drop view if exists v16_average_progress;

create view v16_average_progress as
select
    dept_name,
    avg(tot_cred) as avg_credits,
    COUNT(ID) asstudents
from student
group by dept_name;

select
    dept_name,
    avg_credits
from v16_average_progress
order by avg_credits desc;

select
    dept_name,
    ROUND(avg_credits, 2) as avg_credits
from v16_average_progress
order by avg_credits desc;