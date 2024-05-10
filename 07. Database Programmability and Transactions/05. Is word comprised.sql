CREATE OR REPLACE FUNCTION
	fn_is_word_comprised (
		set_of_letters VARCHAR(50),
		word VARCHAR(50)
	)
RETURNS VARCHAR AS
$$		
	BEGIN
		RETURN TRIM(LOWER(set_of_letters) FROM LOWER(word)) = '';
	END;
$$
LANGUAGE plpgsql;
 
SELECT fn_is_word_comprised('ois tmiah%f', 'Sofia');
SELECT fn_is_word_comprised('ois tmiah%f', 'halves');
SELECT fn_is_word_comprised('papopep', 'toe');