/*Please add ; after each select statement*/
CREATE PROCEDURE gradeDistribution()
BEGIN
	
SELECT r.name as "Name",r.id as "ID"
FROM (SELECT name,id FROM Grades 
      WHERE (((Midterm1*0.25)+(Midterm2*0.25)+(Final*0.5)) < Final) 
      AND        (((Midterm1*0.5)+(Midterm2*0.5)) < Final))r
ORDER BY SUBSTRING(name FROM 1 FOR 3),id;

END