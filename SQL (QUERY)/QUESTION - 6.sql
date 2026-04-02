-- Q6. Which 5 products have the highest percentage of purchases with discounts applied?

SELECT item_purchased,
       ROUND(100.0 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS discount_rate
FROM customer_trends_analysis
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;