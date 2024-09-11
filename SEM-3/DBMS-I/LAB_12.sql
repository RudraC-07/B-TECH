INSERT INTO Dept (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');


INSERT INTO Person (PersonID, PersonName, DepartmentID, Salary, JoiningDate, City) VALUES
(101, 'Rahul Tripathi', 2, 56000, '2000-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000, '2000-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000, '2005-02-08', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000, '2000-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 2, 34000, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500, '2005-01-09', 'Baroda'),
(110, 'Mohit Maru', 5, 14000, '2000-05-25', 'Jamnagar');


----------PART-A(COMPLEX JOINS)----------


--1. Find all persons with their department name & code.
SELECT P.PersonName, D.DepartmentCode, D.DepartmentName FROM PERSON P
LEFT JOIN DEPT D
ON D.DepartmentID = P.DepartmentID

--2. Find the person's name whose department is in C-Block.
SELECT P.PersonName FROM PERSON P
JOIN DEPT D
ON D.DepartmentID = P.DepartmentID
WHERE D.Location = 'C-Block'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT P.PersonName, P.Salary, D.DepartmentName FROM PERSON P
JOIN DEPT D
ON D.DepartmentID = P.DepartmentID
WHERE P.City = 'JAMNAGAR'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
SELECT P.PersonName, P.Salary, D.DepartmentName FROM PERSON P
JOIN DEPT D
ON D.DepartmentID = P.DepartmentID
WHERE P.City <> 'RAJKOT'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
SELECT P.PersonName FROM PERSON P
JOIN DEPT D
ON D.DepartmentID = P.DepartmentID
WHERE D.DepartmentName = 'CIVIL' AND P.JoiningDate > '2001-08-01'

--6. Find details of all persons who belong to the computer department.
SELECT * FROM PERSON P
JOIN DEPT D 
ON D.DepartmentID = P.DepartmentID
WHERE D.DepartmentName = 'COMPUTER'

--7. Display all the person's name with the department whose joining date difference with the current date
--is more than 365 days.
SELECT P.PersonName, D.DepartmentName FROM PERSON P
JOIN DEPT D
ON D.DepartmentID = P.DepartmentID
WHERE DATEDIFF(D, JoiningDate, GETDATE()) > 365

--8. Find department wise person counts.
SELECT D.DepartmentName, COUNT(P.PERSONID) FROM PERSON P
JOIN DEPT D
ON D.DepartmentID = P.DepartmentID
GROUP BY D.DepartmentName

--9. Give department wise maximum & minimum salary with department name.
SELECT D.DepartmentName, MAX(P.SALARY) AS MAX_SAL, MIN(P.SALARY) AS MIN_SAL FROM PERSON P
JOIN DEPT D
ON D.DepartmentID = P.DepartmentID
GROUP BY D.DepartmentName

--10. Find city wise total, average, maximum and minimum salary.
SELECT P.City, SUM(P.SALARY) AS TOTAL_SAL, AVG(P.SALARY) AS AVG_SAL, MAX(P.SALARY) AS MAX_SAL, MIN(P.SALARY) AS MIN_SAL FROM PERSON P
JOIN DEPT D
ON D.DepartmentID = P.DepartmentID
GROUP BY P.City

--11. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(P.SALARY) AS AVG_SAL FROM PERSON P
WHERE P.City = 'AHMEDABAD'

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In
--single column)SELECT P.PersonName + ' lives In ' + P.City + ' and works in ' + D.DepartmentName + ' Department.' FROM PERSON P
JOIN DEPT D
ON D.DepartmentID = P.DepartmentID


----------PART-B(COMPLEX JOINS)----------


--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In
--single column)
SELECT CONCAT(P.PersonName, ' earns ', P.Salary, ' from ', D.DepartmentName, ' department.') FROM PERSON P
JOIN DEPT D
ON D.DepartmentID = P.DepartmentID

--2. Find city & department wise total, average & maximum salaries.
SELECT  P.City, D.DepartmentName, SUM(P.SALARY) AS TOTAL_SAL, AVG(P.SALARY) AS AVG_SAL, MAX(P.SALARY) AS MAX_SAL FROM PERSON P
JOIN DEPT D
ON D.DepartmentID = P.DepartmentID
GROUP BY P.City, D.DepartmentName

--3. Find all persons who do not belong to any department.
SELECT P.PERSONNAME FROM PERSON P
LEFT JOIN DEPT D
ON P.DEPARTMENTID = D.DEPARTMENTID
WHERE D.DEPARTMENTID IS NULL

--4. Find all departments whose total salary is exceeding 100000.SELECT D.DEPARTMENTNAME,SUM(P.SALARY) FROM PERSON AS P
JOIN DEPT AS D
ON P.DEPARTMENTID = D.DEPARTMENTID
GROUP BY D.DEPARTMENTNAME
HAVING SUM(P.SALARY) > 10000----------PART-C(COMPLEX JOINS)------------1. List all departments who have no person.
SELECT D.DEPARTMENTNAME FROM PERSON P
JOIN DEPT D
ON P.DEPARTMENTID= D.DEPARTMENTID
GROUP BY D.DEPARTMENTNAME
HAVING COUNT(P.PERSONID)=0

--2. List out department names in which more than two persons are working.
SELECT D.DEPARTMENTNAME FROM PERSON P
JOIN DEPT D
ON P.DEPARTMENTID= D.DEPARTMENTID
GROUP BY D.DEPARTMENTNAME
HAVING COUNT(P.PERSONID) >2

--3. Give a 10% increment in the computer department employee’s salary. (Use Update)
UPDATE  PERSON
SET PERSON.SALARY = PERSON.SALARY + (SALARY)*0.1
FROM PERSON
JOIN DEPT
ON PERSON.DEPARTMENTID = DEPT.DEPARTMENTID
WHERE DEPT.DEPARTMENTNAME = 'COMPUTER'

--OR

UPDATE  PERSON
SET SALARY = SALARY + (SALARY)*0.1
WHERE DEPARTMENTID IN(SELECT DEPARTMENTID FROM DEPT WHERE DEPARTMENTNAME='COMPUTER')