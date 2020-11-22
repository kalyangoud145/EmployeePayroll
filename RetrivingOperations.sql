-- Aggregate of basic pay according to gender
select employee.gender, Sum(payroll.Basic_pay) AS Total_Pay
from Payroll  inner join employee 
on Payroll.Id = employee.Id 
group by gender;
--Average of basic pay by gender
select employee.gender, AVG(payroll.Basic_pay) AS Average_Pay 
from Payroll  inner join employee 
on Payroll.Id = employee.Id
group by gender;
-- Retrive the cont of name based on gender
select gender, Count(Name) as Total_Count
from employee 
group by gender;
-- Count of each department
select Department, Count(Department) as Total_Count
from EmployeeDepartment 
group by Department;

--Minimum salary grouped by gender
select gender,MIN(payroll.Basic_pay) as Min_Pay
from Payroll payroll inner join employee emp
on payroll.Id = emp.Id
group by gender;

--Maximum salary grouped by gender
select gender,MAX(payroll.Basic_pay) as Max_Pay
from Payroll payroll inner join employee emp
on payroll.SalaryId = emp.Id
group by gender;
-- Retrive the count of person belong to each department based on employee table
select EmployeeDepartment.Department, Count(Department) as Total_Count
from EmployeeDepartment  inner join employee 
on EmployeeDepartment.DepartmentNumber = employee.DepartmentNumber
group by EmployeeDepartment.Department;
-- Retrive the maximum of basic pay according to names in employee table
select Name,MAX(payroll.Basic_pay) as Max_Pay
from Payroll payroll inner join employee emp
on payroll.SalaryId = emp.Id
group by Name;
-- Retrive all data from payroll table
select * from Payroll
-- Retrive netpay by name of employee
select Name ,Net_pay
from Payroll inner join employee on Payroll.Id = employee.Id
where Name = 'Bill'
-- Retive person data based on particular date
SELECT *  from Payroll inner join employee on Payroll.Id = employee.Id
WHERE Payroll.Start BETWEEN CAST('01-01-2020' as date) and GETDATE();