use crestwood_university;

select course.course_title, count(c.course_code)
from course_prerequisite as c
left join course
on c.course_code = course.course_code
group by c.course_code
having count(c.course_code) >= 2
order by count(c.course_code);
