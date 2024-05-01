INSERT INTO persons 
	(first_name, last_name)
SELECT
	first_name,
	last_name
FROM
	employees;


CREATE TABLE person
AS
SELECT
	id,
	first_name,
	last_name
FROM
	employees