SELECT student.name, SUM(course.score) 
From student, course
WHERE student.id = course.id Group By student.name