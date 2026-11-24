drop view if exists v14_student_counts;

create view v14_student_counts as
select
    dept_name,
    COUNT(ID) as student_count
from student
group by dept_name;

select
    dept_name,
    student_count
from v14_student_counts
order by student_count desc;

select
    dept_name,
    student_count
from v14_student_counts
where student_count > 50
order by student_count desc;

select COUNT(*) as total_students
from student;

select SUM(student_count) as sum_of_students
from v14_student_counts;