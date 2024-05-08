SELECT
	b.booking_id,
	c.first_name AS "customer_name"
FROM
	customers AS c
CROSS JOIN
	bookings as b
ORDER BY
	c.first_name
;