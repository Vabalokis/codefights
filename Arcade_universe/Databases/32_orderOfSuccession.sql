/*Please add ; after each select statement*/
CREATE PROCEDURE orderOfSuccession()
BEGIN

SELECT CONCAT(IF(gender = 'M','King','Queen'),' ',name) as name
FROM Successors
ORDER BY birthday asc;

END