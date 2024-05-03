UPDATE
	cities
SET
	name = CONCAT(UPPER(LEFT(name, 1)),
				 RIGHT(name, -1))
RETURNING name;