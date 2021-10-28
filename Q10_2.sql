SELECT temp.name, subject, IFNULL(course.score,0) as point
FROM (SELECT student.id, student.name, subject
	  FROM (SELECT DISTINCT course.name as subject 
            FROM course)ss, student)temp
LEFT join course
ON course.name = subject AND course.id = temp.id
ORDER By name