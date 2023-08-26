

-- 1. Create and populate the following table ‘EMP06’.
-- Make Emp_no the primary key and F_name not null.
CREATE TABLE Emp06(
emp_no INT,
f_name VARCHAR(50),
l_name VARCHAR(50),
salary INT,
dept_no INT NOT NULL,
PRIMARY KEY(emp_no));;
DESC emp06;
INSERT INTO emp06(emp_no,f_name,l_name,salary,dept)
VALUES(101,'Jai','',90000,1);
INSERT INTO emp06(emp_no,f_name,l_name,salary,dept)
VALUES(102,'Viru','',80000,1);
INSERT INTO emp06(emp_no,f_name,l_name,salary,dept)
VALUES(103,'Gabbar','Singh',70000,2);
INSERT INTO emp06(emp_no,f_name,l_name,salary,dept)
VALUES(104,'Basanti','',60000,3);
INSERT INTO emp06(emp_no,f_name,l_name,salary,dept)
VALUES(105,'Ram','Lal',50000,3);
INSERT INTO emp06(emp_no,f_name,l_name,salary,dept)
VALUES(106,'Radha','Thakur',30000,3);
SELECT *FROM emp06;

-- 2.Create and populate the following table ‘PROJECT’.
-- Make P_no the primary key and put a default value
-- constraint on P_Loc with value = ‘Mumbai’.
CREATE TABLE PROJECT(
p_no INT,
p_name VARCHAR(50),
p_loc VARCHAR(50) default 'Mumbai',
Primary key(p_no));
INSERT INTO PROJECT(p_no,p_name,p_loc)
VALUES(1,'XYZ','Pune');
INSERT INTO PROJECT(p_no,p_name,p_loc)
VALUES(2,'ABC','Pune');
INSERT INTO PROJECT(p_no,p_name,p_loc) VALUES(3,'IJK','');
SELECT *FROM PROJECT;
-- 3.Create and populate the following EMP_PROJ table.

CREATE TABLE Emp_Proj(
emp_no INT,
p_no INT,
Primary key(emp_no,p_no));
INSERT INTO EMP_PROJ(emp_no,p_no) VALUES (101,1);
INSERT INTO EMP_PROJ(emp_no,p_no) VALUES (102,1);
INSERT INTO EMP_PROJ(emp_no,p_no) VALUES (103,2);
INSERT INTO EMP_PROJ(emp_no,p_no) VALUES (104,2);
INSERT INTO EMP_PROJ(emp_no,p_no) VALUES (101,2);
INSERT INTO EMP_PROJ(emp_no,p_no) VALUES (105,2);
SELECT *FROM EMP_PROJ;
4.Display the employee’s first names with the project
name’s they are working on.
SELECT ep.emp_no, e.f_name,p.p_name
FROM emp06 e, emp_proj ep, PROJECT p
WHERE e.emp_no=ep.emp_no AND ep.p_no=p.p_no;
4
5. In which city Gabbar Singh works.
SELECT e.f_name, p.p_loc
FROM emp06 e, project p, emp_proj ep
WHERE f_name='Gabbar' AND e.emp_no=ep.emp_no AND
ep.p_no=p.p_no;
-- 6. Find the employee names who are not yet assigned
-- to any project (using minus).
SELECT e.emp_no , e.f_name
FROM emp06 e MINUS
SELECT ep.emp_no, e.f_name
FROM emp_proj ep, emp06 e;

-- 7. Find the employee names who are not yet assigned
-- to any project (using outer join).
SELECT emp_no , f_name
FROM emp06 full outer join emp_proj USING(emp_no)
MINUS SELECT emp_no, f_name FROM emp06 right outer join
emp_proj USING(emp_no);
-- 8. Find the project names where no employees are
-- working (using outer join).
SELECT p_name
FROM PROJECT full outer join emp_proj USING(p_no)
MINUS SELECT p_name FROM PROJECT right outer join emp_proj
USING(p_no);
-- 9. Find all the employee names who are working in
-- project number 1 and project ‘ABC’ (using union).
SELECT e.f_name, p.p_no, p.p_name
FROM emp06 e , project p WHERE p_no= 1
UNION SELECT e.f_name, p.p_no, p.p_name
FROM emp06 e, project p where p_name='abc';

-- 10. Find all the employee names who are working in
-- both project number 1 and project number 2 (using
-- intersect).
SELECT emp_no FROM emp_proj WHERE p_no=1
intersect SELECT emp_no FROM emp_proj WHERE p_no=2;
-- 11. Find the number of employees working in each
-- project.
SELECT p_no, COUNT(p_no) AS "number of people working"
FROM emp_proj GROUP BY p_no;
-- 12. Find the average salary of each department.

SELECT dept_no, avg(salary) AS average
FROM emp06 group by dept_no;
-- 13. Find the department number with the number of
-- employees working in each department where the
-- average salary is greater than 60000 and number of
-- employees greater than 1.
SELECT dept_no, COUNT(emp_no) AS "number of employees",
avg(salary) AS avg
FROM emp06 group by(dept_no) having count(emp_no)>1 AND
avg(salary)>60000;
-- 14. Find all the employees who earn more than
-- Basanti.
select f_name, salary from emp06 where salary>60000;
-- 15. Find all the employees who earn more than the
-- average salary of all employees.
SELECT f_name, salary
FROM emp06 GROUP BY(salary, f_name) 
having avg(salary)>60000;

-- 16. Find the employee who earns the highest salary.
SELECT f_name, max(salary)
FROM emp06 group by(f_name)
HAVING MAX(salary)=(SELECT MAX(salary) FROM emp06);
-- 17. Find the employee who earns the highest salary in
-- dept_no 3.
SELECT f_name, max(salary)
FROM emp06 WHERE dept_no=3 group by(f_name) having
MAX(salary)= (select max(salary)
FROM emp06 WHERE dept_no=3);
-- 18. Find the employee earning the second highest
-- salary.
SELECT max(salary)
FROM emp06 WHERE salary<(salary MAX(salary)
FROM emp06);

-- 19. Find the dept_no having the highest average
-- salary.
SELECT max(salary)
FROM emp06 WHERE salary<(salary max(salary)
FROM emp06 WHERE salary<(salary max(salary)
FROM emp06);
-- 20. Find the employee with the third highest salary
-- among all the employees.
SELECT f_name, salary
FROM(select f_name from emp06 order by salary desc)
WHERE rownum<=3 minus select f_name, salary
FROM(select f_name, salary from emp06 order by salary desc)
WHERE rownum<=2;
