-- Step 1: Create a credential to authenticate with the storage account using the server's Managed Identity.
CREATE DATABASE SCOPED CREDENTIAL cred_mazur
WITH 
    IDENTITY = 'Managed Identity';

-- Step 2: Create pointers to the 'silver' and 'gold' data lake containers.
CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://awstoragedatalake0725.blob.core.windows.net/silver',
    CREDENTIAL = cred_mazur
);

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://awstoragedatalake0725.blob.core.windows.net/gold',
    CREDENTIAL = cred_mazur
);

-- Step 3: Define the format for the Parquet files to be read.
CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);
