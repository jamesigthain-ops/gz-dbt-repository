SELECT
    EXTRACT(MONTH FROM date_date) AS month_date,

    SUM(click) AS click,
    SUM(transactions) AS transactions,
    SUM(revenue) AS revenue,

    AVG(avg_items_basket) AS avg_items_basket,
    AVG(avg_basket_revenue) AS avg_basket_revenue,

    SUM(operational_margin) AS operational_margin,
    SUM(purchase_cost) AS purchase_cost,
    SUM(shipping_fee) AS shipping_fee,
    SUM(logcost) AS logcost,
    SUM(produc_sold) AS produc_sold,
    SUM(ads_margin) AS ads_margin

FROM {{ ref('finance_campaigns_day') }}
GROUP BY month_date
ORDER BY month_date DESC
