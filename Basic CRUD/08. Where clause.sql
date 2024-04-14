SELECT
	first_name,
	last_name
FROM 
	employees
WHERE
	department_id = 3

-- *****************

SELECT
	id,
	concat(first_name, ' ', last_name) AS full_name,
	job_title,
	salary
FROM
	employees
WHERE
	salary > 1000
	AND id <> 3
	-- OR
ORDER BY id