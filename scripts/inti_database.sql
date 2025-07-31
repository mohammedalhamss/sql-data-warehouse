/* 
============================
Create Database and schemas
============================
Script purpose:
Creates a new database named 'Datawarehouse' after cheching if it already exists. 
If the database exists, then it will be dropped and recreated. Additionally,
it sets uo three schemas whithin the database: 'bronze', 'silver' and 'gold'

WARNING:
Runnning this script will drop the entire 'Datawarehouse' database if exists.

*/

use master;
GO 
-- Drop and recreate tha 'DataWarehouse' data base 
  If EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
  BEGIN 
  ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE Datawarehouse;
END;
GO
  
---- CREATE 'Datawarehouse' database 
create database Datawarehouse;
use Datawarehouse;
GO
  
---- CREATE SCHEMAS
create schema  bronze;
GO
create schema  silver;
GO
create schema  gold;
GO


