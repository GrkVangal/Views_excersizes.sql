drop view if exists v20_student_credit_range;

create view v20_student_credit_range as
select
    dept_name,
    COUNT(ID) as students,
    MIN(tot_cred )as min_credits,
    MAX(tot_cred) as max_credits
from student
group by dept_name;

select
    dept_name,
    students,
    min_credits,
    max_credits,
    (max_credits - min_credits) as spread
from v20_student_credit_range
order by max_credits desc;

show create view v20_student_credit_range;

select *
from v20_student_credit_range;