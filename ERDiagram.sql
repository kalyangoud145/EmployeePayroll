-- Created employee department table
create table EmployeeDepartment
(
DepartmentNumber int NOT NULL PRIMARY KEY ,
Department varchar(20) not null
);
-- Created employee  table
create table employee
(
Id int PRIMARY KEY identity(1,1) not null ,
Name varchar(25) not null, 
Gender char(1) not null,
Phone_Number varchar(13) not null,
Address varchar(250) not null default 'India',
DepartmentNumber int not null FOREIGN KEY REFERENCES EmployeeDepartment(DepartmentNumber) 
);
-- Created payroll table
create table Payroll
(
SalaryId int not null PRIMARY KEY identity(1,1),
Start date not null,
Basic_pay money not null,
Deduction money,
Taxable_pay money,
Income_tax money,
Net_pay money not null,
Id int not null FOREIGN KEY REFERENCES employee(Id)
);
-- Inserted values into EmployeeDepartment table
insert into EmployeeDepartment values
(1,'Sales'),
(2,'DESIGNER'),
(3,'TECHIE');
-- Inserted values into employee table
insert into employee values
('Bill', 'M', '988556652', 'New York',3),
('Terissa', 'F', '8109322276', 'Atlanta',2),
('Charlie', 'M', '5545565684', 'Boston',1);
-- Inserted values into Payroll table
insert into Payroll values
( '2018-01-03', 100000, 10000, 90000, 1000, 89000,1),
('2019-11-13', 200000, 10000, 190000,3000,187000,2),
('2020-05-21', 300000, 20000, 280000, 5000, 275000,3);

