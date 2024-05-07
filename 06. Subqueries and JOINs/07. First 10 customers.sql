=SELECT
	b.booking_id,
	b.starts_at::date,
	b.apartment_id,
	CONCAT(c.first_name, ' ', c.last_name) AS "customer_name"
FROM
	customers AS c
		LEFT JOIN
	bookings AS b
		ON
	c.customer_id = b.customer_id
ORDER BY
	CONCAT(c.first_name, ' ', c.last_name)
LIMIT
	10
;