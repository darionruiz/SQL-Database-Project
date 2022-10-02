-- This query pulls order information that I use in the daily orders dashboard.

SELECT
o.order_id,
i.item_price,
o.quantity,
i.item_category,
i.item_name,
o.order_time,
a.address1,
a.address2,
a.city,
a.zipcode,
o.delivery

FROM orders AS o

LEFT JOIN items AS i
ON o.item_id = i.item_id

LEFT JOIN addresses AS a
ON o.add_id = a.add_id;
