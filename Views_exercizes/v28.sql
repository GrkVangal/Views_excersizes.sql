drop view if exists v28_courses_and_budget;

create view v28_courses_and_budget as 
select
	course_id,
    title,
    course.dept_name,
	department.budget
from course inner join department
on
	course.dept_name = department.dept_name;
    
    
select 
	course_id,
	title,
	dept_name,
	budget
from v28_courses_and_budget
where budget = '32500000.00';

select 
	course_id,
	title,
	dept_name,
	budget
from v28_courses_and_budget
where dept_name = 'Astronomy';






    