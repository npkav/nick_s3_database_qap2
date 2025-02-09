-- Nickolas Kavanagh - SD12
-- Semester 3 - Database Programming
-- 2025/02/03 - 2025/02/10


-- Problem 1: University Course Enrollment System


-- Scenario
-- You’re tasked with developing a system to manage university students, professors, courses, and their enrollments.

-- A single student can register for multiple courses
-- A single professor can teach multiple courses
-- A course can only have one professor
-- A course can have multiple students


-- Requirements
-- Create Tables:

-- students: Store the following columns: id (auto-incrementing primary key), first_name (first name of the student), last_name (last name of the student), email (student email), school_enrollment_date (the date when the student enrolled in school)
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    school_enrollment_date DATE
);

-- professors: Store the following columns: id (auto-incrementing primary key), first_name (first name of the professor), last_name (last name of the professor), department (professor’s department)
CREATE TABLE professors (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(100)
);

-- courses: Store the following columns: id (auto-incrementing primary key), course_name (name of the course), course_description (brief description of the course), professor_id (foreign key referencing professors(id))
CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT,
    professor_id INT REFERENCES professors(id)
);

-- enrollments: Store the following columns: student_id (foreign key referencing students(id)), course_id (foreign key referencing courses(id)), enrollment_date (the date of enrollment in the course)
-- Make student_id and course_id a composite primary key.
CREATE TABLE enrollments (
    student_id INT REFERENCES students(id),
    course_id INT REFERENCES courses(id),
    course_enrollment_date DATE,
    PRIMARY KEY (student_id, course_id)
);