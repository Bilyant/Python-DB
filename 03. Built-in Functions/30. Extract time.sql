SELECT
	EXTRACT('Year' from booked_at) AS "YEAR",
	EXTRACT('Month' from booked_at) AS "MONTH",
	EXTRACT('Day' from booked_at) AS "DAY",
	EXTRACT('Hour' from booked_at AT TIME ZONE 'UTC') AS "HOUR",
	EXTRACT('Minute' from booked_at) AS "MINUTE",
	CEILING(EXTRACT('Second' from booked_at)) AS "SECOND"
FROM
	bookings;