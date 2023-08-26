
-- 1
-- 1.Create a table emp12, with attributes
-- empid,empname, phno, age, and emp_country. Make
-- emp id the primary key of the table. Make empname
-- not null, phno unique and put a check constraint on age
-- which make sure employees are not below 18. Put a
-- default value “India'' on emp_country.
CREATE TABLE emp12(
empid VARCHAR(20) NOT NULL,
empname VARCHAR(30) NOT NULL,
phno VARCHAR(15) UNIQUE,
age INTEGER,
CHECK (age>=18),
empcountry VARCHAR(30) DEFAULT 'INDIA' ,
PRIMARY KEY(empid)
);
DESC emp12;
-- 2.
-- Insert the following tuples into emp12 table.
INSERT INTO emp12 VALUES('112' , 'Michael' , '234' , 19 ,
'Russia');

INSERT INTO emp12(empid , empname , phno , age)
VALUES('113' , 'Abdul' , '913' , 25 );
INSERT INTO emp12 VALUES( '131' ,' ', '678' , 43 , 'USA');
INSERT INTO emp12 VALUES('132' , 'Riya' , '234' , 22 ,
'India');
INSERT INTO emp12 VALUES('113' , 'Lily' , '876' , 60 ,
'UK');
INSERT INTO emp12 VALUES('127' , 'Dino' , '777' , 19 ,
'Italy');
INSERT INTO emp12 (empid , empname , phno , empcountry)
VALUES('117' , 'Indira' , '676' , ' ');
SELECT *FROM emp12;
-- 3.
--  Drop the check constraint on age.
ALTER TABLE emp12
DROP CONSTRAINT age;
-- 4. Put a default constraint with value 18 on age along
-- with a check constraint which ensures age value is
-- greater than or equal to 18 and less than or equal to


ALTER TABLE emp12
ADD CONSTRAINT age1 CHECK (Age>=18 AND Age<=70);
-- 5. 
-- Insert the following rows in the emp12 table.
INSERT INTO emp12 VALUES('114' , 'Raj' , '238' , 54 ,
'USA');
INSERT INTO emp12 VALUES('115' , 'Abhay' , '222' , NULL,NULL);//
-- 6. Create table projectx with attributes pid, pname,
-- phead, ploc and pmembers. pmembers should have a
-- default value of 5. Make (pid,pname) the primary key.
-- Use a constraint named uc_px_34 to make phead and
-- ploc unique. Put a check constraint named ck_px_5 on
-- pmembers which ensures that the number of pmembers
-- must not exceed 5.
CREATE TABLE projectx(
pid VARCHAR(5)NOT NULL,
pname VARCHAR(20)NOT NULL,
phead INTEGER,

ploc VARCHAR(15),
pmembers INTEGER,
CONSTRAINT pk_px_34 PRIMARY KEY (pid , pname),
CONSTRAINT uc_px_34 UNIQUE (phead , ploc),
CONSTRAINT ck_px_5 CHECK (pmembers<=5)
);
-- 7.Drop the primary key of the projectx table.
ALTER TABLE projectx
DROP CONSTRAINT pk_px_34;
-- 8.Put a constraint named pk_px_1 on pid, making pid
-- the primary key of the table.
ALTER TABLE projectx
ADD CONSTRAINT pk_px_1 PRIMARY KEY(pid);
-- 9.Insert the following rows in projectx table.
INSERT INTO projectx VALUES('a11' , 'Dexter' , 112 ,
'Miami' , 2);
INSERT INTO projectx VALUES('p67' , 'Luna' , 113 ,
'Chennai' , 3);
INSERT INTO projectx VALUES('x55' , 'East_west' , 114 ,
'Japan' , NULL);
SELECT * FROM projectx;

-- 10. Delete all rows from emp12 table except the rows
-- having primary keys (112, 113, 114).
DELETE FROM emp12 WHERE empid>='115';
-- 11. Insert a column named project in the emp12
-- table.
ALTER TABLE emp12
ADD projrct varchar(3);
-- 12.
--  Update the table as follows.
UPDATE emp12
SET projrct = 'a11'
WHERE empid = 112;
UPDATE emp12
SET projrct = 'p67'
WHERE empid = 113;
UPDATE emp12
SET projrct = 'x55'
WHERE empid = 114;
-- 13. Make the project attribute of the emp12 table a
-- foreign key that links it to the pid attribute of the
-- projectx table.
ALTER TABLE emp12 ADD FOREIGN KEY (projrct) REFERENCES
projectx(pid);
-- 14. Insert the following tuples in the emp12 table.
insert into emp12(empid,empname,phno,projrct)VALUES
(115,'Bono',910,'a11');
insert into emp12(empid,empname,phno,age,empcountry,projrct)
VALUES (116,'caitlin',660,25,'uk','p67');
insert into emp12(empid,empname,phno,age,projrct)
VALUES(117,'rajesh',200,60,'x50');

-- 15.Make the phead attribute of the projectx table a
-- foreign key that links it to the empid attribute of the
-- emp12 table.
ALTER TABLE projectx ADD FOREIGN KEY (phead) REFERENCES
emp12(empid);
-- 18. Make emp_id the primary key of the employee
-- table (of assignment 2).
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
-- 20. Make d_name the primary key of the department
-- table (of assignment 2).
CREATE TABLE department
(
d_name varchar(20)NOT NULL PRIMARY KEY,
d_loc varchar(20),
hod_id INTEGER NOT NULL
);
-- 21. Make the dept attribute of the employee table a
-- foreign key refering to the d_name attribute of the
-- department table (of assignment 2).
ALTER TABLE employee
ADD FOREIGN KEY (dept) REFERENCES department(d_name);

