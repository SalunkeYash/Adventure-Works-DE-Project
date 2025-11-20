-- Create view calendar

CREATE VIEW gold.calendar 
AS
SELECT
    *
FROM
    OPENROWSET
        (
            BULK'https://awstorageacco.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
            FORMAT = 'PARQUET'
        ) as quercal

-- Create view customers

CREATE VIEW gold.customers
AS
SELECT
    *
FROM
    OPENROWSET
        (
            BULK'https://awstorageacco.dfs.core.windows.net/silver/AdventureWorks_Customers/',
            FORMAT = 'PARQUET'
        ) as quercus

-- Create view AdventureWorks_Product_Categories
CREATE VIEW gold.procat
AS
SELECT
    *
FROM
    OPENROWSET
        (
            BULK'https://awstorageacco.dfs.core.windows.net/silver/AdventureWorks_Product_Categories/',
            FORMAT = 'PARQUET'
        ) as querprocat

-- Create view AdventureWorks_Products
CREATE VIEW gold.pro
AS
SELECT
    *
FROM
    OPENROWSET
        (
            BULK'https://awstorageacco.dfs.core.windows.net/silver/AdventureWorks_Products/',
            FORMAT = 'PARQUET'
        ) as querpro

-- Create view AdventureWorks_Returns
CREATE VIEW gold.ret
AS
SELECT
    *
FROM
    OPENROWSET
        (
            BULK'https://awstorageacco.dfs.core.windows.net/silver/AdventureWorks_Returns/',
            FORMAT = 'PARQUET'
        ) as querret

-- Create view AdventureWorks_Sales
CREATE VIEW gold.sales
AS
SELECT
    *
FROM
    OPENROWSET
        (
            BULK'https://awstorageacco.dfs.core.windows.net/silver/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'
        ) as quersales


-- Create view AdventureWorks_Territories
CREATE VIEW gold.terr
AS
SELECT
    *
FROM
    OPENROWSET
        (
            BULK'https://awstorageacco.dfs.core.windows.net/silver/AdventureWorks_Territories/',
            FORMAT = 'PARQUET'
        ) as querterr

-- Create view AdventureWorks_Subcategory
CREATE VIEW gold.subcat
AS
SELECT
    *
FROM
    OPENROWSET
        (
            BULK'https://awstorageacco.dfs.core.windows.net/silver/AdventureWorks_Subcategory/',
            FORMAT = 'PARQUET'
        ) as quersubcat


