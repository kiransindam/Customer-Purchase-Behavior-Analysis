-- Q7. Segment customers into New, Returning, and Loyal based on their total 
-- number of previous purchases, and show the count of each segment. 

with customer_type as (
SELECT customer_id, previous_purchases,
CASE 
    WHEN previous_purchases = 1 THEN 'New'
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    ELSE 'Loyal'
    END AS customer_segment
FROM customer_trends_analysis)

select customer_segment,count(*) AS "Number of Customers" 
from customer_type 
group by customer_segment;