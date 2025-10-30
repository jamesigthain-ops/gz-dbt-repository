SELECT
*
,operational_margin - ads_cost AS ads_margin

FROM {{ ref('int_campaigns_day') }}
LEFT JOIN {{ ref('finance_days') }}
USING(date_date)
ORDER BY date_date