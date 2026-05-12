USE master;
GO

IF NOT EXISTS (
    SELECT name 
    FROM sys.databases 
    WHERE name = N'DataWarehouse'
)
BEGIN
   PRINT 'Database does not exist. Creating...';
   CREATE DATABASE DataWarehouse;
   PRINT 'Database created successfully.';
END
ELSE
BEGIN
    PRINT 'DB already exists'
END
GO

USE DataWarehouse
GO

CREATE SCHEMA bronze
GO

CREATE SCHEMA silver
GO

CREATE SCHEMA gold
GO
