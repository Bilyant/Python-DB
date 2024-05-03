SELECT
	first_name,
	last_name,
	REPLACE(email, SUBSTRING(email, '@[a-z]+.[a-z]'), '****')
FROM
	friends;