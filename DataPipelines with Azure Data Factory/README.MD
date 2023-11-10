# 🚀 Data Integration Pipelines for NYC Payroll Data Analytics

## Project Overview
This project focuses on building data integration pipelines for NYC payroll data analytics. These pipelines are designed to extract data from multiple sources, transform it, and load it into a format suitable for analysis. The project utilizes various tools and technologies, including Python, Apache Airflow, and Microsoft Azure.

The goal of this project is to create scalable and automated data pipelines that integrate NYC payroll data from multiple sources. The pipelines perform necessary data transformations and load the data into a data warehouse for further analysis. The project ensures data consistency, reliability, and efficiency.

## Data Sources
The project utilizes the following data sources:

- **NYC Payroll Data:** Contains employee salary and compensation information for the year 2020 and 2021.
- **Employee Data:** Contains employee details such as names, departments, and job titles.
- **Job Titles Data:** Contains all job titles within the city.
- **Agency Data:** Contains agency names where the employees work.

## Project Structure
The data integration pipeline consists of the following steps:

1. **Data Extraction:** The pipeline extracts data from the respective data sources which were preloaded into a data lake.
2. **Data Transformation:** The extracted data is transformed to ensure consistency and compatibility. This includes cleaning, filtering, and aggregating the data as required. Data Validation and pipeline monitoring was done as well. This process assumes the bulk of this project and it was completed using Azure Data Factory.
3. **Data Loading:** The transformed data is loaded into a data warehouse for further analysis. NOTE: Although all data were read from a data lake as the source, transaction data for 2021 payroll was first loaded into a SQL database on Azure platform before being ingested into Synapse, assuming the role of a transaction database system.

## Tools and Technologies Used
The project utilizes the following tools and services on the Microsoft Azure Platform:

- **Data Lake Storage Gen 2:** This was used as the data source for this project, also staging area for the final warehouse was created in the datalake.
- **Data Factory:** All the ETL processes and data transformation were completed exclusively using Data Factory.
- **Synapse Analytics:** The final warehouse (sink) where all the data was loaded into for analytics.
- **SQL database:** A SQL database was used to store the 2021 payroll data, used in this situation as a transaction database.

## Results
The final structured database optimized for analytics was finally created on Synapse, an OLTP database was also created which will aid periodical data loading into the data warehouse.

## Screenshots
![Master_pipeline](https://github.com/DchemistRae/DEND-projects/blob/main/DataPipelines%20with%20Azure%20Data%20Factory/Screenshots%20%26%20Queries/4.%20Data%20flows%20and%20pipelines/Master_pipeline_run%20-%20completed.png)

![Data Validation](https://github.com/DchemistRae/DEND-projects/blob/main/DataPipelines%20with%20Azure%20Data%20Factory/Screenshots%20%26%20Queries/5.%20Aggregate%20data%20flow%20and%20pipeline/Pipeline%20-%20Aggregate%20data%20pipeline%20run%20with%20parameter3.png)


