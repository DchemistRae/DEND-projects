# 🚀 Building a Data Warehouse for Bike Share Data Analytics

This project is dedicated to constructing a data warehouse solution using Azure Synapse Analytics for comprehensive bike share data analytics. The primary objective is to establish a robust data warehouse, enabling analysts to derive meaningful insights from the available datasets.

## Data
Divvy, a bike-sharing program in Chicago, Illinois, USA, provides anonymized bike trip data, allowing riders to unlock bikes at various city stations. The data comprises:

- **Payments Data:** Ride payments information.
- **Riders Data:** Generated fake customer information for project purposes.
- **Stations Data:** Longitudes, latitudes, and station names information.
- **Trips Data:** Customer trip facts.

## Project Structure

The project unfolds through the following key components:

1. **Load data into an Azure Postgres database using python:**
    - The data files were initially imported into a PostgreSQL database using a Python script, available [here](https://github.com/udacity/Azure-Data-Warehouse-Project/tree/main/starter), simulating an OLTP data source scenario.

2. **Importing Data into Synapse:**
    - Leveraging Azure Synapse Analytics, an ingest wizard created a one-time pipeline, loading data from PostgreSQL into Azure Blob Storage.

3. **Loading Data into external tables in the data warehouse:**
    - Utilizing script-generating SQL functions, data from Blob Storage is loaded into external staging tables in the data warehouse, created using the serverless SQL Pool.

4. **Designing the Star Schema:**
    - Identifying business outcomes and designing a star schema aligned with project analytical needs.

5. **Transforming Data into Star Schema:**
    - Data in the staging tables was transformed into fact and dimension tables to match the designed star schema using SQL within the Synapse Analytics service.

    *Note: The data warehouse was created on a serverless SQL pool in Synapse; hence, all tables were created as external tables.*

## Tools and Technologies Used

The project leverages the following tools and services:

- **Python:** Version 3.6 and above to load data into the Postgres database on Azure.
- **Postgres Database:** Simulated OLTP database for production scenario emulation.
- **Synapse Analytics:** The ultimate data warehouse where all data is loaded for analytics purposes.

## Image Results

**DWH Star Schema**
![ERP](https://github.com/DchemistRae/DEND-projects/blob/main/Building%20Data%20warehouse%20for%20Bike%20Share%20Data%20Analytics/images/ERP%20diagram.png)

