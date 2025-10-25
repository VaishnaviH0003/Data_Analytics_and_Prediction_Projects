-- regional_trends.sql
-- Purpose: Region and State level performance

SELECT
  Region,
  State,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100,2) AS profit_margin_pct,
  COUNT(DISTINCT Customer_ID) AS unique_customers,
  COUNT(DISTINCT Order_ID) AS orders_count
FROM retail_sales
GROUP BY Region, State
ORDER BY Region, total_sales DESC;
