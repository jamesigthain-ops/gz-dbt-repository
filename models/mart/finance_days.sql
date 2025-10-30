{{ config(materialized = 'table') }}
SELECT
date_date
,COUNT (orders_id) AS transactions
,SUM (revenue) AS revenue
,AVG(quantity) AS avg_items_basket
,AVG(revenue) AS avg_basket_revenue
,SUM(operational_margin) AS operational_margin
,SUM(purchase_cost) AS purchase_cost
,SUM(shipping_fee) AS shipping_fee
,sum(logcost) AS logcost
,SUM(quantity) AS produc_sold
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date
ORDER BY date_date ASC