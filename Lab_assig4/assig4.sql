

-- 1. WAQ to display the current date.
SELECT CURRENT_DATE(); OR SYSDATE()
-- 2. Assume that employees serve a six month
-- provisional period starting from their DOJ. After 6
-- months they get permanent status. Display all the
-- employees’ names, doj and the date on which they
-- received their permanent status as permanent_date.

SELECT f_name, l_name ,doj,DATE_ADD(doj,INTERVAL 6
MONTH)
AS Permanent_date FROM Employee;
-- 3. WAQ to display the last date of this current
-- month.
SELECT LAST_DAY(CURRENT_DATE());
--  OR CURDATE()
-- 4.
--  For all the employees display their emp_id, f_name
-- and their total experience in months.
SELECT emp_id, f_name, TIMESTAMPDIFF(MONTH, doj,
CURDATE())
FROM Employee;
-- 5. WAQ to display the date of next TUESDAY.
SELECT CURDATE() + INTERVAL 1 -WEEKDAY(CURDATE())
DAY;
-- 6. WAQ to extract the current month.
SELECT MONTH(CURDATE());
-- 7. WAQ to extract the current year.
2
SELECT YEAR(CURDATE());
-- 8. WAQ to display the absolute value of -505.
SELECT ABS(-505);
-- 9. WAQ to display the ceiling of 10.44 and 10.50 and
-- 10.65.
SELECT CEIL(10.44) , CEIL(10.50) , CEIL(10.65);
-- 10. WAQ to display the floor value of 10.44 and
-- 10.50 and 10.65.
SELECT FLOOR(10.44) , FLOOR(10.50) , FLOOR(10.65);
-- 11. Find the logarithmic value of 10 base 2.
SELECT LOG(2, 10);
-- 12. Display the remainder in 594/7.
SELECT MOD(594, 7);
-- 13. WAQ to display the value of 8 to the power 3.
SELECT POWER(8,3);
-- 14. WAQ to display the square root of 3481.
SELECT SQRT(3481);
-- 15. Display the following rounding operationsround(
-- 45.923,2), round(45.923,0), round(45.923,-1),
-- round(45.923,2), round(45.923,0), round(45.923,-2).
SELECT ROUND(45.923,2), ROUND(45.923,0),

ROUND(45.923,-1), ROUND(45.923,2), ROUND(45.923,0),
ROUND(45.923,-2);
-- 16. Display the following rounding operationstrunc(
-- 45.888,2), trunc(56.758,0), trunc(49.245,-2),
-- trunc(45.888,2), round(45.888,2).
SELECT TRUNCATE(45.888,2), TRUNCATE(56.758,0),
TRUNCATE(49.245,-2), TRUNCATE(45.888,2),
ROUND(45.888,2);
-- 17. WAQ to return the sign of 20 and -67.60 and 0.
SELECT SIGN(20), SIGN(-67.70), SIGN(0);
-- 18. Display the value of cos(45), sin(45), and tan(45).
SELECT COS(45), SIN(45), TAN(45);
-- 19. Display the ASCII character corresponding to the
-- integer 79.
SELECT CHAR(79);
-- 20.Display the f_name and l_name together using the
-- concat() function.
SELECT CONCAT(f_name, " ", l_name) FROM Employee;
-- 21. Display all the f_names in capital letters.
SELECT UPPER(f_name) FROM Employee;
-- 22. Find the length of the first name and last name
-- of all the employees who work in sales department.

SELECT LENGTH(f_name), LENGTH(l_name) FROM
Employee;
-- 23. . Determine the tax-rate for each employee
-- based on their monthly salary. The tax-rates are as
-- per the following table.
SELECT salary,
(CASE
WHEN salary < 20000 THEN 0
WHEN salary >= 20000 AND salary < 40000 THEN 9
WHEN salary >= 40000 AND salary < 60000 THEN 20
WHEN salary >= 60000 AND salary < 80000 THEN 30
ELSE 45
END) AS rate
FROM Employee;
-- 24. Find the average salary, maximum salary, minimum
-- salary and the sum of salaries from the employee
-- table.
SELECT AVG(salary) AS Avg_Salary, MAX(salary) AS
Max_Salary, MIN(salary) AS Min_Salary, SUM(salary)
AS Sum_of_Salary
FROM Employee;
-- 25. Find the average salary, maximum salary, minimum
-- salary and the sum of salaries of the employees who
-- work for the sales department.
SELECT AVG(salary) AS Avg_Salary, MAX(salary) AS
Max_Salary, MIN(salary) AS Min_Salary, SUM(salary)
AS Sum_of_Salary
FROM Employee WHERE dept = 'sales';
-- 26.Find the newest and oldest employee.
SELECT MAX(doj) AS Newest, MIN(doj) AS Oldest
FROM Employee;

-- 27. Find those two employees whose l_name comes
-- first and last in alphabetical order.
SELECT * FROM Employee
WHERE l_name = (SELECT MAX(l_name) FROM Employee)
UNION
SELECT * FROM Employee
WHERE l_name = (SELECT MIN(l_name) FROM Employee);
-- 28. Find the number of engineers.
SELECT COUNT(job_type) AS No_of_engineers
FROM Employee WHERE job_type = 'Engineer';
-- 29. Find the number of departments from the
-- employee table.
SELECT COUNT(DISTINCT(dept)) AS No_of_dept
FROM Employee;
-- 30. Find the average commission from the employee
-- table.
SELECT AVG(commision) AS Avg_Commision
FROM Employee;
6