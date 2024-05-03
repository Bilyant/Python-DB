SELECT
	first_name,
	last_name,
	CONCAT(SUBSTRING(first_name, 1, 1), SUBSTRING(last_name, 1, 1)) AS "Initials"
FROM
	authors;
