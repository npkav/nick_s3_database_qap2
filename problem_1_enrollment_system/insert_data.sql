-- Nickolas Kavanagh - SD12
-- Semester 3 - Database Programming
-- 2025/02/03 - 2025/02/10


-- Problem 1: University Course Enrollment System

-- Insert Data:

-- Insert at least 5 students, 4 professors, and 3 courses.
-- Enroll multiple students in different courses, making sure there are at least 5 enrollments in total.

INSERT INTO students (first_name, last_name, email, school_enrollment_date) VALUES
('Homer', 'Simpson', 'h_simpson@springfieldnuclear.com', '2025-09-03'),
('Marge', 'Simpson', 'marge@redblazer.com', '2025-09-03'),
('Peter', 'Griffin', 'pgriffin@pawtucketbrewery.com', '2025-09-05'),
('Lois', 'Griffin', 'lois@pewterschmidt.com', '2025-09-05'),
('Beth', 'Smith', 'beth.smith@stequis.com', '2025-09-03'),
('Jerry', 'Smith', 'jerry@hungryforapples.com', '2025-09-02'),
('Bob', 'Belcher', 'bob@bobsburgers.com', '2025-09-05'),
('Linda', 'Belcher', 'linda@bobsburgers.com', '2025-09-05'),
('Stan', 'Smith', 'stan.smith@cia.gov', '2025-09-01'),
('Francine', 'Smith', 'francine.smith@channel3.com', '2025-09-01');


INSERT INTO professors (first_name, last_name, department) VALUES
('Hubert', 'Farnsworth', 'Physics'),
('John', 'Zoidberg', 'Biology'),
('Seymour', 'Skinner', 'Education'),
('Edna', 'Krabappel', 'Literature'),
('Rick', 'Sanchez', 'Science');


INSERT INTO courses (course_name, course_description, professor_id) VALUES
('Physics 300', 'Good news everyone!', 1),
('Marine Biology', 'Why not Zoidberg?', 2),
('Classroom Management', 'Principle Skinner approves', 3),
('Creative Writing', 'Ha!', 4),
('Theoretical Physics', 'The universe is a simulation', 5);


INSERT INTO enrollments (student_id, course_id, course_enrollment_date) VALUES
(1, 1, '2025-09-08'),
(2, 4, '2025-09-10'),
(3, 3, '2025-09-09'),
(4, 2, '2025-09-11'),
(5, 1, '2025-09-12'),
(6, 2, '2025-09-08'),
(7, 3, '2025-09-10'),
(8, 4, '2025-09-09'),
(9, 5, '2025-09-11'),
(10, 1, '2025-09-12'),
(1, 2, '2025-09-08'),
(2, 3, '2025-09-10'),
(3, 4, '2025-09-09'),
(4, 5, '2025-09-11'),
(5, 2, '2025-09-12'),
(6, 3, '2025-09-08'),
(7, 4, '2025-09-10'),
(8, 5, '2025-09-09'),
(9, 1, '2025-09-11'),
(10, 2, '2025-09-12');