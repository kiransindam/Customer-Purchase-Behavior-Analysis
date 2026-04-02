-- Q13 Top 5 locations by sales

SELECT location, sum(purchase_amount) as total_sales
from customer_trends_analysis
group by location
order by total_sales DESC
limit 5;