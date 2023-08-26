Select * FROM Emp06;
CREATE TABLE Emp06(
emp_no INT,
f_name VARCHAR(50),
l_name VARCHAR(50),
salary INT,
dept_no INT NOT NULL,
PRIMARY KEY(emp_no));
INSERT INTO Emp06 (emp_no,f_name,salary,dept_no)
VALUES (101,'Jai',90000,1);
INSERT INTO Emp06 (emp_no,f_name,salary,dept_no)
VALUES (102,'Viru',80000,1);
INSERT INTO Emp06 (emp_no,f_name,l_name,salary,dept_no)
VALUES (103,'Gabbar','Singh',70000,2);
INSERT INTO Emp06 (emp_no,f_name,salary,dept_no)
VALUES (104,'Basanti',60000,3);
INSERT INTO Emp06 (emp_no,f_name,l_name,salary,dept_no)
VALUES (105,'Ram','Lal',50000,3);
INSERT INTO Emp06 (emp_no,f_name,l_name,salary,dept_no)
VALUES (106,'Radha','Thakur',30000,3);
CREATE TABLE Project(
p_no INT,
p_name VARCHAR(50),
p_loc VARCHAR(50) default 'Mumbai',
Primary key(p_no));
INSERT INTO Project (p_no,p_name,p_loc)
VALUES (1,'XYZ','Pune');
INSERT INTO Project (p_no,p_name,p_loc)
VALUES (2,'ABC','Pune');
INSERT INTO Project (p_no,p_name)
VALUES (3,'IJK');
SELECT * FROM Project;
CREATE TABLE Emp_Proj(
emp_no INT,
p_no INT,
Primary key(emp_no,p_no));
INSERT INTO Emp_Proj (emp_no,p_no)
VAlUES (101,1);
INSERT INTO Emp_Proj VAlUES (102,1);
INSERT INTO Emp_Proj VAlUES (103,2);
INSERT INTO Emp_Proj VAlUES (104,2);
INSERT INTO Emp_Proj VAlUES (101,2);
INSERT INTO Emp_Proj VAlUES (105,2);
SELECT * FROM Emp_Proj;
SELECT a.emp_no,a.f_name,b.p_name,c.p_no FROM Emp06 a Natural join Emp_Proj c 
Natural join Project b;
SELECT a.emp_no,a.f_name,b.p_loc,b.p_name,c.p_no FROM Emp06 a Natural join Emp_Proj c 
Natural join Project b where a.f_name='Gabbar';
SELECT c.f_name,c.l_name From Emp06 c minus SELECT a.f_name,a.l_name From Emp06 a natural join Emp_Proj b; 
SELECT a.f_name,a.l_name From Emp06 a left Outer join Emp_Proj b on a.emp_no = b.emp_no minus 
SELECT a.f_name,a.l_name From Emp06 a right Outer join Emp_Proj b on a.emp_no = b.emp_no;
SELECT a.f_name,a.l_name From Emp06 a left Outer join Emp_Proj b on a.emp_no = b.emp_no where b.p_no = null;
SELECT a.p_name,b.p_no From Project a Left outer join Emp_Proj b on a.p_no = b.p_no where b.p_no=null; 
SELECT a.p_name,b.p_no From Project a Left outer join Emp_Proj b on a.p_no = b.p_no minus 
SELECT a.p_name,b.p_no From Project a right outer join Emp_Proj b on a.p_no = b.p_no;
SELECT a.f_name,a.l_name FROM Emp06 a Natural join Emp_Proj b where b.p_no = 1
Union
SELECT a.f_name,a.l_name FROM Emp06 a Natural join Emp_Proj b Natural join Project c where c.p_name='ABC'; 
SELECT a.f_name,a.l_name FROM Emp06 a Natural join Emp_Proj b where b.p_no = 1
intersect
SELECT a.f_name,a.l_name FROM Emp06 a Natural join Emp_Proj b where b.p_no = 2;
SELECT count(a.emp_no) as noofemployees From Emp_Proj a Group by a.p_no;
SELECT dept_no,avg(salary) From Emp06 Group by dept_no;
SELECT dept_no,count(emp_no) FROM Emp06 Group by dept_no having avg(salary)>60000 and count(emp_no) > 1;
SELECT * FROM Emp06 where salary > (SELECT salary From Emp06 where f_name='Basanti');
SELECT * FROM Emp06 where salary > (SELECT avg(salary) FROM Emp06); 
SELECT * FROM Emp06 where salary = (SELECT max(salary) FROM Emp06);
SELECT * FROM Emp06 where salary = (SELECT max(salary) FROM Emp06 where dept_no=3);
select * from Emp06 order by  salary desc limit 1,1;
SELECT dept_no,avg(salary) FROM Emp06 group by dept_no order by avg(salary) DESC limit 0,1;
select * from Emp06 order by salary desc limit 2,1 ;




