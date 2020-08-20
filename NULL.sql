--/1/
SELECT name FROM teacher WHERE dept IS NULL;
--/2/
SELECT teacher.name, dept.name
FROM teacher JOIN dept
ON (teacher.dept=dept.id)
--/3/
   SELECT teacher.name, dept.name
  FROM teacher LEFT JOIN dept ON teacher.dept = dept.id;

--/04/
SELECT teacher.name, dept.name
  FROM teacher RIGHT JOIN dept ON teacher.dept = dept.id;
-- /05/
SELECT name, COALESCE(mobile, '07986 444 2266') FROM teacher;
--/06/
SELECT teacher.name, COALESCE(dept.name, 'None')
  FROM teacher LEFT JOIN dept ON teacher.dept = dept.id;
---/07/
SELECT COUNT(name), COUNT(mobile) FROM teacher;

--/08/
SELECT dept.name, COUNT(teacher.name)
  FROM teacher RIGHT JOIN dept ON teacher.dept = dept.id
  GROUP BY dept.name;

  --- /09/
SELECT teacher.name, 
 CASE WHEN teacher.dept = 1 OR teacher.dept = 2 THEN 'Sci'
 ELSE 'Art' END
 FROM teacher
 -- /10/
 SELECT name, CASE
  WHEN dept IN (1, 2) THEN 'Sci'
  WHEN dept = 3 THEN 'Art'
  ELSE 'None'
  END category FROM teacher;
