-- This query pulls from the stock1 view and I use the results in the Inventory Dashboard

SELECT
s2.ing_name,
s2.ordered_weight,
ing.ing_weight * inv.quantity AS total_inv_weight,
(ing.ing_weight * inv.quantity) - s2.ordered_weight AS remaining_weight

FROM
	(SELECT
	ing_id,
	ing_name,
	sum(ordered_weight) AS ordered_weight

	FROM
	stock1

	GROUP BY
	ing_id,
	ing_name) AS s2

LEFT JOIN inventory AS inv
ON inv.item_id = s2.ing_id

LEFT JOIN ingredients AS ing
ON ing.ing_id = s2.ing_id
