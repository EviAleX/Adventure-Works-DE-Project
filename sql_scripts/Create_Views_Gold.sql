-- CREATE VIEW CALENDAR
CREATE VIEW gold.calendar
AS 
SELECT * FROM 
OPENROWSET(
    BULK 'https://awstoragedatalake0725.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS QUER1

-- CREATE VIEW CUSTOMER
CREATE VIEW gold.customers
AS 
SELECT * FROM 
OPENROWSET(
    BULK 'https://awstoragedatalake0725.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS QUER2

-- CREATE VIEW PRODUCT SUBCATEGORIES
CREATE VIEW gold.customer_categories
AS 
SELECT * FROM 
OPENROWSET(
    BULK 'https://awstoragedatalake0725.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'PARQUET'
) AS QUER3

-- CREATE VIEW PRODUCT
CREATE VIEW gold.product
AS 
SELECT * FROM 
OPENROWSET(
    BULK 'https://awstoragedatalake0725.blob.core.windows.net/silver/AdventureWorks_Product/',
    FORMAT = 'PARQUET'
) AS QUER4

-- CREATE VIEW RETURNS
CREATE VIEW gold.retur
AS 
SELECT * FROM 
OPENROWSET(
    BULK 'https://awstoragedatalake0725.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS QUER5

-- CREATE VIEW TERRITORIES
CREATE VIEW gold.territories
AS 
SELECT * FROM 
OPENROWSET(
    BULK 'https://awstoragedatalake0725.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS QUER6

-- CREATE VIEW SALES
CREATE VIEW gold.sales
AS 
SELECT * FROM 
OPENROWSET(
    BULK 'https://awstoragedatalake0725.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) AS QUER7

