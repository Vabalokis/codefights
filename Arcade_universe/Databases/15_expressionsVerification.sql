/*Please add ; after each select statement*/
CREATE PROCEDURE expressionsVerification()
BEGIN
	SELECT r.id,r.a,r.b,r.operation,r.c
    FROM (SELECT id,a,b,operation,c,
               CASE 
               WHEN operation = '*' THEN a * b
               WHEN operation = '/' THEN a / b
               WHEN operation = '-' THEN a - b
               ELSE a + b
               END AS 'art'
          FROM expressions)r
    WHERE art=c
    ORDER BY id;
END