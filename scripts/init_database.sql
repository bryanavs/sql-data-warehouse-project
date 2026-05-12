/***************************************************************************************
CREATE DATABASE AND SCHEMAS
****************************************************************************************
Script purpose:
The script creates a new database named 'DataWarehouse' after checking if it already exists.
If the databas exists, it is dropped and recreated. Additionally, the script set up three schemas within the database: 'bronze', 'silver' and 'gold'.

Warning:
Running this script will drop the database if exists.
All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/

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


