/*Please add ; after each select statement*/
CREATE PROCEDURE habitatArea()
BEGIN
    SET @g = (SELECT GROUP_CONCAT(DISTINCT x ,' ', y  ORDER BY x ASC SEPARATOR ',') FROM places); 
    SET @v = CONCAT('MULTIPOINT' ,'(' , @g ,')');
    SELECT Area(ST_ConvexHull(ST_GeomFromText(@v))) as 'area'
    FROM places
    LIMIT 1;
END