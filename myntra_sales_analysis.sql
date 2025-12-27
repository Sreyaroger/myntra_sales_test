SELECT * FROM myntra_sales;


SELECT COUNT(*) FROM myntra_sales;


SELECT
DISTINCT brand_name FROM myntra_sales;


SELECT
DISTINCT pants_description FROM myntra_sales;


SELECT COUNT(ratings)
FROM myntra_sales;


SELECT COUNT(DISTINCT brand_name)
FROM myntra_sales;


SELECT MAX(price) FROM myntra_sales;



SELECT MAX(discount_percent) FROM myntra_sales;



--Business Problems
--Project.Q.1 
--Which brands have the highest number of Products?



SELECT brand_name, COUNT(*) AS product_count
FROM myntra_sales
GROUP BY brand_name
ORDER BY product_count DESC;



--Project.Q.2 
--Which brands are most liked by customers based on their average product ratings?



SELECT 
    brand_name,
    ROUND(AVG(ratings)::numeric, 2) AS avg_rating
FROM myntra_sales
WHERE ratings IS NOT NULL
GROUP BY brand_name
ORDER BY avg_rating DESC;


--Project.Q.3
--Identify the Top 5 Brands based on the Customer Ratings



SELECT 
    brand_name,
    ROUND(AVG(ratings)::numeric, 2) AS avg_rating
FROM myntra_sales
WHERE ratings IS NOT NULL
GROUP BY brand_name
ORDER BY avg_rating DESC
LIMIT 5;


--Project.Q.4. 
--Which brands offer the highest average discount amount? List the Top 5 brands


SELECT brand_name,
       ROUND(AVG("discount_amount")::numeric, 2) AS avg_discount_amount,
       RANK() OVER (ORDER BY AVG("discount_amount") DESC) AS rank
FROM myntra_sales
WHERE "discount_amount" IS NOT NULL
GROUP BY brand_name
ORDER BY rank
LIMIT 5;


--Project.Q.5
--List Out Brand-wise total Discount Amount


SELECT brand_name,
       SUM("discount_amount") AS total_discount
FROM myntra_sales
GROUP BY brand_name
ORDER BY total_discount DESC;


--Project.Q.6
--Identify the Top 5 brands with the highest Maximum MRP and rank them accordingly


SELECT brand_name,
       MAX(mrp) AS highest_mrp,
       RANK() OVER (ORDER BY MAX(mrp) DESC) AS rank
FROM myntra_sales
GROUP BY brand_name
ORDER BY rank
LIMIT 5;


--Project.Q.7
--Which are the top 5 brands with the highest number of product sales?”



SELECT brand_name,
       COUNT(pants_description) AS total_products,
       RANK() OVER (ORDER BY COUNT(pants_description) DESC) AS rank
FROM myntra_sales
GROUP BY brand_name
ORDER BY rank
LIMIT 5;


--Project.Q.8
--Identify the top 10 brands offering products at the lowest price and rank them accordingly



SELECT brand_name,
       MIN(price) AS lowest_price,
       RANK() OVER (ORDER BY MIN(price) ASC) AS rank
FROM myntra_sales
GROUP BY brand_name
ORDER BY rank
LIMIT 10;


--Project.Q.9
--List the top 5 highest-priced products along with their brand name and product description, and assign a ranking based on price


SELECT brand_name,
       pants_description,
       price,
       RANK() OVER (ORDER BY price DESC) AS rank
FROM myntra_sales
ORDER BY rank
LIMIT 5;


--Project.Q.10
--List the top 50 products across all brands offering the biggest discount and assign a ranking based on the discount amount


SELECT brand_name,
       pants_description,
       "discount_amount",
       RANK() OVER (ORDER BY "discount_amount" DESC) AS rank
FROM myntra_sales
ORDER BY rank
LIMIT 50;


--Project.Q.11
--Which Brand has the Lowest number of ratings


SELECT brand_name,
       SUM(number_of_ratings) AS total_ratings
FROM myntra_sales
GROUP BY brand_name
ORDER BY total_ratings ASC
LIMIT 5;



--Project.Q.12
--For each brand, display the minimum, maximum, and average ratings along with the pants description and discount amount


SELECT brand_name,
       pants_description,
       "discount_amount",
       MIN(ratings) AS min_ratings,
       MAX(ratings) AS max_ratings,
       ROUND(AVG(ratings)::numeric, 2) AS avg_ratings
FROM myntra_sales
GROUP BY brand_name, pants_description, "discount_amount"
ORDER BY brand_name;


--Project.Q.13
--List the top 20 brands based on their maximum rating


SELECT brand_name,
       MAX(ratings) AS max_ratings
FROM myntra_sales
GROUP BY brand_name
ORDER BY max_ratings DESC
LIMIT 20;


--Project.Q.14
--List the 20 brands based on their minimum rating


SELECT brand_name,
       MIN(ratings) AS min_ratings
FROM myntra_sales
GROUP BY brand_name
ORDER BY min_ratings ASC
LIMIT 20;


--Project.Q.15
--Which brands offer the best value for money by providing higher customer ratings at lower prices?


SELECT 
    brand_name,
    ROUND(AVG(price / ratings)::numeric, 2) AS value_for_money_score
FROM myntra_sales
WHERE ratings IS NOT NULL 
  AND ratings > 0
GROUP BY brand_name
ORDER BY value_for_money_score ASC
LIMIT 10;


--Project.Q.16
--Which highly rated products offer the highest discount amounts?


SELECT brand_name, pants_description, ratings, "discount_amount"
FROM myntra_sales
WHERE ratings >= 4 AND "discount_amount" > 500
ORDER BY "discount_amount" DESC;