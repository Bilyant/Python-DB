SELECT
	*
FROM
	departments AS dep
JOIN
	employees AS emp
		ON
	dep.id = emp.department_id;
