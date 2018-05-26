/*Please add ; after each select statement*/
CREATE PROCEDURE mischievousNephews()
BEGIN

SELECT WEEKDAY(mischief_date) as "weekday",mischief_date,author,title
FROM mischief
ORDER BY WEEKDAY(mischief_date),FIELD(author, "Huey", "Dewey", "Louie"),mischief_date,title;


END