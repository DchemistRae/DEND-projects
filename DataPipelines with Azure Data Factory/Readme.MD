
# Data Integration Pipelines for NYC Payroll Data Analytics

## Project Overview
This project is dedicated to the development of data integration pipelines tailored for NYC payroll data analytics. These pipelines are engineered to extract information from diverse sources, perform necessary transformations, and load the data into a format conducive to analysis. The project harnesses a variety of tools and technologies, including Python, Apache Airflow, and Microsoft Azure.

The primary objective of this endeavor is to establish scalable and automated data pipelines capable of integrating NYC payroll data from multiple sources. These pipelines execute crucial data transformations and subsequently load the data into a data warehouse, ensuring data consistency, reliability, and efficiency.

## Data Sources
The project draws upon the following data sources:

- **NYC Payroll Data:** Contains employee salary and compensation information for the years 2020 and 2021.
- **Employee Data:** Encompasses employee details such as names, departments, and job titles.
- **Job Titles Data:** Enlists all job titles within the city.
- **Agency Data:** Comprises agency names where the employees work.

## Project Structure
The data integration pipeline encompasses the following steps:

1. **Data Extraction:** The pipeline extracts data from the respective data sources, which were preloaded into a data lake.
2. **Data Transformation:** The extracted data undergoes transformation to ensure consistency and compatibility. This phase includes cleaning, filtering, and aggregating the data as required. Data validation and pipeline monitoring were integral parts of this process, completed using Azure Data Factory. Notably, transaction data for the 2021 payroll was initially loaded into a SQL database on the Azure platform before being ingested into Synapse, serving as a transaction database system.
3. **Data Loading:** The transformed data is loaded into a data warehouse for further analysis.

## Tools and Technologies Used
The project leverages the following tools and services on the Microsoft Azure Platform:

- **Data Lake Storage Gen 2:** Used as the data source for this project, also serving as a staging area for the final warehouse in the data lake.
- **Data Factory:** All ETL processes and data transformations were exclusively completed using Data Factory.
- **Synapse Analytics:** The final warehouse (sink) where all the data is loaded for analytics.
- **SQL Database:** A SQL database was utilized to store the 2021 payroll data, functioning as a transaction database in this scenario.

## Results
The final structured database optimized for analytics was successfully created on Synapse. Additionally, an OLTP database was established to facilitate periodic data loading into the data warehouse.
