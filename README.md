## Data Analytics and Prediction Projects
## Repository Overview

This repository contains two end-to-end data analytics and prediction projects built using SQL, Python, and Tableau.
Each project demonstrates the complete data lifecycle — from raw data processing to business insights and dashboard creation.

## Projects Included
Project	       Description                                                                                             	        Tools Used
Retail         Analyzes retail sales performance across categories, regions, and months to identify key profitability trends. 	SQL, Python, Tableau
Profitability
Analysis 

HR Attrition   Identifies key drivers of employee attrition and predicts turnover using analytics and machine learning.	        Python, Scikit-learn, Tableau
Prediction
	
## Project 1: Retail Profitability Analysis
## Objective
To analyze sales and profit data across product categories, regions, and time periods to improve decision-making and identify high-performing business areas.

## Steps Involved

Data Cleaning (SQL):
Handled missing values, corrected date formats, and standardized key fields.

Exploratory Analysis (SQL & Python):
Created category-wise, monthly, and regional summaries.

Exports for Dashboard:
Generated .csv files for Tableau visualization (exports_for_dashboard.sql).

Dashboard Creation (Tableau):
Designed interactive dashboards showing trends, category performance, and regional insights.

## Key Insights

Technology category yields the highest profit margin.
Eastern region outperforms all others in sales and growth.
Monthly trend analysis reveals seasonal profit spikes during November and December.

## Folder Structure
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


## Project 2: HR Attrition Prediction
## Objective
To analyze employee attrition patterns and predict turnover likelihood, providing actionable insights to improve employee retention.

## Steps Involved

Data Preparation:
Cleaned and encoded HR dataset, handled missing values, and created Attrition_Flag.

EDA (Python):
Explored attrition by department, job role, gender, and age group.

Feature Engineering & Modeling:
Built predictive model (Random Forest) to identify top attrition factors.

Visualization (Tableau):
Designed dashboards for HR teams to monitor attrition trends.

Reporting:
Generated a professional PDF summarizing key insights.

## Key Insights

Sales and HR departments have the highest attrition rates.

Younger employees (26–35 years) are more likely to leave.

Low job satisfaction and overtime strongly correlate with attrition.

## Folder Structure
HR_Attrition_Prediction/
├── data/
│   ├── HR_data.csv
|   ├── export/
│       ├── attrition_by_department.csv
│       ├── attrition_by_jobrole.csv
│       ├── attrition_by_gender.csv
│       └── attrition_by_age.csv
├── notebooks/
│   └── HR_Attrition_Analysis.ipynb
├── dashboard/
│   └── HR Attrition Overview.twbx
|   └── Attrition Drivers.twbx
├── reports/
│   └── HR_Attrition_Insights_Report.pdf
└── README.md


## Tech Stack Used
Category	          Tools / Technologies
Languages      	    SQL, Python
Data Analysis	      Pandas, NumPy, Seaborn, Matplotlib
Machine Learning	  Scikit-learn (Random Forest, Logistic Regression)
Visualization	      Tableau Desktop / Tableau Public
Database	          MySQL
Reporting	          Tableau & PDF Reports

## Dashboard Previews
## Retail Profitability Dashboard

Shows profit trends by category, region, and month.
Helps managers understand key drivers of business growth.

## HR Attrition Dashboard

Displays attrition by gender, department, and age.
Highlights top attrition drivers using ML feature importance.

## How to Use This Repository

Clone the repository:
git clone https://github.com/<your-username>/Data_Analytics_and_Prediction_Projects.git
cd Data_Analytics_and_Prediction_Projects

Navigate to any project folder (e.g., Retail_Profitability_Analysis).

Follow the individual project’s README.md for setup and execution.

View Tableau dashboards in the dashboard/ folder or Tableau Public links.

## Deliverables
Deliverable           	Description
Cleaned Data Files	    Processed datasets ready for analysis
SQL Scripts	            Data cleaning, transformation, and aggregation
Python Notebooks	      EDA, visualization, and modeling
Tableau Dashboards	    Interactive visuals for management insights
Reports               	PDF summaries of key insights

## Conclusion
This repository showcases two end-to-end data projects that combine SQL, Python, and Tableau for analytical storytelling and predictive insights.
Both projects demonstrate the ability to transform raw data into actionable insights for business decision-making.

## Author
Vaishnavi H

