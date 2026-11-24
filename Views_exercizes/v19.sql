drop view if exists v19_departments_per_building;

create view v19_departments_per_building as
select
    building,
    COUNT(dept_name) as department_count
from  department
group by building;

select
    building,
    department_count
from v19_departments_per_building
order by department_count desc, building asc;

select COUNT(distinct building) as distinct_buildings
from department;

select COUNT(*) as building_groups
from v19_departments_per_building;