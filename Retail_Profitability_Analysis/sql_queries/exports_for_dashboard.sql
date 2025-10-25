-- File: exports_for_dashboard.sql
-- Purpose: Export key summary tables for Tableau dashboard

-- Monthly Sales and Profit Trend
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100, 2) AS Profit_Margin_Percent
FROM retail_sales
GROUP BY Month
ORDER BY Month
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/monthly_trends.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
-- creates a monthly_trends.csv
-- Description: Sales and profit by month


--  Category and Sub-Category Performance
SELECT 
    Category,
    Sub_Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100, 2) AS Profit_Margin_Percent
FROM retail_sales
GROUP BY Category, Sub_Category
ORDER BY Total_Sales DESC
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/category_analysis.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
-- creates a category_analysis.csv
-- Description: Performance by category & sub-category


--  Regional and State-Level Sales & Profit
SELECT 
    Region,
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100, 2) AS Profit_Margin_Percent
FROM retail_sales
GROUP BY Region, State
ORDER BY Region, Total_Sales DESC
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/regional_analysis.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
-- creates a regional_analysis.csv
-- Description: Region & State-level summary 


