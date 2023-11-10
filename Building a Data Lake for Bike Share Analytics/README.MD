# 🚀 Building an Azure Data Lake for Bike Share Data Analytics

This project involves implementing Lakehouse architecture on the Azure Databricks platform to analyze bike share data stored in a data lake and leverage the power of Spark for data processing. The goal of this project is to build a scalable and efficient data analytics solution using Azure Databricks and Azure Data Lake

## Data 
Divvy is a bike sharing program in Chicago, Illinois USA that allows riders to purchase a pass at a kiosk or use a mobile application to unlock a bike at stations around the city and use the bike for a specified amount of time. The bikes can be returned to the same station or to another station. The City of Chicago makes the anonymized bike trip data publicly available for projects like this where we can analyze the data.

    Payments Data: Contains ride payments information.
    Riders Data: Contains generated customer information for the purpose of this project.
    Stations Data: Contains longitudes, latitudes and station names information.
    Trips Data: Contains customer trips facts.

## Project Structure
The project follows an ELT (Extract, Load, Transform) structure and is organized into the following components:

    Data Extraction: In this initial step, bike share data stored in a data lake is extracted using PySpark. The data is read from the data lake and loaded into the Azure Databricks environment for further processing.
    Data Loading: Once the data is extracted, it is loaded into the Databricks Lakehouse Filesystem (DBFS) using Spark SQL commands. This step involves creating tables and schemas to store the data in a structured format.
    Data Transformation: The loaded data undergoes transformation using PySpark. This includes cleaning, filtering, aggregating, and joining the data to prepare it for analysis. The transformed data is transformed into a star schema, which is optimized for analytical purposes.
    Data Lakehouse Architecture: The transformed data, organized in a star schema, is stored in the Azure Data Lake using the Lakehouse architecture. This architecture combines the benefits of data lakes and data warehouses, allowing for schema-on-read and providing flexibility in data exploration and analysis.

## Tools and Technologies Used
The project utilizes the following tools and technologies:

    Azure Databricks: A collaborative Apache Spark-based analytics platform.
    Azure Data Lake: A scalable and secure data lake storage and analytics service.
    PySpark: The Python API for Apache Spark, used for data extraction, transformation, and analysis.

## Image Results

**Data Star Schema**
![ERP](https://github.com/DchemistRae/DEND-projects/blob/main/Building%20Data%20warehouse%20for%20Bike%20Share%20Data%20Analytics/images/ERP%20diagram.png)
