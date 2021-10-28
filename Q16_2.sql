SELECT name, score_sum From (SELECT course.id, student.name, SUM(score) as score_sum 
							 FROM student, course
							 WHERE student.id = course.id Group by course.id
                             )ss
WHERE score_sum = (SELECT max(score_sum) FROM (SELECT course.id, student.name, SUM(score) as score_sum 
											   FROM student, course
											   WHERE student.id = course.id Group by course.id)ss
                                               )
