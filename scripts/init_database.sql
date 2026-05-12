use master;
GO

--Drop and recreate database DataWarehouse
IF EXISTS (SELECT 1 FROM sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE DataWarehouse
END;

--Create Database
CREATE DATABASE DataWarehouse;

use DataWarehouse;

--Create schemas
create schema bronze;
create schema silver;
create schema gold;


