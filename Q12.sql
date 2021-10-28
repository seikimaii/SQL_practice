SELECT course.id, course.score
FROM course, (SELECT course.name, AVG(course.score) as avg_score FROM course
Group by course.name)temp
WHERE course.name = temp.name AND course.score > avg_score
