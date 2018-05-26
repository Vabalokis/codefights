/*Please add ; after each select statement*/
CREATE PROCEDURE nullIntern()
BEGIN

SELECT COUNT(*) as 'number_of_nulls'
FROM departments
WHERE TRIM(LOWER(description)) = 'null'
OR TRIM(LOWER(description)) = 'nil' 
OR TRIM(LOWER(description)) = '-' 
OR description IS NULL; 
   
END


