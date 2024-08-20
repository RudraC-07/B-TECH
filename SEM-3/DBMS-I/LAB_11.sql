--SELECT * FROM EMPLOYEE_MASTER
--SELECT * FROM RESULT
--SELECT * FROM STU_INFO


----------PART-A(SQL JOINS)----------


--1. Combine information from student and result table using cross join or Cartesian product.
SELECT * FROM STU_INFO 
CROSS JOIN RESULT

--2. Perform inner join on Student and Result tables.
SELECT * FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO

--3. Perform the left outer join on Student and Result tables.
SELECT * FROM STU_INFO
LEFT OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO

--4. Perform the right outer join on Student and Result tables.
SELECT * FROM STU_INFO
RIGHT OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO

--5. Perform the full outer join on Student and Result tables.
SELECT * FROM STU_INFO
FULL OUTER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO

--6. Display Rno, Name, Branch and SPI of all students.
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI FROM STU_INFO AS S
LEFT OUTER JOIN RESULT AS R
ON S.RNO = R.RNO 

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI FROM STU_INFO AS S
JOIN RESULT AS R
ON S.RNO = R.RNO
WHERE S.BRANCH = 'CE'

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI FROM STU_INFO AS S
LEFT OUTER JOIN RESULT AS R
ON S.RNO = R.RNO
WHERE S.BRANCH <> 'EC'

--9. Display average result of each branch.
SELECT S.BRANCH,AVG(R.SPI) AS AVG_RESULT FROM STU_INFO AS S
JOIN RESULT AS R
ON S.RNO = R.RNO
GROUP BY S.BRANCH

--10. Display average result of CE and ME branch.
SELECT S.BRANCH,AVG(R.SPI) AS AVG_RESULT FROM STU_INFO AS S
JOIN RESULT AS R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
HAVING S.BRANCH IN ('CE','ME')


----------PART-B(SQL JOINS)----------


--1. Display average result of each branch and sort them in ascending order by SPI.
SELECT S.BRANCH,AVG(R.SPI) AS AVG_RESULT FROM STU_INFO AS S
JOIN RESULT AS R
ON S.RNO = R.RNO
GROUP BY S.BRANCH,R.SPI
ORDER BY R.SPI

--2. Display highest SPI from each branch and sort them in descending order.SELECT S.BRANCH,MAX(R.SPI) AS HIGHEST_SPI FROM STU_INFO AS S
JOIN RESULT AS R
ON S.RNO = R.RNO
GROUP BY S.BRANCH,R.SPI
ORDER BY R.SPI DESC----------PART-C(SQL JOINS)------------1. Retrieve the names of employee along with their manager’s name from the Employee table.SELECT E.NAME AS MANAGER,M.NAME AS EMPLOYEE FROM EMPLOYEE_MASTER AS EJOIN EMPLOYEE_MASTER AS MON E.EmployeeNo = M.ManagerNo