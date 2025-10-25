-- sanity_checks.sql
-- Quick validations

-- distinct categories
SELECT COUNT(DISTINCT Category) AS num_categories FROM retail_sales;

-- date range
SELECT MIN(Order_Date) AS min_order_date, MAX(Order_Date) AS max_order_date FROM retail_sales;

-- null checks
SELECT
  SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS order_date_nulls,
  SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS sales_nulls,
  SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS profit_nulls
FROM retail_sales;
