drop view if exists v29_student_advisors;

create view v29_student_advisors as 
select
	student.name as student_name,
    instructor.name as advisor_name,
    student.id as student_id,
    instructor.id as advisor_id
from student join advisor 
on
	student.ID = advisor.s_ID
join instructor 
on
	advisor.i_ID = instructor.ID;
    
select *
from v29_student_advisors
where advisor_id =80000
