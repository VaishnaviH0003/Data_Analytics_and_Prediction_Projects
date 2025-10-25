-- monthly_trends.sql
-- Purpose: Monthly Sales and Profit time series


SELECT
  DATE_FORMAT(Order_Date, '%Y-%m-01') AS month_start,
  YEAR(Order_Date) AS year,
  MONTH(Order_Date) AS month,
  SUM(Sales) AS monthly_sales,
  SUM(Profit) AS monthly_profit,
  COUNT(DISTINCT Order_ID) AS orders_count
FROM retail_sales
GROUP BY DATE_FORMAT(Order_Date, '%Y-%m-01'), YEAR(Order_Date), MONTH(Order_Date)
ORDER BY year, month;
