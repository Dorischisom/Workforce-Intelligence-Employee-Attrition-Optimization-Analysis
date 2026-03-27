Create database employee_attrition;

use employee_attrition;

describe attritiontable;

-- ORDER BY (Ascending)
-- 1. To Retrieve all records from the attrition table ordered by age in ascending order.
Select * From attritiontable
order by age;

-- 2. Display the attrition table, ordering the data alphabetically by department in ascending order.
Select * From attritiontable
order by department;

-- 3. Show the attrition table sorted by the number of years at the company in ascending order.
Select * From attritiontable
order by yearsatcompany;

-- ORDER BY (Descending)
-- 5. Retrieve all records from the attrition table ordered by age in descending order.
Select * From attritiontable
order by age DESC;

-- 2. Display the attrition table, ordering the data alphabetically by department in descending order.
Select * From attritiontable
order by department DESC;

-- 4. Show the attrition table sorted by the number of years at the company in descending order.
Select * From attritiontable
order by yearsatcompany DESC;


-- SUM
-- 1. Calculate the total number of years at the company for all employees.
Select Sum(yearsatcompany) As `Total Number of Years`
From attritiontable;

-- 2. Find the sum of the number of companies worked at by all companies.
Select Sum(Numcompaniesworked) AS `Total Number of Companies`
From attritiontable;

-- 3. Calculate the total age of all employees in the attrition table.
Select Sum(age) AS `Total Number of Age`
From attritiontable;

-- 4. Find the total number of attritions (yes) in the table.
SELECT SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS total_attritions
FROM attritiontable;

-- 5. Calculate the sum of years at the company for employees from the medical education field.
Select Sum(yearsatcompany) AS `Total Number of Years at the Company in the Medical Field`
From attritiontable
Where educationfield = 'Medical';


-- AVG
-- 10. Calculate the average age of employees in the attrition table.
Select Avg(age) AS `Average Age`
From attritiontable;

-- 2.  Average Tenure of Employees
Select Avg(yearsatcompany) AS `Average Number Of Years Worked`
From attritiontable;

-- 3. Average Number of Previous Companies Worked
Select Avg(numcompaniesworked) AS `Average Number Of Companies worked`
From attritiontable;

-- 6. Find the average age of employees in the research and development department.
Select Avg(age) AS `Avg No. Of Age of Research & Development Dept.`
From attritiontable
Where Department = 'Research & Development'; 

Select Avg(age) AS `Avg No. Of Age of Research & Development Dept.`
From attritiontable
Where Department Like 'R%t'; 

-- 7. Calculate the average number of years at the company for male employees.
Select Avg(yearsatcompany) AS `Avg No. Of years at company for male employees `
From attritiontable
Where gender = 'Male'; 

-- 6. Find the average age of employees from the life sciences education field.
Select Avg(age) AS `Avg No. Of Age of employees in the life sciences field`
From attritiontable
Where educationfield Like 'l%s'; 

Select Avg(age) AS `Avg No. Of Age of employees in the life sciences field`
From attritiontable
Where educationfield = 'Life Sciences'; 


-- COUNT
-- 1. Count the number of employees in the attrition table.
Select Count(*) As `Count of Employees`
From Attritiontable;

-- 1. Total Number of Attritions
Select Count(*) As `Number of employees who have attrited`
From attritiontable
Where attrition = 'Yes';

-- 8. Count the number of employees in each department.
Select Department, Count(*) As `Number of employees`
From attritiontable
Group by department
Order by Count(*) desc;

-- 4. Find the count of employees from the marketing education field.
Select Count(*) As `Number of employees in the marketing field`
From attritiontable
Where educationfield = 'Marketing';

-- 9. Count the number of employees who are married.
Select Count(*) As `Number of employees Married`
From attritiontable
Where MaritalStatus = 'Married';


-- MIN
-- 1. Find the minimum age among all employees in the attrition table.
Select Min(age) As `Min Employee Age`
From attritiontable;

-- 2. Find the minimum number of years at the company among all employees.
Select Min(yearsatcompany) As `Min years at company`
From attritiontable;

-- 3. Find the minimum age of employees in the human resources department.
Select Min(age) As `Min age of employee in the HR Dept.`
From attritiontable
Where Department = 'Human Resources';

-- MAX
-- 1. Find the maximum age among all employees in the attrition table.
Select Max(age) AS `Max Employees Age`
From Attritiontable;

-- 2. Find the maximum number of years at the company among all employees.
Select Max(yearsatcompany) AS `Max Years at Company`
From Attritiontable;

-- 3. Find the maximum age of employees in the human resources department.
Select Max(age) As `Max age of employee in the HR Dept.`
From attritiontable
Where Department = 'Human Resources';

-- 4. Find the most recent year of joining the company among all employees.
Select Min(yearsatcompany) As `Recent year at company`
From attritiontable;
