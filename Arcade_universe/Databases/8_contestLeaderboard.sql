/*Please add ; after each select statement*/
CREATE PROCEDURE contestLeaderboard()
BEGIN
	SELECT r.name FROM (SELECT * FROM leaderboard ORDER BY score desc)r LIMIT 5 OFFSET 3;
END