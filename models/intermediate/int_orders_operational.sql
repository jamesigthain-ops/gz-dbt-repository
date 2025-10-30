
WITH order_margin_ship AS(
SELECT
*
FROM {{ ref('int_orders_margin') }}
INNER JOIN {{ ref('stg_raw__ship') }}
USING(orders_id)
)


SELECT
*
,margin + shipping_fee - logcost - ship_cost AS operational_margin
FROM order_margin_ship