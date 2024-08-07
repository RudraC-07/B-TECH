CREATE TABLE EMP(
	EID INT,
	EName VARCHAR(20),
	Department VARCHAR(20),
	Salary INT,
	JoiningDate	DATETIME,
	City VARCHAR(20)
);

INSERT INTO EMP VALUES
(101,'RAHUL','ADMIN',56000,'1990-01-01','RAJKOT'),
(102,'HARDIK','IT',18000,'1990-09-25','AHMEDABAD'),
(103,'BHAVIN','HR',25000,'1991-05-14','BARODA'),
(104,'BHOOMI','ADMIN',39000,'1991-02-08','RAJKOT'),
(105,'ROHIT','IT',17000,'1990-07-23','JAMNAGAR'),
(106,'PRIYA','IT',9000,'1990-10-18','AHMEDABAD'),
(107,'BHOOMI','HR',34000,'1991-12-25','RAJKOT');

SELECT * FROM EMP


----------PART-A (AGGREGATE FUNCTION)----------


--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAXIMUM,MIN(SALARY) AS MINIMUM FROM EMP

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
--respectively.
SELECT SUM(SALARY) AS TOTAL_SAL,AVG(SALARY) AS AVERAGE_SAL FROM EMP

--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(EID) AS TOTAL_EMP FROM EMP

--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS MAXIMUM FROM EMP
WHERE CITY = 'RAJKOT'

--5. Give maximum salary from IT department.
SELECT MAX(SALARY) AS MAXIMUM FROM EMP
WHERE DEPARTMENT = 'IT'

--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(EID) AS TOTAL_EMP FROM EMP
WHERE JoiningDate > '1991-02-08'

--7. Display average salary of Admin department.
SELECT AVG(SALARY) AS AVERAGE_SAL FROM EMP
WHERE DEPARTMENT = 'ADMIN'

--8. Display total salary of HR department.
SELECT SUM(SALARY) AS TOTAL_SAL FROM EMP
WHERE DEPARTMENT = 'HR'

--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) AS COUNT FROM EMP

--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) AS COUNT FROM EMP 

--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) AS MIN_SAL FROM EMP
WHERE CITY = 'AHMEDABAD'

--12. Find city wise highest salary.
SELECT CITY,MAX(SALARY) AS MAX_SAL FROM EMP
GROUP BY CITY

--13. Find department wise lowest salary.
SELECT DEPARTMENT,MIN(SALARY) AS MIN_SAL FROM EMP
GROUP BY DEPARTMENT

--14. Display city with the total number of employees belonging to each city.
SELECT CITY,COUNT(EID) AS TOTAL_EMP FROM EMP
GROUP BY CITY

--15. Give total salary of each department of EMP table.
SELECT DEPARTMENT,SUM(SALARY) AS TOTAL_SAL FROM EMP
GROUP BY DEPARTMENT

--16. Give average salary of each department of EMP table without displaying the respective department
--name.
SELECT AVG(SALARY) AS AVG_SAL FROM EMP
GROUP BY DEPARTMENT


----------PART-B (AGGREGATE FUNCTION)----------


--1. Count the number of employees living in Rajkot.
SELECT CITY,COUNT(EID) AS EMP_COUNT FROM EMP
WHERE CITY = 'RAJKOT'
GROUP BY CITY

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY)-MIN(SALARY) AS DIFFERENCE FROM EMP

--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(EID) AS EMP_COUNT FROM EMP
WHERE JoiningDate < '1991-01-01'


----------PART-C (AGGREGATE FUNCTION)----------


--1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(EID) AS EMP_COUNT FROM EMP
WHERE CITY = 'RAJKOT' OR CITY = 'BARODA'

--2. Display the total number of employees hired before 1st January, 1991 in IT department.\
SELECT COUNT(EID) AS EMP_COUNT FROM EMP
WHERE JoiningDate < '1991-01-01' AND DEPARTMENT = 'IT'

--3. Find the Joining Date wise Total Salaries.
SELECT JoiningDate,SUM(SALARY) AS TOTAL_SAL FROM EMP
GROUP BY JoiningDate

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT DEPARTMENT,CITY,MAX(SALARY) AS MAX_SAL FROM EMP
WHERE CITY LIKE 'R%'
GROUP BY DEPARTMENT,CITY