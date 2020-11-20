-- Added phone number, address and department columns
Alter table employee_payroll add
PhoneNumber varchar(15),
Address varchar(40) DEFAULT 'Indian',
Department varchar(20);
