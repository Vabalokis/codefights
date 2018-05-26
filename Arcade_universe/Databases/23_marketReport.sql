/*Please add ; after each select statement*/
CREATE PROCEDURE marketReport()
BEGIN

(SELECT country,COUNT(country) as 'competitors' FROM foreignCompetitors GROUP BY country)
UNION
(SELECT 'Total:',COUNT(country) as 'competitors' FROM foreignCompetitors);



END