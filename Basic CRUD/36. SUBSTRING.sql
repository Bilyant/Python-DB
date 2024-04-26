CREATE VIEW
	view_initials
AS SELECT
	-- SUBSTRING(first_name, FROM 1 TO 2)
	SUBSTRING(first_name, 1, 2) AS "initial",
	last_name
FROM
	employees
ORDER BY
	last_name;