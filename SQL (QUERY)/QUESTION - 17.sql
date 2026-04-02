-- Q17. Cohort Analysis (Purchase Behavior by Frequency)
-- 👉 Business Problem:
-- Understand how purchase frequency impacts revenue

SELECT 
frequency_of_purchases,
COUNT(DISTINCT customer_id) AS total_customers,
SUM(purchase_amount) AS total_revence,
ROUND(AVG(purchase_amount), 2) AS avg_order_value
FROM customer_trends_analysis
GROUP BY frequency_of_purchases
order by total_revence DESC
LIMIT 10;