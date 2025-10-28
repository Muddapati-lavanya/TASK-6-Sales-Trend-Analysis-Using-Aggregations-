# TASK-6-Sales-Trend-Analysis-Using-Aggregations-
Analyzed e-commerce sales data using SQLite. Calculated monthly and yearly revenue, top 3 months, and product-wise sales using aggregation functions. Found that Product P03 and March had highest sales. Data cleaned and insights visualized for trend understanding.

Objective

The objective of this task is to analyze sales performance trends using SQL aggregation  functions such as SUM(), COUNT(), and GROUP BY. By using SQLite Online, we aim to identify monthly revenue patterns, top-performing products, and overall sales growth based on transactional data from an e-commerce sales dataset. This analysis helps in understanding which months and products contributed most to total sales and provides valuable insights for business decision-making.

📊 Dataset Description

The dataset used for this project is online_sales.csv, which contains sales transaction records.
Key columns include:

order_id: Unique ID for each order

order_date: Date when the order was placed

product_id: Product identifier

quantity: Number of units sold

price: Unit price of the product

revenue: Total revenue generated from each order


Before starting the analysis, the dataset was verified to ensure the order_date column contained valid date values.


💻 Tools and Platform Used

SQLite Online – for executing SQL queries

Excel / CSV file – for data storage and verification

GitHub – for storing project files and screenshot


🧮 SQL Analysis Performed

1. Calculated total monthly revenue and order volume using SUM() and COUNT().


2. Identified the Top 3 months by total revenue.


3. Analyzed total revenue by product using GROUP BY.


4. Handled missing values and validated data accuracy.


5. Computed yearly total revenue for trend comparison.

📈 Key Insights

March and May recorded the highest sales volume.

Product P03 generated the maximum overall revenue.

Sales showed consistent growth over time, indicating a positive trend.

✅ Conclusion

This SQL aggregation project successfully demonstrates how structured queries can uncover meaningful sales patterns. It highlights the importance of data-driven insights for improving business strategies and forecasting future trends.
