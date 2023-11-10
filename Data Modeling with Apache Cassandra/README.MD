# Data Modeling with Apache Cassandra

## Overview

This project is all about modelling a non-relational database using the robust capabilities of Apache Cassandra. The goal here is to model event data from a music streaming app to create proper tables for various analytics questions. 

## Project Structure

### 1. ETL Pipeline

The ETL pipeline takes center stage, handling the extraction of event data from the source file, transforming it into the perfect format, and finally loading it into our Cassandra database. Expect data cleansing, filtering, and aggregating magic to ensure our data is structured for optimal querying.

### 2. Data Modeling

In this crucial phase, we dive deep into designing the data model for our Cassandra database. This involves identifying the entities, defining tables, and establishing relationships based on the unique requirements of our music-streaming app.

## Tools and Technologies Used

- **Apache Cassandra:** A highly scalable and distributed NoSQL database management system.
- **Python:** The scripting language orchestrating the ETL pipeline and facilitating interaction with the Cassandra database.
- **Apache Spark:** A fast and versatile cluster computing system playing a key role in data processing and transformation.
