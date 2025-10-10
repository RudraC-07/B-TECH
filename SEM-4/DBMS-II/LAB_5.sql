CREATE TABLE PersonInfo (
 PersonID INT PRIMARY KEY,
 PersonName VARCHAR(100) NOT NULL,
 Salary DECIMAL(8,2) NOT NULL,
 JoiningDate DATETIME NULL,
 City VARCHAR(100) NOT NULL,
 Age INT NULL,
 BirthDate DATETIME NOT NULL
);

CREATE TABLE PersonLog (
 PLogID INT PRIMARY KEY IDENTITY(1,1),
 PersonID INT NOT NULL,
 PersonName VARCHAR(250) NOT NULL,
 Operation VARCHAR(50) NOT NULL,
 UpdateDate DATETIME NOT NULL
);


----------PART-A(TRIGGER)----------


--1. Create a trigger that fires on INSERT, UPDATE and DELETE operation on the PersonInfo table to display
--a message “Record is Affected.”
CREATE TRIGGER TR_PERSON_RECORDMSG
ON PersonInfo
AFTER INSERT,UPDATE,DELETE
AS 
BEGIN
	PRINT('RECORD IS AFFECTED')
END


--2. Create a trigger that fires on INSERT, UPDATE and DELETE operation on the PersonInfo table. For that,
--log all operations performed on the person table into PersonLog.

--a
CREATE TRIGGER TR_PERSONLOG_INSERT
ON PersonInfo
AFTER INSERT
AS 
BEGIN
	DECLARE @ID INT,@NAME VARCHAR(50)

	SELECT @ID=PersonID,@NAME=PersonName FROM inserted

	INSERT INTO PersonLog VALUES(@ID,@NAME,'INSERT',GETDATE())
END

--b
CREATE TRIGGER TR_PERSONLOG_DELETE
ON PersonInfo
AFTER DELETE
AS 
BEGIN
	DECLARE @ID INT,@NAME VARCHAR(50)

	SELECT @ID=PersonID,@NAME=PersonName FROM deleted

	INSERT INTO PersonLog VALUES(@ID,@NAME,'DELETE',GETDATE())
END

--c
CREATE TRIGGER TR_PERSONLOG_UPDATE
ON PersonInfo
AFTER UPDATE
AS 
BEGIN
	DECLARE @ID INT,@NAME VARCHAR(50)

	SELECT @ID=PersonID,@NAME=PersonName FROM inserted

	INSERT INTO PersonLog VALUES(@ID,@NAME,'UPDATE',GETDATE())
END

--3. Create an INSTEAD OF trigger that fires on INSERT, UPDATE and DELETE operation on the PersonInfo
--table. For that, log all operations performed on the person table into PersonLog.

--a
CREATE TRIGGER TR_PERSONLOG_INSTDOF_INSERT
ON PersonInfo
INSTEAD OF INSERT
AS 
BEGIN
	DECLARE @ID INT,@NAME VARCHAR(50)

	SELECT @ID=PersonID,@NAME=PersonName FROM inserted

	INSERT INTO PersonLog VALUES(@ID,@NAME,'INSTDOF_INSERT',GETDATE())
END

--b
CREATE TRIGGER TR_PERSONLOG_INSTDOF_DELETE
ON PersonInfo
INSTEAD OF DELETE
AS 
BEGIN
	DECLARE @ID INT,@NAME VARCHAR(50)

	SELECT @ID=PersonID,@NAME=PersonName FROM deleted

	INSERT INTO PersonLog VALUES(@ID,@NAME,'INSTDOF_DELETE',GETDATE())
END

--c
CREATE TRIGGER TR_PERSONLOG_INSTDOF_UPDATE
ON PersonInfo
INSTEAD OF UPDATE
AS 
BEGIN
	DECLARE @ID INT,@NAME VARCHAR(50)

	SELECT @ID=PersonID,@NAME=PersonName FROM inserted

	INSERT INTO PersonLog VALUES(@ID,@NAME,'INSTDOF_UPDATE',GETDATE())
END

--4. Create a trigger that fires on INSERT operation on the PersonInfo table to convert person name into
--uppercase whenever the record is inserted.
CREATE TRIGGER TR_PERSONINFO_UPPERCASE_INSERT
ON PersonInfo
AFTER INSERT
AS 
BEGIN
	DECLARE @ID INT,@NAME VARCHAR(50)

	SELECT @ID=PersonID,@NAME=PersonName FROM inserted

	UPDATE PersonInfo SET PersonName = UPPER(@NAME) WHERE PersonID = @ID
END

--5. Create trigger that prevent duplicate entries of person name on PersonInfo table.
CREATE TRIGGER TR_PERSONINFO_PREVENT_DUPLICATE_NAME
ON PersonInfo
INSTEAD OF INSERT
AS 
BEGIN
	INSERT INTO PersonInfo (PersonID,PersonName,Salary,JoiningDate,City,Age,BirthDate)
	SELECT PersonID,PersonName,Salary,JoiningDate,City,Age,BirthDate FROM INSERTED
	WHERE PersonName NOT IN (SELECT PersonName FROM PersonInfo)
END

--6. Create trigger that prevent Age below 18 years.
CREATE TRIGGER TR_PERSONINFO_PREVENT_BELOW_AGE
ON PersonInfo
INSTEAD OF INSERT
AS 
BEGIN
	INSERT INTO PersonInfo (PersonID,PersonName,Salary,JoiningDate,City,Age,BirthDate)
	SELECT PersonID,PersonName,Salary,JoiningDate,City,Age,BirthDate FROM INSERTED
	WHERE AGE>18
END



INSERT INTO PersonInfo VALUES(107,'RAJESH',50000,GETDATE(),'VADODRA',25,'1999-12-07')
UPDATE PersonInfo SET PersonName = 'MONIL' WHERE PersonID = 101
DELETE FROM PersonInfo WHERE PersonID = 101

SELECT * FROM PersonLog
SELECT * FROM PersonInfo

DROP TRIGGER TR_PERSONLOG_INSTDOF_INSERT
DROP TRIGGER TR_PERSONLOG_INSTDOF_DELETE
DROP TRIGGER TR_PERSONLOG_INSTDOF_UPDATE