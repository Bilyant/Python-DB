CREATE FUNCTION
	fn_count_employees_by_town (
		town_name VARCHAR(20)
	)
RETURNS
	INT AS
$$
		DECLARE
			count_employees INT;
		BEGIN		
			SELECT 
				count(t.name)
			FROM 
				employees AS e
			JOIN
				addresses AS a
			USING
				(address_id)
			JOIN
				towns AS t
			USING
				(town_id)
			WHERE
				t.name = town_name
			INTO count_employees;
		RETURN count_employees;
	END
$$
LANGUAGE plpgsql;