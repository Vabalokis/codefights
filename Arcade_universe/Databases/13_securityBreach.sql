/*Please add ; after each select statement*/
CREATE PROCEDURE securityBreach()
BEGIN

SELECT first_name,second_name,attribute
FROM users
WHERE attribute LIKE BINARY CONCAT('__%', first_name ,'\_',second_name ,'%');

END