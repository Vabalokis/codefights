CREATE PROCEDURE testCheck()
    SELECT id, IF (correct_answer OR given_answer IS NULL , 'no answer' , IF(correct_answer = given_answer , 'correct' , 'incorrect')) AS checks
    FROM answers
    ORDER BY id;
