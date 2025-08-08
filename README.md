# Adventure-Works-DE-Project

This project demonstrates a complete end-to-end data engineering solution built on the Microsoft Azure platform. The pipeline ingests the AdventureWorks dataset from a public GitHub repository, processes it through a multi-stage architecture, and serves it to Power BI for business intelligence and analytics.

<img width="2000" height="2588" alt="image" src="https://github.com/user-attachments/assets/eb1cb424-0af5-4c3f-ae80-96fc942de03e" />

---
## 🏛️**Architecture Overview**

The solution leverages a modern data stack on Azure, following a medallion architecture (Bronze, Silver, Gold layers) to ensure data quality and scalability.

- **Orchestration**: Azure Data Factory (ADF)
- **Data Lake**: Azure Data Lake Storage (ADLS) Gen2
- **Data Transformation**: Azure Databricks (using Spark)
- **Data Warehousing**: Azure Synapse Analytics
- **Business Intelligence**: Power BI

---
## 🚀**Pipeline Flow**
The data moves through four distinct stages: 

### 1. **Ingestion (Bronze Layer)**
- **Azure Data Factory** uses a dynamic copy activity to the raw datasets via an HTTP connector from Github

<img width="1917" height="1065" alt="image" src="https://github.com/user-attachments/assets/426cbb34-106a-41fd-866f-f62c159264a0" />

- The raw data is landed in the **Bronze** container in Azure Data Lake Storage without any modifications.

<img width="1919" height="1065" alt="image" src="https://github.com/user-attachments/assets/30f9e43a-0c9e-4a7c-87a3-79627f4fa40d" />

---
### 2. **Transformation (Silver Layer)**
- **Azure Databricks** reads the raw data from the Bronze layer
- A PySpark job perfoms key transformations, including cleaning records, normalizing data formats, and structuring the data

<img width="1919" height="1065" alt="image" src="https://github.com/user-attachments/assets/5e67ab0a-d317-429d-8f46-8f438063c3da" />

- The cleaned, transformed data is saved in the **Silver** container in the efficient **Parquet** format 

<img width="1919" height="1068" alt="image" src="https://github.com/user-attachments/assets/b71b4343-3a65-4a6d-9c6c-664f5a5d15c1" />

### 3. **Warehousing (Gold Layer)**
- **Azure Synapse Analytics** connects to the Silver container using a serverless SQL pool.
- External tables and views are created on top of the Parquet files to structure the data for analysis.

<img width="1919" height="1066" alt="image" src="https://github.com/user-attachments/assets/16f66c47-7c21-43b4-922c-47f49ae855c4" />

<img width="1919" height="1066" alt="image" src="https://github.com/user-attachments/assets/9b1d3b08-3248-4702-9648-f4aeb5fa259d" />

- This final, curated data represents the Gold layer, ready for reporting.

<img width="1919" height="1066" alt="image" src="https://github.com/user-attachments/assets/327e180e-3d15-44ad-bcff-a3e050d2c8be" />

---

### 4. **Visualization** 
- **Power BI** connects directly to Azure Synapse Analytics.
- Simple dashboards and reports are built to provide actionable insights from the curated data. Although creating beautiful dashboard was not part of project, so it is kinda raw. 

<img width="1919" height="1151" alt="image" src="https://github.com/user-attachments/assets/c85424e0-ac1e-4d10-be07-1d4761fc5a50" />

---
## **Key Takeaways** ✅
This project showcases a robust, automated, and scalable data engineering solution on Azure. It effectively transforms raw, source data into high-value business insights, demonstrating a complete data lifecycle.

---
## **Acknowledgment** 🎉
This project was inspired by the work of [Ansh Lamba](https://github.com/anshlambagit). For a detailed video walkthrough of similar project, please check out [his Youtube channel](https://www.youtube.com/watch?v=0GTZ-12hYtU&t=15907s&ab_channel=AnshLamba). 
