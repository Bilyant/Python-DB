SELECT
	department_id,
	MIN(salary) AS "Min salary"
FROM
	employees
GROUP BY
	department_id
ORDER BY
	department_id;