# Pizza Sales Data Analysis 🍕

## Project Overview
This project involves a comprehensive exploratory data analysis (EDA) of a pizza restaurant's sales data using SQL. The goal of this analysis is to extract meaningful insights regarding revenue, customer ordering patterns, and menu performance to help drive business decisions. 

## Technologies Used
- **Database Management System:** Microsoft SQL Server (T-SQL)
- **Language:** SQL

## Dataset
The analysis is performed on a database named `pizza DB` utilizing the `pizza_sales` table. The dataset includes order details such as order dates, times, pizza categories, sizes, quantities sold, and pricing.

## Key Performance Indicators (KPIs)
The initial phase of the analysis establishes the primary business metrics:
* **Total Revenue:** The sum of the total price of all pizza orders.
* **Average Order Value:** The average amount spent per order.
* **Total Pizzas Sold:** The aggregate sum of pizza quantities sold.
* **Total Orders:** The distinct count of all orders placed.
* **Average Pizzas Per Order:** The average number of pizzas purchased in a single order.

## Business Insights & Trends
The SQL scripts dive deeper into the data to uncover the following trends and categorical breakdowns:

### 📅 Temporal Trends
* **Daily Trend for Total Orders:** Evaluates order volumes by the day of the week to identify peak days.
* **Hourly Trend for Total Orders:** Analyzes order volumes by the hour of the day to determine the busiest operational hours.

### 🍕 Categorical Analysis
* **Sales by Pizza Category:** Calculates the total revenue and the percentage contribution of each pizza category (e.g., Classic, Supreme, Veggie) to overall sales.
* **Sales by Pizza Size:** Calculates the total revenue and the percentage contribution of each pizza size (e.g., Small, Medium, Large) to overall sales.
* **Monthly Category Performance:** Tracks the total pizzas sold per category for specific months (e.g., February).

### 🏆 Menu Performance
* **Top 5 Best Sellers:** Identifies the top 5 most popular pizzas based on total quantity sold.
* **Bottom 5 Worst Sellers:** Identifies the 5 least popular pizzas based on total quantity sold, highlighting potential areas for menu optimization.

## How to Use
1. Ensure you have an SQL Server environment set up.
2. Create a database named `pizza DB` and import your `pizza_sales` data.
3. Open the provided `.sql` file in your SQL management tool (e.g., SQL Server Management Studio, Azure Data Studio).
4. Execute the queries sequentially or run specific blocks to view the distinct insights.

---
*Note: This project relies on standard T-SQL functions like `DATENAME`, `DATEPART`, and `CAST` for precise data aggregation and decimal formatting.*
