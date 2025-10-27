# Retail Profitability Analysis

### Project Overview
This project focuses on analyzing retail sales data to uncover trends in sales, profit, and discount performance across product categories, customer segments, and regions.  
The analysis follows a complete **Data Analytics Pipeline** — from data cleaning in SQL, exploration and visualization in Python, to building an interactive dashboard in Tableau.

##  Project Structure

Retail_Profitability_Analysis/
│
├── data/
│ ├── retail_sales.csv ← raw dataset
│ ├── retail_cleaned.csv ← cleaned dataset (exported from MySQL)
│ └── exports/ ← aggregated outputs for Tableau
│ ├── category_summary.csv ← Python summary: category-wise totals
│ ├── monthly_summary.csv ← Python summary: monthly trends
│ ├── region_summary.csv ← Python summary: regional performance
│ ├── category_analysis.csv ← SQL-based summary 
│ ├── monthly_trends.csv ← SQL-based summary 
│ └── regional_analysis.csv ← SQL-based summary 
│
├── sql_queries/
│   ├── data_cleaning.sql              ← cleans dataset
│   ├── summary_metrics.sql            ← overall KPIs
│   ├── monthly_trends.sql             ← monthly sales/profit trends
│   ├── category_analysis.sql          ← category & subcategory
│   ├── regional_trends.sql            ← region/state insights
│   ├── top_products.sql               ← top/loss products
│   ├── seasonality_quarterly.sql      ← quarterly performance
│   ├── customer_segment.sql           ← segment & ship mode
│   ├── exports_for_dashboard.sql      ← exports summarized CSVs
│   ├── sanity_checks.sql              ← data validation
│   ├── post_cleaning_checks.sql       ← export data for tableau and validation queries 
│
├── notebooks/
│ └── retail_sales_EDA.ipynb ← Python Exploratory Data Analysis (EDA)
│
├── dashboard/
│ ├── Retail_Profitability_Dashboard.twbx ← Tableau interactive dashboard
│ 
│
├── reports/
│ └── Retail_Profitability_Analysis_Report.pdf ← summarized insights & visuals 
│
└── README.md


---

##  Phase 1 – Planning & Setup

- Define project goal: **improve retail profitability understanding using data analytics**
- Tools selected:
  - **MySQL** – Data cleaning and summarization  
  - **Python (Pandas, Matplotlib, Seaborn)** – EDA and visualization  
  - **Tableau** – Dashboard creation and storytelling
- Project folder structure created for maintainability and clarity.

---

##  Phase 2 – SQL Data Cleaning & Preparation

###  Tools
- MySQL 8.0  
- SQL Workbench or MySQL CLI  

###  Key Steps
1. Imported raw data (`retail_sales.csv`) into MySQL.
2. Cleaned data:
   - Removed duplicates and nulls.
   - Corrected data types for dates and numeric columns.
   - Ensured consistent category and region naming.
3. Added an auto-increment `Row_ID` column for indexing.
4. Exported the cleaned dataset:
   ```sql
   (SELECT 
       'Row_ID','Order_ID','Order_Date','Ship_Date','Ship_Mode',
       'Customer_ID','Customer_Name','Segment','Country','City','State',
       'Postal_Code','Region','Product_ID','Category','Sub_Category',
       'Product_Name','Sales','Quantity','Discount','Profit')
   UNION ALL
   (SELECT 
       Row_ID, Order_ID, Order_Date, Ship_Date, Ship_Mode, Customer_ID,
       Customer_Name, Segment, Country, City, State, Postal_Code, Region,
       Product_ID, Category, Sub_Category, Product_Name, Sales, Quantity,
       Discount, Profit
    FROM retail_sales)
   INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/retail_cleaned.csv'
   FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
5.Validated results using post_cleaning_checks.sql.
## Output: retail_cleaned.csv ready for analysis.

---

## Phase 3 – Python Exploratory Data Analysis (EDA)
## Tools
-Python 3.x
-Pandas, NumPy, Matplotlib, Seaborn

## Key Analyses
1.Data Overview
   -Loaded cleaned dataset.
   -Checked for missing values, duplicates, and data consistency.
2.Univariate Analysis
    -Sales and Profit distribution histograms.
    -Category-wise sales and profit totals.
3.Bivariate Analysis
    -Relationship between Sales and Profit.
    -Profitability by Customer Segment and Region.
4.Time-Series Analysis
    -Monthly trend of Sales and Profit.
5.Correlation Analysis
    -Heatmap showing relationships among Sales, Profit, Discount, Quantity.
6.Summary Exports
    -Category-wise, Monthly, and Regional summaries saved to data/exports/.

## Key Insights
-Technology category generates the highest sales and profit.
-East region has the best profit performance.
-High discounts negatively impact profit.
-November and December show sales peaks (seasonality).
-Corporate and Home Office segments show steady profit margins.

## Output:
-Visual insights in retail_sales_EDA.ipynb
-Exported summary files for Tableau

---

## Phase 4 – Tableau Dashboard
## Tools
-Tableau Public / Tableau Desktop

## Dashboard Components
Chart	                  Data Source        	   Description
Monthly Trend	          monthly_summary.csv	   Line chart for monthly sales & profit trends
Category Performance	  category_summary.csv   bar chart for sales/profit by category
Regional Profitability	region_summary.csv     bar chart showing region-wise profit
Filters               	Derived from data	     Interactivity by Category and Region

 ## Dashboard Layout
-------------------------------------------------------
|              Monthly Sales & Profit Trend           |
-------------------------------------------------------
|   Category-wise Sales  |     Region-wise Profit     |
-------------------------------------------------------


## Output:
-Retail_Profitability_Dashboard.twbx
-Interactive view with filters and tooltips


---


## Phase 5 – Insights & Recommendations
Insight                        	   Recommendation
Technology drives max profit	     Focus marketing on high-performing SKUs
West region is most profitable	   Replicate sales strategies to other regions
Discounts lower profit margins	   Review discount policies for better margins
Sales peak in Nov–Dec	             Prepare inventory and logistics for seasonal demand

## Tools Used
Tool	                                     Purpose
MySQL	                                     Data cleaning and summary queries
Python (Pandas, Matplotlib, Seaborn)	     Data exploration and visualization
Tableau	                                   Dashboard creation and presentation

## Deliverables
-retail_cleaned.csv – Cleaned dataset
-retail_sales_EDA.ipynb – Python EDA notebook
-Retail_Profitability_Dashboard.twbx – Tableau interactive dashboard
-data/exports/ – Aggregated summaries
-README.md – Project documentation

## Final Outcome

A complete data analytics project pipeline demonstrating:
   -SQL-based data cleaning & validation
   -Python-based EDA and insights discovery
   -Tableau dashboard for executive-level visualization

This project showcases end-to-end data analysis skills — from raw data to actionable insights and business-ready dashboards.

Author: Vaishnavi H
Completion: October 2025
Tools: MySQL, Python, Tableau
