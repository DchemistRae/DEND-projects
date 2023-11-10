<!-- Data Integration Pipelines for NYC Payroll Data Analytics -->

# Data Integration Pipelines for NYC Payroll Data Analytics

## 🚀 Project Overview
This project is a data symphony, orchestrating pipelines for NYC payroll data analytics. Harnessing Python, Apache Airflow, and Microsoft Azure, our goal is to create scalable, automated pipelines for integrating diverse data sources. The focus is on ensuring data consistency, reliability, and efficiency.

## 📊 Data Sources
- **NYC Payroll Data:** Employee salary and compensation info for 2020 and 2021.
- **Employee Data:** Details like names, departments, and job titles.
- **Job Titles Data:** A catalog of all city job titles.
- **Agency Data:** Names of agencies where employees work.

## 🏗️ Project Structure
1. **Data Extraction:** Extracting data from sources preloaded into a data lake.
2. **Data Transformation:** Transforming data for consistency, including cleaning, filtering, and aggregating. Noteworthy: 2021 payroll data briefly rests in a SQL database on Azure before joining Synapse as a transaction database.
3. **Data Loading:** Loading transformed data into a data warehouse for analysis.

## 🔧 Tools and Technologies Used
- **Data Lake Storage Gen 2:** Source and staging area.
- **Data Factory:** Exclusive use for ETL processes and transformations.
- **Synapse Analytics:** Final warehouse for analytics.
- **SQL Database:** Storage for 2021 payroll data, acting as a transaction database.

## 📈 Results
The final structured database, optimized for analytics, has taken its place in Synapse. An OLTP database stands ready for periodic data loading into the warehouse.
