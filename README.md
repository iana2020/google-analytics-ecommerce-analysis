# Google Merchandise Store - Ecommerce Analysis

## About This Project
I'm an aspiring junior data analyst currently building my portfolio 
after completing my Google Data Analytics Certificate. This is my 
second project and I chose this dataset because it uses real customer 
behaviour data from an actual ecommerce store and not a textbook 
exercise. Every query I wrote was trying to answer a genuine business 
question rather than just practising syntax.

## The Business Questions I Explored
- What percentage of visitors actually buy something?
- Which marketing channels drive the most revenue?
- Do mobile users behave differently to desktop users?
- Which days of the week see the most purchases?
- How did revenue trend across the year?

## Tools Used
- BigQuery (SQL)
- Google Analytics Public Dataset

## Key Findings
- Overall conversion rate was 1.28% — sitting at the lower end of 
  the industry standard of 1–3%
- Direct traffic generated 77% of total revenue despite being only 
  41% of sessions
- Mobile accounts for 23% of traffic but only 7% of purchases — 
  the biggest conversion opportunity for this business
- CPM display ads had the highest average order value at $555 per 
  transaction
- Purchasing is heavily weekday driven — Monday alone accounts for 
  18% of all purchases
- Referral and affiliate channels generated almost no revenue despite 
  bringing in large volumes of traffic

## What I Learned
This project taught me that good analysis isn't just about writing 
correct SQL(that's important but there's more to it)
it's about asking the right questions and understanding 
what the numbers mean for a real business. The most surprising finding 
was how poorly referral and affiliate channels performed despite their 
high traffic volumes.

## Files in This Repository
| File | Description |
|------|-------------|
| 01_conversion_funnel.sql | Overall session to purchase conversion rate |
| 02_channel_analysis.sql | Conversion rate by marketing channel |
| 03_device_analysis.sql | Performance by device type |
| 04_day_of_week.sql | Purchase patterns by day of week |
| 05_revenue_by_channel.sql | Revenue and average order value by channel |
| 06_monthly_revenue_trend.sql | Monthly revenue trend across the year |

## Dataset
This project uses the Google Analytics Sample dataset available 
freely on BigQuery Public Datasets. It contains real data from the 
Google Merchandise Store covering August 2016 to July 2017.
