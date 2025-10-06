/*
============================================
Create Database and Schemas
=============================================

Script Purpose:
This script creates a new database named 'DataWarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.
WARNING:
Running this script will drop the entire 'DataWarehouse' database if it exists.
All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.

*/

Use master;


--Drop and recreate the 'DataWareHouse' database
if Exists( select 1 from sys.databases Where name  = 'DataWarehouse')
  begin 
  ALter Database DataWarehouse set single_user with rollback immediate;
Drop Database DataWarehouse;
END;

----Create the 'DataWarehouse" Database

Create Database Datawarehouse;

Use Datawarehouse;


---Create Schemas 
 
Create Schema bronze;
Create Schema silver;
Create Schema gold;
