CREATE VIEW
	view_wizard_deposits_with_expiration_date_before_1983_08_17
AS SELECT
	CONCAT(first_name, ' ', last_name) AS "wizard_name",
	deposit_start_date AS "start date",
	deposit_expiration_date AS "expiration date",
	deposit_amount AS "amount"
FROM
	wizard_deposits
WHERE
	deposit_expiration_date <= '1983-08-17'
GROUP BY
	wizard_name,
	deposit_start_date,
	deposit_expiration_date,
	deposit_amount
ORDER BY
	deposit_expiration_date
;