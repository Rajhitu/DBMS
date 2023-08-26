-- 1. Create tables for - Student(student_id,
-- first_name, last_name, dept, Date_of_birth, gender,
-- religion), Employee, Product, Customer, and Account.
-- Identify relevant attributes for each table and make
-- sure each table has at least four columns. Ensure
-- each table has a _ID column e.g. Employee should
-- have EMPLOYEE_ID column, Student should have
-- STUDENT_ID column etc.
-- 2. Describe each table.
-- 3. Insert at least 5 distinct rows to each table.
-- 4. Fetch all data from the respective tables.
-- STUDENT TABLE:-
CREATE TABLE student (
  student_id VARCHAR(10),
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  dept INT,
  date_of_birth DATE,
  gender CHAR,
  relegion VARCHAR(50)
);
DESC student;
-- 2
INSERT INTO
  student
VALUES(
    '2006001',
    'JASON',
    'RONALD',
    5000,
    '2001-10-20',
    'M',
    'CHRISTIAN'
  );
INSERT INTO
  student
VALUES(
    '2006002',
    'CLIVE',
    'RONALD',
    10000,
    '2008-12-28',
    'M',
    'MUSLIM'
  );
INSERT INTO
  student
VALUES(
    '2005025',
    'HITU',
    'RAJ',
    8000,
    '2010-10-10',
    'M ',
    ' HINDU '
  );
INSERT INTO
  student
VALUES(
    ' 2006004 ',
    ' SIMRAM ',
    ' SHARMA ',
    1000,
    ' 2001-01-03  ',
    ' F ',
    ' HINDU '
  );
INSERT INTO
  student
VALUES(
    ' 2006005 ',
    ' SIMRAN ',
    ' SHARMA ',
    7000,
    ' 2001-10-02 ',
    'F',
    'HINDU'
  );
SELECT *
FROM student;

                                        --  EMPLOYEE TABLE: - 
CREATE TABLE employee1 (
    employee_id INT,
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    salary INT
  );
DESC employee1;
INSERT INTO
  employee1
VALUES(2006001, ' JASON ', ' RONALD ', 2500000);
INSERT INTO
  employee1
VALUES(2006002, ' CLIVE ', ' RONALD ', 2000000);
INSERT INTO
  employee1
VALUES(2005025, ' HITU ', ' RAJ ', 1500000);
INSERT INTO
  employee1
VALUES(2006004, ' SIMRAM ', ' SHARMA ', 4000000);

SELECT *
FROM employee1;

-- PRODUCT TABLE: - 

CREATE TABLE product (
    id_ INT,
    name_ VARCHAR(50),
    price INT,
    quantity INT(4) 
  );
DESC product;
INSERT INTO
  product
VALUES(2006001, ' BISCUITS ', 40, 20);
INSERT INTO
  product
VALUES(20060002, ' BEVERGAES ', 70, 80);
INSERT INTO
  product
VALUES(2005025, ' SOAP ', 15, 70);
INSERT INTO
  product
VALUES(2006004, ' DETERGENTS ', 400, 50);
INSERT INTO
  product
VALUES(2006005, ' KITCHEN ', 1000, 150);
SELECT
  *
FROM
  product;

SELECT employee_id,f_name,l_name,salary FROM employee1;

SELECT id_,name_,price,quantity FROM product;