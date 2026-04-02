-- Q9. Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?

SELECT subscription_status,
       COUNT(customer_id) AS repeat_buyers
FROM customer_trends_analysis
WHERE previous_purchases > 5
GROUP BY subscription_status;