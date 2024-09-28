----------PART-A(ADVANCED LEVEL JOINS)----------

CREATE TABLE City (
    CityID INT PRIMARY KEY,
    Name VARCHAR(100) UNIQUE,
    Pincode INT NOT NULL,
    Remarks VARCHAR(255)
);

CREATE TABLE Village (
    VID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    CityID INT,
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);

INSERT INTO City (CityID, Name, Pincode, Remarks) VALUES
(1, 'Rajkot', 360005, 'Good'),
(2, 'Surat', 335009, 'Very Good'),
(3, 'Baroda', 390001, 'Awesome'),
(4, 'Jamnagar', 361003, 'Smart'),
(5, 'Junagadh', 362229, 'Historic'),
(6, 'Morvi', 363641, 'Ceramic');

INSERT INTO Village (VID, Name, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);


--1. Display all the villages of Rajkot city.
SELECT V.NAME FROM City C
JOIN Village V
ON C.CityID = V.CityID
WHERE C.Name = 'RAJKOT'

--2. Display city along with their villages & pin code.
SELECT C.NAME AS CITY_NAME, V.NAME AS VILLAGE_NAME, C.PINCODE FROM City C
JOIN Village V
ON C.CityID = V.CityID

--3. Display the city having more than one village.
SELECT C.Name AS CITY_NAME FROM City C
JOIN Village V
ON C.CityID = V.CityID
GROUP BY C.NAME
HAVING COUNT(V.CITYID) > 1

--4. Display the city having no village.
SELECT C.Name AS CITY_NAME FROM City C
LEFT JOIN Village V
ON C.CityID = V.CityID
GROUP BY C.NAME
HAVING COUNT(V.CITYID) = 0

--5. Count the total number of villages in each city.
SELECT C.Name AS CITY_NAME, COUNT(V.CITYID) AS NO_OF_VILLAGES FROM City C
LEFT JOIN Village V
ON C.CityID = V.CityID
GROUP BY C.Name

--6. Count the number of cities having more than one village.SELECT COUNT(*) AS NO_OF_CITY FROM CITY CWHERE C.NAME IN (SELECT C.NAME FROM City C JOIN Village V ON C.CityID = V.CityID GROUP BY C.Name HAVING COUNT(V.CITYID) > 1) CREATE TABLE STU_MASTER(	RNO INT PRIMARY KEY,	NAME VARCHAR(100),	BRANCH VARCHAR(100) DEFAULT 'GENERAL',	SPI DECIMAL(4,2) CHECK (SPI <= 10),	BACKLOG INT CHECK (BACKLOG >= 0));