CREATE DATABASE shopping_behavior;
USE shopping_behavior;

CREATE TABLE customer_shopping_behavior (
    customer_id INT,
    age INT,
    gender VARCHAR(10),
    item_purchased VARCHAR(100),
    category VARCHAR(50),
    purchase_amount FLOAT,
    location VARCHAR(50),
    size VARCHAR(10),
    color VARCHAR(20),
    season VARCHAR(20),
    review_rating FLOAT,
    subscription_status VARCHAR(10),
    shipping_type VARCHAR(50),
    discount_applied VARCHAR(10),
    previous_purchases INT,
    payment_method VARCHAR(50),
    frequency_of_purchases VARCHAR(50),
    age_group VARCHAR(20),
    purchase_frequency_days INT
);