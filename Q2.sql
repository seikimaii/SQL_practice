SELECT course.id, course.score, student.name 
From course, student
Where course.id = student.id AND course.name='JAVA' AND (course.score Between 85 AND 90)