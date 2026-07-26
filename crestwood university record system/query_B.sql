use crestwood_university;

select c.course_title, f.faculty_first_name, f.faculty_last_name, count(r.student_id) as number_of_students
from course_section
LEFT JOIN course as c
ON course_section.course_code = c.course_code
LEFT JOIN student_course_registration as r
ON course_section.course_section_id = r.course
LEFT JOIN faculty as f
ON course_section.faculty_id = f.faculty_id
WHERE semester = 'Fall' and session_year = '2025'
GROUP BY course_section.course_section_id
order by number_of_students desc;