WITH 
course_subject(subject)
AS (SELECT DISTINCT course.name as subject 
	FROM course),
over_view(id, name, subject)
AS(SELECT student.id, student.name, subject
   FROM student, course_subject
	)
SELECT over_view.name, subject, IFNULL(course.score,0) as point
FROM over_view 
LEFT JOIN course
ON course.name = subject AND course.id = over_view.id
ORDER By over_view.name;