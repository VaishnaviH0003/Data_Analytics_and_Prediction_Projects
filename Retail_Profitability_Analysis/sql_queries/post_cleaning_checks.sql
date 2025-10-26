-- File: post_cleaning_checks.sql
-- Purpose: Optional utility script for export and validation

-- Export cleaned dataset (for Tableau/Python)
(
  SELECT
    'Row_ID','Order_ID','Order_Date','Ship_Date','Ship_Mode',
    'Customer_ID','Customer_Name','Segment',
    'Country','City','State','Postal_Code','Region',
    'Product_ID','Category','Sub_Category','Product_Name',
    'Sales','Quantity','Discount','Profit'
)
UNION ALL
(
  SELECT
    Row_ID, Order_ID, Order_Date, Ship_Date, Ship_Mode,
    Customer_ID, Customer_Name, Segment,
    Country, City, State, Postal_Code, Region,
    Product_ID, Category, Sub_Category, Product_Name,
    Sales, Quantity, Discount, Profit
  FROM retail_sales
)
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/retail_cleaned.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- Basic Data Validation
SELECT MIN(Order_Date) AS earliest_order, MAX(Order_Date) AS latest_order FROM retail_sales;
SELECT DISTINCT Category FROM retail_sales;
SELECT COUNT(*) AS zero_sales_records FROM retail_sales WHERE Sales = 0;

