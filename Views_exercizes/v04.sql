create view  v04_student_progress as
select  ID, name, dept_name, tot_cred
from student;

select ID, name, dept_name, tot_cred
from v04_student_progress
where tot_cred = 80;

select ID, name, dept_name, tot_cred
from v04_student_progress
where tot_cred = 120;

select ID, name, dept_name, tot_cred
from v04_student_progress
order by tot_cred desc;

select COUNT(*) as students_80_credits
from v04_student_progress
where tot_cred = 80;

select COUNT(*) as students_120_credits
from v04_student_progress
where tot_cred = 120;