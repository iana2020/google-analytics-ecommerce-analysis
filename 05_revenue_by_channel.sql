SELECT
  trafficSource.medium AS marketing_channel,
  COUNT(*) AS total_sessions,
  COUNTIF(totals.transactions > 0) AS purchases,
  ROUND(COUNTIF(totals.transactions > 0) / COUNT(*) * 100, 2) AS conversion_rate_pct,
  ROUND(SUM(totals.transactionRevenue) / 1000000, 2) AS total_revenue,
  ROUND(SUM(totals.transactionRevenue) / 1000000 / 
  COUNTIF(totals.transactions > 0), 2) AS avg_order_value
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY marketing_channel
ORDER BY total_revenue DESC;