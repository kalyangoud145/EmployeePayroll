--Sum of salary where gender is female display female aggregate salary
SELECT GENDER,SUM(SALARY) AS TOTAL_SALARY
FROM Employee_Payroll WHERE Gender = 'F'
GROUP BY GENDER;

--Sum of salary  when grouping by gender displays both genders
SELECT GENDER,SUM(SALARY) AS TOTAL_SALARY
FROM Employee_Payroll 
GROUP BY GENDER;

--Average Salary when grouped by gender displays both genders
SELECT GENDER,AVG(SALARY) AS AVERAGE_SALARY
FROM Employee_Payroll
GROUP BY GENDER;
--Average Salary where gender is male displays only male average salary
SELECT GENDER,AVG(SALARY) AS AVERAGE_SALARY
FROM Employee_Payroll where Gender = 'M'
GROUP BY GENDER;

--Maximum salary in each gender 
SELECT GENDER,MAX(SALARY) AS MAXIMUM_SALARY
FROM Employee_Payroll
GROUP BY GENDER;

--Maximum salary in female gender
SELECT GENDER,MAX(SALARY) AS MAXIMUM_SALARY
FROM Employee_Payroll where Gender = 'F'
GROUP BY GENDER;

--Mininum salary in each male gender gr
SELECT GENDER,MIN(SALARY) AS MINIMUM_SALARY
FROM Employee_Payroll where Gender = 'M'
GROUP BY GENDER;

--Number of male and female employees count
SELECT GENDER,COUNT(GENDER) AS TOTAL_COUNT
FROM Employee_Payroll
GROUP BY GENDER;
select * from Employee_Payroll