--CONCATENATE COURSE AND SEMESTER
SELECT concat(course_name, ' - ', semester) AS course_semester
FROM courses

--FIND COURSE WITH LAB ON FRIDAY
SELECT course_id, course_name, lab_time
FROM  courses
WHERE lab_time LIKE 'Friday%';

--UPCOMING ASSIGNMENTS
SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

--COUNTING ASSIGNMENT BY STATUS
SELECT status AS assignment_status, count(*)
FROM assignments
GROUP BY status;

--LONGEST COURSE NAME
SELECT course_name
FROM courses
ORDER by length(course_name) DESC

--UPPECASE COURSE NAME
SELECT upper(course_name)
FROM courses

--ASSIGNMENTS DUE SEPTEMBER
SELECT *
FROM  assignments
WHERE due_date LIKE '-09-%';

--ASSIGNMENT MISSING DUE DATE
SELECT *
FROM assignments
WHERE due_date IS NULL
