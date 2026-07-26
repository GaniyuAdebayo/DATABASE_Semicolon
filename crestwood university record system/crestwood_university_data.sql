use crestwood_university;

INSERT INTO student (student_first_name, student_last_name, student_date_of_birth, student_email_address, student_major) VALUES
	('Ganiyu', 'Adebayo', '1999-12-12', 'ganiyu.adebayo@gmail.com', 'Chemical Engineering'),
	('Emeka', 'Nwosu', '2002-11-02', 'emeka.nwosu@example.com', 'Mathematics'),
    ('Bisi', 'Adeyemi', '2004-01-20', 'bisi.adeyemi@example.com', 'History'),
    ('Tunde', 'Bakare', '2003-07-09', 'tunde.bakare@example.com', 'Computer Science'),
    ('Ngozi', 'Eze', '2002-03-30', 'ngozi.eze@example.com', 'Mathematics');
    
    
INSERT INTO course (course_code, course_title, course_credit_hour, course_description)
VALUES ('CHE-404', 'Chemical Engineering Thermodynamics', 3, 'applies the principles of energy, mass, conservation, and entropy to design and optimize industrial processes'),
	('CSC-201', 'Advanced Databases', 3, 'Advanced database design and optimization'),
    ('MTH-301', 'Linear Algebra', 4, 'Vectors, matrices, and linear transformations'),
    ('HST-301', 'World History', 3, 'Survey of major historical events'),
    ('CHE-300', 'Intro to Chemical Engineering', 3, 'Foundational principles of chemical engineering'),
    ('CSC-200', 'Intro to Computer Science', 3, 'Foundational programming and computing concepts'),
    ('MTH-201', 'Calculus II', 4, 'Continuation of differential and integral calculus'),
    ('HST-201', 'Intro to World History', 3, 'Foundational survey of world history'),
    ('MTH-101', 'Calculus I', 4, 'Limits, derivatives, and basic integration'),
    ('CSC-101', 'Introduction to Databases', 3, 'Fundamentals of relational databases'),
    ('HST-101', 'World Civilizations', 3, 'Broad survey of world civilizations');
    

INSERT INTO course_prerequisite (course_code, prerequisite)
VALUES ('CHE-404', 'CHE-300'),
	('CSC-201', 'CSC-200'),
	('MTH-301', 'MTH-201'),
	('HST-301', 'HST-201'),
	('MTH-301', 'MTH-101');

INSERT INTO faculty (faculty_first_name, faculty_last_name, faculty_phone_number, faculty_email_address, employment_status)
VALUES
    ('Chidi', 'Bello', '08031234567', 'chidi.bello@crestwood.edu', 'permanent'),
    ('Amara', 'Musa', '08039876543', 'amara.musa@crestwood.edu', 'permanent'),
    ('Femi', 'Adeyemi', '08051122334', 'femi.adeyemi@crestwood.edu', 'temporary'),
    ('Ijeoma', 'Chukwu', '08067788990', 'ijeoma.chukwu@crestwood.edu', 'permanent');
    
INSERT INTO course_section (course_code, semester, session_year, faculty_id, lecture_room, max_enrollment)
VALUES
    ('CSC-101', 'Fall', 2025, 1, 'Room A', 30),
    ('CSC-101', 'Spring', 2026, 2, 'Room B', 25),
    ('CSC-201', 'Fall', 2025, 2, 'Room C', 20),
    ('MTH-101', 'Fall', 2025, 3, 'Room D', 35),
    ('MTH-101', 'Spring', 2026, 3, 'Room D', 35),
    ('HST-101', 'Spring', 2026, 4, 'Room E', 40);
    
INSERT INTO student_course_registration (student_id, course, date_registered, grade, registration_status)
VALUES
    (1, 4, '2025-08-20', NULL, 'enrolled'),
    (1, 6, '2026-01-10', NULL, 'enrolled'),
    (2, 1, '2025-08-18', 'A', 'completed'),
    (2, 3, '2025-08-18', 'B', 'completed'),
    (3, 1, '2025-08-19', 'C', 'completed'),
    (3, 4, '2025-08-19', NULL, 'withdrawn'),
    (4, 1, '2025-08-20', 'B', 'completed'),
    (4, 2, '2026-01-12', NULL, 'enrolled'),
    (5, 3, '2025-08-21', 'A', 'completed'),
    (5, 5, '2026-01-11', NULL, 'enrolled');