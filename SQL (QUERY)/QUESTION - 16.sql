-- Q16.Customer Segmentation (RFM-style Insight)
-- 👉 Business Problem:
-- Identify high-value customers based on spending + frequency.

SELECT
customer_id,
COUNT(*) AS total_orders,
SUM(purchase_amount) AS total_spent,
AVG(purchase_amount) AS avg_order_value, 

CASE
	WHEN SUM(purchase_amount) > 300 THEN 'High value'
    when sum(purchase_amount) BETWEEN 150 AND 300 THEN 'Mediam  valiues'
    ELSE 'Low values'
END AS customer_segment

FROM customer_trends_analysis
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;