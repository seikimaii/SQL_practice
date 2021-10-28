SELECT student.name, score_sum FROM student
LEFT JOIN (SELECT id, SUM(score) as score_sum FROM course Group By id)temp
ON student.id = temp.id
Order by score_sum DESC
LIMIT 1