-- File: data_cleaning.sql
-- Purpose: Clean the retail_sales dataset before analysis

-- Check total records before cleaning
SELECT COUNT(*) AS total_records_before_cleaning FROM retail_sales;

--  Remove rows with missing essential values
DELETE FROM retail_sales
WHERE Order_ID IS NULL OR Sales IS NULL OR Profit IS NULL;

-- Ensure valid numeric values
UPDATE retail_sales SET Sales = 0 WHERE Sales < 0;
UPDATE retail_sales SET Quantity = 0 WHERE Quantity < 0;
UPDATE retail_sales SET Profit = 0 WHERE Profit < 0;

-- Detect duplicate orders
SELECT Order_ID, COUNT(*) AS duplicate_count
FROM retail_sales
GROUP BY Order_ID
HAVING COUNT(*) > 1;

--  Remove duplicates using Row_ID
DELETE t1 FROM retail_sales t1
JOIN retail_sales t2
ON t1.Order_ID = t2.Order_ID
WHERE t1.Row_ID > t2.Row_ID;

-- Verify cleaned data
SELECT COUNT(*) AS total_records_after_cleaning FROM retail_sales;

-- Check for invalid dates (Ship before Order)
SELECT COUNT(*) AS invalid_dates
FROM retail_sales
WHERE Ship_Date < Order_Date;

