# 🚀 Building an Azure Data Lake for Bike Share Data Analytics

This project involves implementing Lakehouse architecture on the Azure Databricks platform to analyze bike share data stored in a data lake and leverage the power of Spark for data processing. The goal of this project is to build a scalable and efficient data analytics solution using Azure Databricks and Azure Data Lake

## Data
Divvy, a bike-sharing program in Chicago, Illinois, USA, provides anonymized bike trip data, allowing riders to unlock bikes at various city stations. The data comprises:

- **Payments Data:** Ride payments information.
- **Riders Data:** Generated fake customer information for project purposes.
- **Stations Data:** Longitudes, latitudes, and station names information.
- **Trips Data:** Customer trip facts.

## Project Structure
1. **Data extraction:**
    - In this initial step, bike share data stored in a data lake is extracted using PySpark. The data is read from the data lake and loaded into the Azure Databricks environment for further processing.

2. **Data Loading:**
    - Once the data is extracted, it is loaded into the Databricks Lakehouse Filesystem (DBFS) using Spark SQL commands. This step involves creating tables and schemas to store the data in a structured format.

3. **Data Transformation:**
    - The loaded data undergoes transformation using PySpark. This includes cleaning, filtering, aggregating, and joining the data to prepare it for analysis. The transformed data is transformed into a star schema, which is optimized for analytical purposes.

4. **Data Lakehouse Architectur:**
    - The transformed data, organized in a star schema, is stored in the Azure Data Lake using the Lakehouse architecture. This architecture combines the benefits of data lakes and data warehouses, allowing for schema-on-read and providing flexibility in data exploration and analysis.

## Tools and Technologies Used
## Tools and Technologies Used
The project utilizes the following tools and technologies:

- **Azure Databricks:** A collaborative Apache Spark-based analytics platform.
- **Azure Data Lake:** A scalable and secure data lake storage and analytics service.
- **Pyspark:** The Python API for Apache Spark, used for data extraction, transformation, and analysis.

## Image Results

**Star Schema**
![ERP](https://github.com/DchemistRae/DEND-projects/blob/main/Building%20a%20Data%20Lake%20for%20Bike%20Share%20Analytics/images/ERP%20diagram.png)
