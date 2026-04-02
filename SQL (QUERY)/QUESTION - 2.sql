-- Q2. Which customer used a discount but still spent more than the average purchase amount  ?

SELECT Customer_ID , purchase_amount
from customer_trends_analysis
WHERE Discount_Applied = 'YES' and Purchase_Amount >=( select AVG(purchase_amount) FROM customer_trends_analysis)
