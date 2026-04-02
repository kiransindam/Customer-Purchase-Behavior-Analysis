-- Q11 Does discount increase purchase amount?
 
SELECT discount_applied, AVG(purchase_amount) AS avg_purchase
FROM customer_trends_analysis
GROUP BY discount_applied;