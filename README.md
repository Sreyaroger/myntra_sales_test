# Myntra Pants Sales Analysis

## 📌 Project Overview
This project focuses on analyzing Myntra pants sales data using **PostgreSQL**.  
The goal of this project is to understand brand performance, pricing strategies, discounts, and customer preferences through structured SQL analysis.

---

## 🎯 Objectives
- Identify top-performing brands based on product count
- Analyze customer preferences using ratings
- Study discount patterns across brands
- Rank brands and products using SQL window functions
- Find best value-for-money brands

---

##  Dataset Description
The dataset `myntra_sales` contains the following columns:
- brand_name
- pants_description
- price
- mrp
- discount_percent
- discount_amount (derived column)
- ratings
- number_of_ratings

> Note: The `discount_amount` column was not directly available in the dataset and was created during data preparation.

---

##  Tools & Technologies Used
- PostgreSQL
- SQL
- VS Code
- Git & GitHub

---

## 🧹 Data Cleaning & Feature Engineering
- Renamed columns for consistency:
  - `discount amount` → `discount_amount`
  - `MRP` → `mrp`
- Created a new column **discount_amount** using the formula:
  - **Discount Amount = MRP − Price**
- Checked total records and distinct values
- Handled NULL values in ratings where required

---

##  Business Problems & SQL Analysis

### 1️⃣ Brands with the Highest Number of Products
Identified brands offering the maximum number of pants products.

### 2️⃣ Most Liked Brands Based on Average Ratings
Calculated brand-wise average customer ratings.

### 3️⃣ Top 5 Brands Based on Customer Ratings
Ranked brands using average ratings and selected the top 5.

### 4️⃣ Top 5 Brands Offering Highest Discounts
Identified brands offering the highest average discount amounts.

### 5️⃣ Brand-wise Total Discount Amount
Calculated the total discount offered by each brand.

### 6️⃣ Top 5 Brands with Highest MRP
Ranked brands based on maximum MRP values.

### 7️⃣ Top 5 Brands by Product Sales Count
Identified brands with the highest number of products sold.

### 8️⃣ Top 10 Brands Offering Lowest Priced Products
Ranked brands based on minimum product price.

### 9️⃣ Top 5 Highest Priced Products
Listed premium-priced products along with brand name and ranking.

### 🔟 Top 50 Products with Highest Discount
Ranked products based on discount amount across all brands.

### 1️⃣1️⃣ Brands with the Lowest Number of Ratings
Identified brands with the least customer engagement.

### 1️⃣2️⃣ Brand-wise Min, Max & Avg Ratings
Displayed rating statistics along with product description and discount amount.

### 1️⃣3️⃣ Top 20 Brands by Maximum Rating
Highlighted brands with the highest-rated products.

### 1️⃣4️⃣ Bottom 20 Brands by Minimum Rating
Identified brands with the lowest customer satisfaction.

### 1️⃣5️⃣ Best Value-for-Money Brands
Calculated a value-for-money score using price-to-rating ratio.

### 1️⃣6️⃣ Highly Rated Products with High Discounts
Filtered products with ratings ≥ 4 and discount amount > ₹500.

---

##  Key Insights
- Certain brands dominate sales with a wide range of products
- High discounts do not always guarantee higher ratings
- Premium-priced products are limited to specific brands
- Some brands provide better value by balancing price and customer ratings

---

## ✅ Conclusion
This project demonstrates end-to-end SQL data analysis including data cleaning, feature engineering, business problem solving, and ranking analysis.  
It provides meaningful insights into Myntra pants sales and customer behavior.
