select course.id, course.name, course.score, student.name 
From course, student 
where course.score>=90 AND student.id = course.id