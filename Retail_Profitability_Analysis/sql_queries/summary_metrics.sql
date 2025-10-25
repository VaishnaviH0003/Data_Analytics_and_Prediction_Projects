-- summary_metrics.sql
-- Purpose: Overall business KPIs for the entire dataset

SELECT
  COUNT(DISTINCT Order_ID)                                           AS total_orders,
  COUNT(DISTINCT Customer_ID)                                        AS total_customers,
  ROUND(SUM(Sales), 2)                                               AS total_sales,
  ROUND(SUM(Profit), 2)                                              AS total_profit,
  ROUND( SUM(Profit) / NULLIF(SUM(Sales),0) * 100, 2)                 AS profit_margin_percent,
  ROUND(AVG(Sales), 2)                                               AS avg_order_value,
  ROUND(SUM(Quantity), 0)                                             AS total_units_sold
FROM retail_sales;
