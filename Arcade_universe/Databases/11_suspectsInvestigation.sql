/*Please add ; after each select statement*/
CREATE PROCEDURE suspectsInvestigation()
BEGIN
	SELECT id,name,surname
    FROM Suspect
    WHERE SUBSTRING(name, 1, 1)="B" AND SUBSTRING(surname, 1, 3)="Gre" AND SUBSTRING(surname, 5, 5)="n" AND height<=170
    ORDER BY id;
END