SELECT
	COUNT(*)
FROM
	customers AS c
INNER JOIN
	bookings AS b
USING
	(customer_id)
WHERE
	c.last_name LIKE '%Hahn%'
;