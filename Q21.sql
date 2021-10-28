SELECT id, name, score, SUM(score) OVER (partition by name order by id) as acc 
FROM test.course;