
-- 1. Create table production_details consisting
-- attributes: emp_id, f_name, l_name, job_type, and
-- salary.
CREATE TABLE production_details(
emp_id INT,
f_name VARCHAR(50),
l_name VARCHAR(50),
job_type VARCHAR(50),
salary INT);
INSERT INTO production_details (emp_id,f_name,l_name,job_type,salary)
VALUES (1,'arun','khan','manager',90000);
INSERT INTO production_details (emp_id,f_name,l_name,job_type,salary)
VALUES (3,'chitra','kapoor','engineer',60000);
INSERT INTO production_details(emp_id,f_name,l_name,job_type,salary)
VALUES (5,'emma','dutt','engineer',55000);

-- 2. Populate the production_details table with values
-- from the employee table with details of the
-- employees who are working in the production
-- department.
-- 3. 
-- Update Chitra&#39;s Job_type to CEO in

-- production_details table.
UPDATE PRODUCTION_DETAILS SET JOB_TYPE='CEO' WHERE
F_NAME='CHITRA';
SELECT * FROM PRODUCTION_DETAILS;
-- 4. Update employee 3's job and salary in
-- production_details table to match that of employee
-- 4's of employee table.
UPDATE PRODUCTION_DETAILS SET SALARY=(SELECT SALARY FROM
EMPLOYEE WHERE EMP_ID=1) WHERE EMP_ID=3;
SELECT * FROM PRODUCTION_DETAILS
-- 5. Delete employee 5's details from
-- production_details.
DELETE FROM PRODUCTION_DETAILS WHERE EMP_ID=5;
SELECT * FROM PRODUCTION_DETAILS;

-- 6. Delete the employee's details in production_details
-- where the salary is greater than of Dheeraj's salary
-- in the employee table.
DELETE FROM PRODUCTION_DETAILS WHERE EMP_ID=1;
SELECT * FROM PRODUCTION_DETAILS;
-- 7. Similar to question 1 and 2, Create and populate a
-- different table for the Marketing department (named
-- marketing_details) with attributes emp_id, f_name,
-- job_type and salary.
CREATE TABLE marketing_details(
emp_id INT,
f_name VARCHAR(50),
job_type VARCHAR(50),
salary INT);
INSERT INTO marketing_details (emp_id,f_name,job_type,salary)
VALUES (1,'arun','manager',90000);
INSERT INTO marketing_details (emp_id,f_name,job_type,salary)
VALUES (2,'barun','manager',80000);
INSERT INTO marketing_details (emp_id,f_name,job_type,salary)
VALUES (3,'chitra','engineer',60000);
INSERT INTO marketing_details (emp_id,f_name,job_type,salary)
VALUES (4,'dhirag','manager',75000);
INSERT INTO marketing_details (emp_id,f_name,job_type,salary)
VALUES (5,'emma','engineer',55000);
INSERT INTO marketing_details (emp_id,f_name,job_type,salary)
VALUES (6,'floki','accountant',70000);
INSERT INTO marketing_details (emp_id,f_name,job_type,salary)
VALUES (7,'dheeraj','clerk',40000);
INSERT INTO marketing_details (emp_id,f_name,job_type,salary)
VALUES (8,'saul','engineer',60000);
INSERT INTO marketing_details (emp_id,f_name,job_type,salary)
VALUES (9,'mou','clerk',30000);
INSERT INTO marketing_details (emp_id,f_name,job_type,salary)
VALUES (10,'sunny','salesman',20000);
INSERT INTO marketing_details (emp_id,f_name,job_type,salary)
VALUES (11,'bobby','engineer',35000);
INSERT INTO marketing_details (emp_id,f_name,job_type,salary)
VALUES (12,'amir','salesman',15000);
UPDATE MARKETING_DETAILS SET JOB_TYPE='CEO' WHERE
F_NAME='barun';
SELECT * FROM MARKETING_DETAILS;
-- 8. Update table marketing_details and Make Barun

-- CE0 of the company.
UPDATE MARKETING_DETAILS SET JOB_TYPE='CEO' WHERE
F_NAME='BARUN';
SELECT * FROM MARKETING_DETAILS;
-- 9. Increase the salary of the employees by 50% who
-- are working as salesman in the marketing_details
-- table.
UPDATE MARKETING_DETAILS SET SALARY = SALARY + (SALARY/2)
WHERE JOB_TYPE='SALESMAN';
SELECT * FROM MARKETING_DETAILS;
-- 10. Update the employee table using the
-- marketing_details table. (using merge statement)
INSERT IGNORE INTO EMPLOYEE SELECT * FROM MARKETING_DETAILS;
-- 11. Show the data from production_details.
-- SELECT * FROM PRODUCTION_DETAILS;

-- 12. Commit the database.
COMMIT;
-- 13. Delete a tuple from production_details where
-- emp_id=1.
DELETE FROM PRODUCTION_DETAILS WHERE EMP_ID=1;

-- 14. Show the data from production_details.
SELECT * FROM PRODUCTION_DETAILS;
-- 15. Rollback the database to the previous saved
-- state.
ROLLBACK;
-- 16. Show the data from production_details.

-- 17. Create a savepoint (named abc).
SAVEPOINT abc;
-- 18.
--  Delete a tuple from production_details where
-- emp_id=1.
DELETE FROM PRODUCTION_DETAILS WHERE EMP_ID=1;

-- 19.
 Show the data from production_details.
SELECT * FROM PRODUCTION_DETAILS;

-- 20. Rollback the database to abc.
ROLLBACK TO SAVEPOINT abc;

-- 21.
 Show the data from production_details.
SELECT * FROM PRODUCTION_DETAILS;
