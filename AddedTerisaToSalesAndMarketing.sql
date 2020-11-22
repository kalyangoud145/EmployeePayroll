-- Adding Terisa to both sales and marketing department
update Employee_Payroll
set Department = 'Sales' 
where Name = 'Terisa';

insert into Employee_Payroll
(
    Name,Salary,Start_Date,Gender,Address,PhoneNumber,Department,basic_pay,Net_Pay
)
VALUES
(
    'Terisa',60000.00,'2018-01-03','F','HYD','9010463323','Marketing',25000.00,50000.00
);
select * from Employee_Payroll
where Name = 'terisa'