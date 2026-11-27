drop view if exists v30_teaching_directory;

create view v30_teaching_directory as
select
	instructor.ID AS instructor_id,
    instructor.name AS instructor_name,
    course.title,
	teaches.semester,
	teaches.year
from instructor inner join teaches
on 
	instructor.ID = teaches.ID
join course
on 
	teaches.course_id = course.course_id;
    
select * 
from v30_teaching_directory
where year ='2023'
order by year desc,instructor_name asc,title asc;
    

	