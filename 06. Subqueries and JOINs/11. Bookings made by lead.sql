SELECT
	b.apartment_id,
	b.booked_for,
	c.first_name,
	c.country
FROM
	customers AS c
INNER JOIN
	bookings AS b
USING
	(customer_id)
WHERE
	c.job_type LIKE '%Lead%'
;