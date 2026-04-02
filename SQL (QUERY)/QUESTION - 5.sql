-- Q5. Do subscribed customers spend more? Compare average spend and total revenue 
-- between subscribers and non-subscribers.

SELECT subscription_status,
       COUNT(customer_id) AS total_customers,
       ROUND(AVG(purchase_amount),2) AS avg_spend,
       ROUND(SUM(purchase_amount),2) AS total_revenue
FROM customer_trends_analysis
GROUP BY subscription_status
ORDER BY total_revenue,avg_spend DESC;

