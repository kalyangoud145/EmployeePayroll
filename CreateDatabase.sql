--Create DataBase
Create Database Payroll_Service
--Show all Databases
EXEC sp_databases;  
--switch to  payroll_service database
use payroll_service;
--CREATE a table Employee_Payroll with id,name,salary and start date columns
CREATE TABLE Employee_Payroll
(
    Id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    Name VARCHAR(30) NOT NULL,
    Salary money NOT NULL,
    Start_Date DATE NOT NULL
);
