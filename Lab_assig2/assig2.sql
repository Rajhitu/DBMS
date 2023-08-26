-- Create a employee table:-
CREATE TABLE employee
(
emp_id INTEGER NOT NULL,
f_name VARCHAR(20),
l_name VARCHAR(20),
jobtype VARCHAR(20),
salary INTEGER,
commision INTEGER,
dept VARCHAR(20),
manager_id INTEGER,
PRIMARY KEY(emp_id),
doj VARCHAR(20)
);
INSERT INTO
employee(emp_id,f_name,l_name,jobtype,salary,dept,doj)
values(1, 'arun' , 'khan' , 'manager' ,90000, 'production' ,'1998-01-04');
INSERT INTO employee(emp_id ,
f_name,l_name,jobtype,salary,dept,doj) 
values(2 ,'barun','kumar','manager',80000,'marketing','1998-02-09');
INSERT INTO employee(emp_id ,
f_name,l_name,jobtype,salary,dept,manager_id,doj) values(3 ,
'chitra','kapoor','engineer',60000,'production',1,'1998-01-0
8');
INSERT INTO employee(emp_id ,
f_name,l_name,jobtype,salary,dept,manager_id,doj) 
values(4 ,'dheeraj','mishra','manager',75000,'sales',2,'2001-12-27');
INSERT INTO employee(emp_id ,
f_name,l_name,jobtype,salary,dept,manager_id,doj) values(5 ,
'emma','dutt','engineer',55000,'production',1,'2002-03-20');
INSERT INTO employee(emp_id ,
f_name,l_name,jobtype,salary,dept,doj) values(6 ,
'floki','dutt','accountant',70000,'accounts','2000-07-16');
INSERT INTO employee(emp_id ,
f_name,l_name,jobtype,salary,dept,manager_id,doj) values(7 ,
'dheeraj','kumar','clerk',40000,'accounts',6,'2016-07-01');
INSERT INTO employee(emp_id ,
f_name,l_name,jobtype,salary,dept,doj) values(8 ,
'saul','good','engineer',60000,'r&d','2014-09-06');
INSERT INTO employee(emp_id ,
f_name,l_name,jobtype,salary,dept,manager_id,doj) values(9 ,
'mou','bhatt','clerk',30000,'sales',4,'2018-03-08');
INSERT INTO employee(emp_id ,
f_name,l_name,jobtype,salary,commision,dept,manager_id,doj)
values(10 ,'sunny','deol','salesman',20000,10000,'marketing'
,2,'2001-03-31');
INSERT INTO employee(emp_id ,
f_name,l_name,jobtype,salary,dept,manager_id,doj) values(11,
'bobby','deol','engineer',35000,'r&d',8,'2017-10-17');
INSERT INTO employee(emp_id ,
f_name,l_name,jobtype,salary,commision,dept,manager_id,doj)
values(12,
'amir','khan','salesman',15000,5000,'marketing',2,'2013-01-1
1');
select * from employee;

--         Q3
-- Create a Department table:-
CREATE TABLE department
(
d_name varchar(20),
d_loc varchar(20),
hod_id INTEGER NOT NULL
);
INSERT INTO department VALUES('sales','kol',4);
INSERT INTO department VALUES('accounts','delhi',6);
INSERT INTO department VALUES('production','kol',1);
INSERT INTO department VALUES('marketing','kol',2);
INSERT INTO department VALUES('R&D','delhi',8);
select * from department;
-- Q4

-- Create a location table:-
CREATE TABLE location
(
loc_id INT NOT NULL,
city VARCHAR(20),
contact_no VARCHAR(10),
primary key(loc_id)
);
ALTER TABLE location
DROP COLUMN contact_no;
INSERT INTO location(loc_id,city) VALUES(1,'kolkata');
INSERT INTO location(loc_id, city) VALUES(2,'mumbai');
SELECT * from location;
-- Q30
select dept from employee;
-- 31
select distinct dept from employee;
32
select * from employee where salary>50000;

33
select emp_id from employee where manager_id<>1;
34
select * from employee where salary>=40000 AND salary<=
70000;
35
select * from employee where manager_id=1 or manager_id=6 or
manager_id=8;

36
select f_name,salary from employee where l_name='khan';
37
select f_name,salary from employee where l_name LIKE 'k%';
38
select f_name,l_name,salary from employee where l_name LIKE
'k%r';

39
select * from employee where l_name LIKE '%o__';
40
select * from employee where manager_id IS NULL;
41
select * from employee where jobtype='engineer' AND
salary>50000;
42

select * from employee where dept='production' AND
salary>60000;
43
select * from employee where jobtype<>'manager' AND
jobtype<>'engineer' AND jobtype<>'clerk';
44
select * from employee where salary>49000 OR salary<29000;
45
select * from employee where l_name NOT LIKE "%o_";

46
select * from employee where commision IS NOT NULL;
47
select SYSDATE();
48
select datediff(sysdate(),doj)/7 from employee;
49
select * from employee where emp_id=2;
50
DELETE from employee where dept='sales' AND
jobtype<>'manager';
select * from employee;

51
INSERT INTO
employee(f_name,l_name,jobtype,salary,commision,manager_id,d
oj)
VALUES('anand','patil','engineer',28000,2000,1,"2017-01-31")
;
INSERT INTO
employee(f_name,l_name,jobtype,salary,commision,manager_id,d
oj)
VALUES('anandi','patel','clerk',12000,500,1,"2017-04-01");
52
INSERT INTO department(d_name,d_loc,hod_id)
VALUES('Admin','Mumbai',5);

INSERT INTO department(d_name,d_loc,hod_id)
VALUES('Transport','Mumbai',3);
53
UPDATE employee
set dept='admin'
where f_name='anand';
54
UPDATE employee
set manager_id=1

where manager_id=2;
55
select * from employee
order by salary desc;
56
select * from employee
order by l_name;

-- 57
delete from employee
where jobtype='salesman' and datediff(sysdate(),doj)/365
< 15;
-- 58
commit;
