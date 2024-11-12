##following are tests

SELECT * FROM courses;

SELECT * FROM assignments
LIMIT 10;

SELECT min(due_date) FROM assignments;

SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMP1234'
  AND due_date < '2024-12-31'
ORDER BY due_date;

##earliest assignment due date
  
SELECT min(due_date) 
FROM assignments

## lastes assignment due date
SELECT max(due_date) 
FROM assignments

 ## assignment due on a specific date 
SELECT course_id, title
FROM assignments
WHERE due_date = '2024-10-08'

## assignments due october
  
SELECT title,  due_date
FROM assignments
WHERE course_id LIKE '2024-10%'

## i realized it need only due date 

SELECT  title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%'

## most recent due date

SELECT  max(due_date)
FROM assignments
WHERE status = 'Completed'	
