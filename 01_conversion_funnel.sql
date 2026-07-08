SELECT
  COUNT(*) AS total_sessions
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`;

SELECT
  COUNT(*) AS total_sessions,
  COUNTIF(totals.pageviews > 1) AS engaged_sessions,
  COUNTIF(totals.transactions > 0) AS sessions_with_purchase,
  ROUND(COUNTIF(totals.transactions > 0) / COUNT(*) * 100, 2) AS conversion_rate_pct
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`;
