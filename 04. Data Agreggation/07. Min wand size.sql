SELECT
	magic_wand_creator,
	min(magic_wand_size) AS "Minimum wand size"
FROM
	wizard_deposits
GROUP BY
	magic_wand_creator
ORDER BY
	min(magic_wand_size)
LIMIT
	5
;