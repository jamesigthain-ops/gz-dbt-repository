WITH produc_sales_join AS (
SELECT
orders_id
,products_id
,date_date
,revenue
,quantity  
,quantity * purchase_price AS purchase_cost

FROM {{ ref('stg_raw__sales') }}
INNER JOIN {{ ref('stg_raw__product') }}
USING (products_id)
)



SELECT
*
,revenue - purchase_cost AS margin
,{{ margin_percent('revenue', 'purchase_cost', 2) }} AS margin_pct_2_dec
FROM produc_sales_join

