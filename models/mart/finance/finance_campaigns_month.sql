SELECT
  FORMAT_DATE('%Y-%m', date_date) AS datemonth,
  ROUND(SUM(ads_margin), 2) AS ads_margin,
  ROUND(AVG(average_basket), 1) AS average_basket,
  ROUND(SUM(operational_margin), 0) AS operational_margin,
  ROUND(SUM(ads_cost), 0) AS ads_cost,
  SUM(ads_impression) AS ads_impression,
  SUM(ads_clicks) AS ads_clicks,
  SUM(quantity) AS quantity,
  SUM(revenue) AS revenue,
  SUM(purchase_cost) AS purchase_cost,
  SUM(margin) AS margin,
  SUM(shipping_fee) AS shipping_fee,
  SUM(logcost) AS logcost,
  SUM(ship_cost) AS ship_cost
FROM {{ ref("finance_campaigns_day") }}
GROUP BY datemonth
ORDER BY datemonth DESC