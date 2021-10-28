SELECT student.id, course.score, avg_score
FROM student, course, (SELECT course.name, AVG(course.score) as avg_score FROM course
Group by course.name)temp
WHERE student.id = course.id AND course.name = temp.name AND course.score > avg_score