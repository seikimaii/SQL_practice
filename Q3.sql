select student.id, student.name, course.name, course.score 
From student, course 
Where student.id = course.id 
Order by student.id, score DESC