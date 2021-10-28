SELECT student.id, student.name, SUM(course.score) 
FROM student, course 
WHERE student.id = course.id
Group By student.id