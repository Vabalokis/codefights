/*Please add ; after each select statement*/
CREATE PROCEDURE combinationLock()
BEGIN

SELECT round(exp(sum(log(CHAR_LENGTH(characters))))) as 'combinations'
FROM discs;

END