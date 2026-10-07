--TASK 1 Display all students enrolled in a particular course.
SELECT
students.name,
Course.course_name
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN Course
ON enrollments.course_id = Course.course_id
WHERE Course.course_name = 'CIT6';

--Task 2 Display all courses taken by a particular student.
SELECT
students.name,
Course.course_name
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN Course
ON enrollments.course_id = Course.course_id
WHERE students.name = 'Manalo, Stephen';

--Task 3 Count the number of students enrolled in each course.
SELECT
    Course.course_name,
    COUNT(enrollments.student_id) AS number_of_students
FROM Course
LEFT JOIN enrollments
    ON Course.course_id = enrollments.course_id
GROUP BY Course.course_id, Course.course_name;

--Task 4 - Course with the highest number of students
SELECT
    Course.course_name,
    COUNT(enrollments.student_id) AS number_of_students
FROM Course
LEFT JOIN enrollments
    ON Course.course_id = enrollments.course_id
GROUP BY Course.course_id, Course.course_name
ORDER BY number_of_students DESC
LIMIT 1;

--Task 5 Display students alphabetically.
SELECT
students.name,
Course.course_name
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN Course
ON enrollments.course_id = Course.course_id
ORDER BY students.name ASC;

--TASK 6 Display the total number of enrollments.
SELECT COUNT(*) AS total_enrollments
FROM enrollments;