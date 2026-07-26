use crestwood_university;

SELECT student_first_name, student_last_name, student_major, count(s.student_id) as number_of_courses
FROM student
LEFT JOIN student_course_registration as s
ON student.student_id = s.student_id and registration_status = 'enrolled'
group by student.student_id;