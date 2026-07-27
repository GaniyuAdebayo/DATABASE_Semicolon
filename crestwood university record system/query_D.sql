use crestwood_university;

select f.faculty_first_name, f.faculty_last_name, count(c.faculty_id) as number_of_sections
from faculty as f
left join course_section as c
on f.faculty_id = c.faculty_id
group by f.faculty_id