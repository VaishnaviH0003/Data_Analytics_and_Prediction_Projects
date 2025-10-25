-- category_analysis.sql
-- Purpose: Profitability and contribution by category & sub-category

SELECT
  Category,
  Sub_Category,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  COUNT(DISTINCT Order_ID) AS orders_count,
  ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100, 2) AS profit_margin_pct,
  ROUND(SUM(Sales)/NULLIF((SELECT SUM(Sales) FROM retail_sales),0)*100, 2) AS sales_contribution_pct
FROM retail_sales
GROUP BY Category, Sub_Category
ORDER BY total_sales DESC;
