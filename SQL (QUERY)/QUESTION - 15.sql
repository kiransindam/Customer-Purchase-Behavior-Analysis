-- Q 15 High Value Customers

SELECT customer_id , sum(purchase_amount) as total_spend
from customer_trends_analysis
group by customer_id
order by total_spend desc
limit 10;