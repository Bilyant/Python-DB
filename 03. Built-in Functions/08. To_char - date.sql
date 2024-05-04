SELECT
	first_name,
	last_name,
	TO_CHAR(born, 'YYYY') AS "year"
FROM
	authors;