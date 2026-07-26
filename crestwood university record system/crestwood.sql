use crestwood_university;

create table student(
	student_id serial primary key,
    student_first_name varchar(50) not null,
    student_last_name varchar(50) not null,
    student_date_of_birth date not null,
    student_email_address varchar (70) not null unique,
    student_major varchar(50) not null
);

create table faculty(
	faculty_id serial primary key,
    faculty_first_name varchar(50) not null,
    faculty_last_name varchar(50) not null,
    faculty_phone_number varchar (16) not null unique,
    faculty_email_address varchar(50) not null unique,
    employment_status enum('permanent', 'temporary') default 'permanent'
);

create table course(
	course_code varchar(7) unique primary key not null,
    course_title varchar(50) unique not null,
    course_credit_hour int not null,
    course_description varchar(150) not null
);

create table course_prerequisite(
	prerequisite_id serial primary key,
	course_code varchar(7) not null references course(course_code),
    prerequisite varchar(7) not null references course(course_code),
    UNIQUE (course_code, prerequisite)
);

create table course_section(

	course_section_id SERIAL primary key,
	course_code varchar(7) references course(course_code),
    semester enum('Fall', 'Spring', 'Winter') not null,
    session_year year not null,
    faculty_id BIGINT UNSIGNED references faculty(faculty_id),
    lecture_room varchar(10) not null,
    max_enrollment int not null
);

create table student_course_registration(
	registration_id serial primary key,
    student_id BIGINT UNSIGNED not null references student(student_id),
	course BIGINT UNSIGNED not null references course_section(course_section_id),
    date_registered date not null,
    grade char,
    registration_status enum('enrolled', 'completed', 'withdrawn') default 'enrolled'
);
 