CREATE OR REPLACE FUNCTION
	fn_full_name (
	 	first_name VARCHAR(50),
		last_name VARCHAR(50)
	 )
RETURNS VARCHAR(100) AS
$$
	DECLARE
		full_name VARCHAR(100);
	BEGIN
		IF first_name IS NULL AND last_name IS NULL
		THEN full_name := NULL;
		
		ELSIF first_name IS NULL
		THEN full_name := INITCAP(last_name);
		
		ELSIF last_name IS NULL
		THEN full_name := INITCAP(first_name);
		
		ELSE full_name := 
			CONCAT(INITCAP(first_name), ' ', INITCAP(last_name));
		END IF;
		RETURN full_name;
	END;
$$
LANGUAGE plpgsql;

SELECT fn_full_name('soft', 'uni');