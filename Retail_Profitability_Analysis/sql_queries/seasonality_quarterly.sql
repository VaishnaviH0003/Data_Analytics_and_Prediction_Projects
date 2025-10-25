-- seasonality_quarterly.sql
-- Purpose: quarter/season-based trend

SELECT
  YEAR(Order_Date) AS year,
  CONCAT('Q', QUARTER(Order_Date)) AS quarter,
  SUM(Sales) AS quarter_sales,
  SUM(Profit) AS quarter_profit,
  ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100,2) AS profit_margin_pct
FROM retail_sales
GROUP BY year, quarter
ORDER BY year, quarter;
