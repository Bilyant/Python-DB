SELECT
	t.town_id,
	t.name,
	a.address_text
FROM
	addresses as a
		INNER JOIN
	towns as t
		USING
	(town_id)
WHERE
	t.name IN 
	(
		'San Francisco',
		'Sofia',
		'Carnation'
	)
ORDER BY
	t.town_id,
	a.address_id
;