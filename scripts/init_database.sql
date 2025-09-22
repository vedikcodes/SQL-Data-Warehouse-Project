/*
================================================================
Create Database and Schemas
================================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.


WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/





-- Create Database 'DataWarehouse'

USE master;
GO

--Drop and recreate the ;dataWarehouse' database
  IF EXISTS (SELECT 1 FROM sys.database WHERE name= 'DataWarehouse')
  BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DateWarehouse;
END;
GO

  --Create the 'DataWarehouse' database
Create database DataWarehouse;
Use DataWarehouse;
GO

  --Create SCHEMA

Create Schema bronze;
Create Schema silver;
GO
Create Schema gold;
GO
