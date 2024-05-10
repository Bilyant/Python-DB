CREATE OR REPLACE FUNCTION
	difficulty_level (
		level INT
	)
RETURNS VARCHAR(20)
AS
$$
	DECLARE
		result VARCHAR(20);
	BEGIN
	
		IF level <= 40 
		THEN result := 'Normal Difficulty';
		
		ELSIF level BETWEEN 41 AND 60
		THEN result := 'Nightmare Difficulty';
		
		ELSE result := 'Hell Difficulty';
		END IF;
		
		RETURN result;
	END;
$$
LANGUAGE plpgsql;

SELECT
	user_id,
	level,
	cash,
	difficulty_level(level) AS "difficulty_level"
FROM
	users_games
ORDER BY
	user_id;