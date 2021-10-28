SELECT student.name, course.name, course.score 
FROM student, course 
WHERE student.id = course.id