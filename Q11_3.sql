WITH score_summing(id, name, score_sum)
AS(
	SELECT course.id, student.name, SUM(score) as score_sum 
	FROM student, course
	WHERE student.id = course.id Group by course.id
)
SELECT id, name, score_sum FROM score_summing 
WHERE score_sum = (SELECT MAX(score_sum) FROM score_summing) 