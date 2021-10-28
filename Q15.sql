SELECT student.id, student.name, SUM(course.score) 
From student, course
WHERE student.id = course.id group by student.id