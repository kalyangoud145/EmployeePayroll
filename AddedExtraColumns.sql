--added basic_pay, Deductions, Taxable_Pay, Income_tax, Net_Pay columns to table 
Alter table employee_payroll add
basic_pay money,
Deductions money,
Taxable_Pay money,
Income_tax money,
Net_Pay money;

