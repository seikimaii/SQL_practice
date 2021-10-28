SELECT student.id, student.name, course.name, course.score 
FROM student, course
WHERE student.id = course.id 
ORDER BY course.name, score DESC