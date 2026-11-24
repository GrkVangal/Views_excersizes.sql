drop view if exists v10_course_cards;

create view v10_course_cards as
select course_id, title, credits
from course;

show create view v10_course_cards;

select * 
from v10_course_cards;

select title 
from v01_course_cards
order by title asc;