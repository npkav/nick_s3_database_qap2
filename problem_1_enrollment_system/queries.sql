-- Nickolas Kavanagh - SD12
-- Semester 3 - Database Programming
-- 2025/02/03 - 2025/02/10


-- Retrieve the full names (by full name we mean the first name and last name joined into one column, separated by a space) of all students enrolled in “Physics 101”.
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM students
WHERE id IN (SELECT student_id FROM enrollments WHERE course_id = 1);


-- Retrieve a list of all courses along with the professor’s full name who teaches each course.
SELECT c.course_name, CONCAT(p.first_name, ' ', p.last_name) AS professor_name
FROM courses c
JOIN professors p ON c.professor_id = p.id;


-- Retrieve all courses that have students enrolled in them.
SELECT DISTINCT c.course_name
FROM courses c
JOIN enrollments e ON c.id = e.course_id;


-- Update one of the student’s emails.
UPDATE students SET email = 'm.simpson@springfield.gov' WHERE id = 2;
SELECT * FROM students WHERE id = 2;


-- Remove a student from one of their courses.
SELECT * FROM enrollments WHERE student_id = 9 AND course_id = 1;
DELETE FROM enrollments WHERE student_id = 9 AND course_id = 1; 
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM students
WHERE id IN (SELECT student_id FROM enrollments WHERE course_id = 1);