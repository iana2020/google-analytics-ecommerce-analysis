SELECT
  FORMAT_DATE('%Y-%m', PARSE_DATE('%Y%m%d', date)) AS month,
  COUNT(*) AS total_sessions,
  COUNTIF(totals.transactions > 0) AS purchases,
  ROUND(SUM(totals.transactionRevenue) / 1000000, 2) AS total_revenue
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY month
ORDER BY month ASC;