-- Q 12.Which season has the highest sales?

SELECT season, SUM(purchase_amount) AS total_sales
FROM customer_trends_analysis
GROUP BY season
ORDER BY total_sales DESC;