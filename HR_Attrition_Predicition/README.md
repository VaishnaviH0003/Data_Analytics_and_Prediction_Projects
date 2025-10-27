## HR Attrition Prediction
## Project Overview

The HR Attrition Prediction Project analyzes employee data to understand the key factors contributing to employee turnover.
Using data analytics and predictive modeling, it provides HR professionals with actionable insights to improve retention, satisfaction, and workforce stability.
This project demonstrates the complete data lifecycle — from cleaning and exploration to predictive modeling and dashboard visualization.

## Objectives

Identify major factors driving employee attrition.
Analyze attrition by department, gender, job role, and age group.
Build a predictive model to estimate attrition probability.
Create interactive dashboards in Tableau for data-driven HR insights.

## Project Workflow
Phase	Description	Tools
Phase 1 – Data Understanding	Imported and explored the HR dataset.	Python (Pandas, NumPy)
Phase 2 – Data Cleaning & Preparation	Handled missing values, encoded categorical variables, and created derived fields (e.g., Age_Group, Attrition_Flag).	Python
Phase 3 – EDA & Insights Generation	Analyzed attrition patterns by department, job role, age, and gender.	Seaborn, Matplotlib
Phase 4 – Dashboard Development	Designed Tableau dashboards for interactive HR insights.	Tableau
Phase 5 – Predictive Modeling (Optional)	Built a Random Forest model to predict employee attrition probability.	Scikit-learn

##  Dataset Information
Column	            Description
EmployeeNumber	    Unique ID for each employee
Age	                Age of the employee
Department	        Department name (Sales, HR, R&D, etc.)
JobRole	            Employee’s job role
Gender	            Male/Female
MaritalStatus	      Single/Married/Divorced
JobSatisfaction	    Rating (1–4)
MonthlyIncome	      Employee’s income
OverTime	          Yes/No
Attrition	          Target variable (Yes = left company, No = stayed)

## Raw dataset: data/HR_data.csv
## Processed dataset: Derived summary CSVs used for Tableau dashboards.

## Steps Performed
1. Data Cleaning

Handled missing and inconsistent values.
Converted categorical values to lowercase.
Created new field Attrition_Flag (Yes = 1, No = 0).
Grouped ages into bins:
['18–25', '26–35', '36–45', '46–55', '56–65'].

2. Exploratory Data Analysis (EDA)

Performed visual and statistical analysis to uncover patterns in attrition:
Attrition rate by Department, Job Role, Gender, and Age Group.
Correlation heatmaps to find key influencing factors.
Visualized attrition distributions using Seaborn.

3. Exporting Summary Data

Exported summary CSVs for Tableau:
attrition_by_department.csv
attrition_by_jobrole.csv
attrition_by_gender.csv
attrition_by_age.csv
(Each contains columns: Group → Attrition_Rate (%))

4. Dashboard Development (Tableau)

Built interactive dashboards with the following visuals:
Gender-wise Attrition (Pie Chart)
Department-wise Attrition (Bar Chart)
Job Role vs Attrition (Horizontal Bar)
Age Group vs Attrition (Line Chart)


## Key Insights
Insight	Observation
 Department-wise	Sales and HR have the highest attrition rates.
 Gender	Male employees show slightly higher attrition than female.
 Age Group	Younger employees (26–35) are more likely to leave.
 Job Role	Sales Executives and Laboratory Technicians show higher attrition.
 Job Satisfaction	Employees with low satisfaction (1–2) have higher attrition rates.
 Dashboard Summary

## Two Tableau dashboards were created:
## Dashboard 1 – HR Attrition Overview

KPIs: Total Employees, Attrition Rate
Gender-wise and Department-wise Attrition Charts

## Dashboard 2 – Attrition Drivers

Job Role vs Attrition Rate
Age Group vs Attrition Rate
Job Satisfaction vs Attrition

## File: dashboard/HR_Attrition_Dashboard.twbx
## Report: reports/HR_Attrition_Insights_Report.pdf

## Technologies Used
Category	    Tools / Libraries
Language	    Python 3
Libraries	    Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn
Visualization	Tableau
Storage	      CSV files
Environment	  Jupyter Notebook

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

## How to Run the Project

Clone the repo and navigate to the project folder:
git clone https://github.com/<your-username>/Data_Analytics_and_Prediction_Projects.git
cd HR_Attrition_Prediction
Open the Jupyter Notebook:
jupyter notebook notebooks/HR_Attrition_Analysis.ipynb
Run the notebook cells for cleaning, analysis, and exports.
Open Tableau → Import the four summary CSV files from data/ folder.
Build dashboards using the visuals described above or open:
dashboard/HR_Attrition_Dashboard.twbx

## Deliverables
Deliverable                 	   Description
Data Cleaning & EDA Notebook	   Python-based data exploration
Processed CSVs	                 Cleaned & summarized data for Tableau
Tableau Dashboard           	   Interactive visualization of attrition insights
Report                      	   PDF report summarizing key findings

## Conclusion

The HR Attrition Prediction Project successfully identifies key attrition patterns and risk factors within the organization.
By leveraging data analytics and predictive modeling, it provides clear, actionable insights to improve employee engagement and retention.
Key Takeaway:
Employee satisfaction, compensation, and overtime are critical drivers of attrition — addressing these can significantly reduce turnover rates.

## Author
Vaishnavi H
