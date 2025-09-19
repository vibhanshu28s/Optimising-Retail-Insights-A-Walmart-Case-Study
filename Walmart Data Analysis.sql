CREATE DATABASE WALMART;
USE WALMART;

SELECT * FROM walmart_sales_data;

#	1.	Total Sales:
SELECT SUM(Weekly_Sales) AS Total_Sales FROM walmart_sales_data;

#2.	Average Transaction Value:
SELECT AVG(Weekly_Sales) AS Average_Sales FROM walmart_sales_data;

#3.	Total Products Sold:
SELECT COUNT(Weekly_Sales) AS Total_Products_Sold FROM walmart_sales_data;

#	4.	Analysis by Store:
SELECT Store, SUM(Weekly_Sales) FROM walmart_sales_data GROUP BY Store;

#5.	Temporal Analysis:
SELECT Date, SUM(Weekly_Sales) FROM walmart_sales_data GROUP BY Date;

#Monthly sales by region
SELECT Store, EXTRACT(MONTH FROM Date) AS month, SUM(Weekly_Sales) AS total_sales
FROM walmart_sales_data
GROUP BY Store, month
ORDER BY Store, month;

# Customer lifetime value
SELECT customer_id, SUM(order_total) AS lifetime_value
FROM orders
GROUP BY customer_id;



