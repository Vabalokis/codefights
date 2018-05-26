/*Please add ; after each select statement*/
CREATE PROCEDURE booksCatalogs()
BEGIN

SELECT ExtractValue(xml_doc , '/catalog/*[1]/*[1]') as 'author'
FROM catalogs
ORDER BY author;

END