WITH avg_score(name, avgscr)
AS (
	SELECT course.name, AVG(course.score) as avgscr 
    FROM course Group by course.name
	)

SELECT course.id, course.score
FROM course, avg_score
WHERE course.name = avg_score.name AND course.score > avgscr