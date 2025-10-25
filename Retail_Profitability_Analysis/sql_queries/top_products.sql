-- top_products.sql
-- Purpose: Top N profitable / loss-making products

-- Top 10 profitable products
SELECT
  Product_Name,
  Category,
  Sub_Category,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100,2) AS profit_margin_pct
FROM retail_sales
GROUP BY Product_Name, Category, Sub_Category
ORDER BY total_profit DESC
LIMIT 10;

-- Bottom 10 (loss-making) products
SELECT
  Product_Name,
  Category,
  Sub_Category,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit
FROM retail_sales
GROUP BY Product_Name, Category, Sub_Category
HAVING SUM(Profit) < 0
ORDER BY total_profit ASC
LIMIT 10;
