SELECT student.name, course.name, course.score 
FROM student 
LEFT JOIN course ON student.id = course.id