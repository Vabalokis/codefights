/*Please add ; after each select statement*/
CREATE PROCEDURE suspectsInvestigation2()
BEGIN
	SELECT id,name,surname
    FROM Suspect
    WHERE height <= 170 OR SUBSTRING(surname ,5 ,5) <> "n" OR SUBSTRING(surname ,1 ,3) <> "Gre" OR SUBSTRING(name ,1 ,1) <> "b"
    ORDER BY id asc;
END