SELECT
  FORMAT_DATE('%A', PARSE_DATE('%Y%m%d', date)) AS day_of_week,
  COUNT(*) AS total_sessions,
  COUNTIF(totals.transactions > 0) AS purchases
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY day_of_week
ORDER BY purchases DESC;
