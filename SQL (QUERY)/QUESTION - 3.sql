-- Q3. which are the top 5 product with the highest average review rating?

select item_purchased, ROUND(AVG(CAST(review_rating AS DECIMAL(10,2))), 2) as "Average Product Rating"
from customer_trends_analysis
group by item_purchased
order by avg(review_rating) desc
limit 5