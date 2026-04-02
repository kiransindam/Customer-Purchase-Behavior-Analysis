-- Q10. What is the revenue contribution of each age group? 

SELECT 
    age_group,
    SUM(purchase_amount) AS total_revenue
FROM customer_trends_analysis
GROUP BY age_group
ORDER BY total_revenue desc;