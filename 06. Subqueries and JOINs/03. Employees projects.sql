SELECT
	emp.employee_id AS "Employee id",
	CONCAT(emp.first_name, ' ', emp.last_name) AS "Full Name",
	proj.project_id AS "Project id",
	proj.name as "Project name"
FROM
	employees AS emp
		JOIN
	employees_projects as emp_proj
	USING (employee_id)
		JOIN
	projects as proj
	USING (project_id)
WHERE
	project_id = 1
;