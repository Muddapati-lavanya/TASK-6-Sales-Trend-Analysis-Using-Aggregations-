1.#create the table 

CREATE TABLE online_sales (
  order_id INTEGER PRIMARY KEY,
  order_date TEXT,
  amount REAL,
  product_id TEXT
);

2.Insert the data

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1,'2023-01-05',250,'P01'),
(2,'2023-01-08',400,'P02'),
(3,'2023-02-03',150,'P01'),
(4,'2023-02-15',350,'P03'),
(5,'2023-03-05',500,'P01'),
(6,'2023-03-10',200,'P02'),
(7,'2023-03-25',700,'P03'),
(8,'2023-04-01',100,'P04'),
(9,'2023-04-15',300,'P02'),
(10,'2023-05-05',600,'P01');

3.#Check data

SELECT * FROM online_sales;

4.#monthly revenue and order volume

SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

5.#top 3 months by sales

SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS total_sales
FROM online_sales
GROUP BY year, month
ORDER BY total_sales DESC
LIMIT 3;

6.# total revenue by product

SELECT 
    product_id,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY product_id
ORDER BY total_revenue DESC;

7.# handle null values

SELECT 
    COALESCE(SUM(amount), 0) AS total_revenue
FROM online_sales;

8.# yearly revenue 

SELECT 
    strftime('%Y', order_date) AS year,
    SUM(amount) AS yearly_revenue
FROM online_sales
GROUP BY year;

