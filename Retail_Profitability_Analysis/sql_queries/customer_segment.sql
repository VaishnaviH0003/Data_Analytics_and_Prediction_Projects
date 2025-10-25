-- customer_segment.sql
-- Purpose: segment & ship mode analysis

SELECT
  Segment,
  Ship_Mode,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100,2) AS profit_margin_pct,
  COUNT(DISTINCT Customer_ID) AS customers_count
FROM retail_sales
GROUP BY Segment, Ship_Mode
ORDER BY total_sales DESC;
