SELECT
  device.deviceCategory AS device_type,
  COUNT(*) AS total_sessions,
  COUNTIF(totals.transactions > 0) AS purchases,
  ROUND(COUNTIF(totals.transactions > 0) / COUNT(*) * 100, 2) AS conversion_rate_pct
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY device_type
ORDER BY conversion_rate_pct DESC;