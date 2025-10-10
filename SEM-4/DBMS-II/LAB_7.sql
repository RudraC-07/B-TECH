CREATE TABLE Customers (
 Customer_id INT PRIMARY KEY,
 Customer_Name VARCHAR(250) NOT NULL,
 Email VARCHAR(50) UNIQUE
);


CREATE TABLE Orders (
 Order_id INT PRIMARY KEY,
 Customer_id INT,
 Order_date DATE NOT NULL,
 FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);


----------PART-A(EXCEPTION HANDLING)----------


--1. Handle Divide by Zero Error and Print message like: Error occurs that is - Divide by zero error.
BEGIN TRY
	DECLARE @NUM1 INT = 10, @NUM2 INT = 0, @RESULT INT

	SET @RESULT = @NUM1/@NUM2
END TRY

BEGIN CATCH
	PRINT('ERROR OCCURS - DIVIDE BY ZERO ERROR')
END CATCH


--2. Try to convert string to integer and handle the error using try…catch block.
BEGIN TRY
	DECLARE @STR VARCHAR(50) = 'HARSH'
	DECLARE @STR_INT INT

	SET @STR_INT = CAST(@STR AS INT)
END TRY

BEGIN CATCH
	PRINT('ERROR OCCURS - CASTING VARCHAR TO INT ERROR')
END CATCH


--3. Create a procedure that prints the sum of two numbers: take both numbers as integer & handle
--exception with all error functions if any one enters string value in numbers otherwise print result.
CREATE OR ALTER PROCEDURE PR_SUM_OF_TWO_NUMBER 
@NUM1 INT, @NUM2 INT
AS
BEGIN
	BEGIN TRY 
		DECLARE @ANS DECIMAL(5,2)
		SET @ANS = @NUM1+@NUM2
		PRINT(@ANS)
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
	END CATCH
END

EXEC PR_SUM_OF_TWO_NUMBER 'HELLO',20


--4. Handle a Primary Key Violation while inserting data into customers table and print the error details
--such as the error message, error number, severity, and state.
BEGIN TRY
	DECLARE @ANS INT
	INSERT INTO Customers VALUES(444,'MANN','ABC@GMAIL.COM')
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE()
	PRINT ERROR_NUMBER()
	PRINT ERROR_SEVERITY()
	PRINT ERROR_STATE()
END CATCH


--5. Throw custom exception using stored procedure which accepts Customer_id as input & that throws
--Error like no Customer_id is available in database.
CREATE OR ALTER PROCEDURE PR_INPUT_REPEAT
@CUSTID INT
AS 
BEGIN
	
	BEGIN TRY
		IF NOT EXISTS (SELECT * FROM Customers WHERE Customer_id=@CUSTID)
		THROW 50001,'no Customer_id is available in database.',0
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
		PRINT ERROR_NUMBER()
		PRINT ERROR_SEVERITY()
		PRINT ERROR_STATE()
	END CATCH
END

EXEC PR_INPUT_REPEAT 20;


----------PART-B(EXCEPTION HANDLING)----------


--6. Handle a Foreign Key Violation while inserting data into Orders table and print appropriate error
--message.
BEGIN TRY
	INSERT INTO Orders VALUES(1,2,'1995-12-06')
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE()
	PRINT ERROR_NUMBER()
	PRINT ERROR_SEVERITY()
	PRINT ERROR_STATE()
END CATCH



--7. Throw custom exception that throws error if the data is invalid.
CREATE OR ALTER PROCEDURE PR_CUSTOM_ADULT_CHECK
@AGE INT
AS
BEGIN
	BEGIN TRY
		IF @AGE<18
			THROW 50002,'MEMBER REGISTERED IS NOT ADULT (INVALID DATA)',1
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
		PRINT ERROR_NUMBER()
		PRINT ERROR_SEVERITY()
		PRINT ERROR_STATE()
	END CATCH
END

EXEC PR_CUSTOM_ADULT_CHECK 15


--8. Create a Procedure to Update Customer’s Email with Error Handling
CREATE OR ALTER PROCEDURE PR_UPDATE_EMAIL
@EMAIL VARCHAR(100),@CUST_ID INT
AS
BEGIN
	BEGIN TRY
		IF NOT EXISTS(SELECT * FROM Customers WHERE Customer_id = @CUST_ID)
			THROW 50005,'NO RECORD FOUND',2

		UPDATE CUSTOMERS
		SET EMAIL = @EMAIL
		WHERE Customer_id = @CUST_ID
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
		PRINT ERROR_NUMBER()
		PRINT ERROR_SEVERITY()
		PRINT ERROR_STATE()
	END CATCH
END

EXEC PR_UPDATE_EMAIL 'ABC123@GMAIL.COM',444;

SELECT * FROM Customers



----------PART-C(EXCEPTION HANDLING)----------


--9. Create a procedure which prints the error message that “The Customer_id is already taken. Try another
--one”.
CREATE OR ALTER PROCEDURE PR_CUSTID_TAKEN
@CUST_ID INT,@CUST_NAME VARCHAR(100),@EMAIL VARCHAR(100)
AS
BEGIN
	BEGIN TRY
		IF NOT EXISTS(SELECT * FROM Customers WHERE Customer_id = @CUST_ID)
			THROW 50007,'The Customer_id is already taken. Try another one',7

		INSERT INTO Customers VALUES(@CUST_ID,@CUST_NAME,@EMAIL)
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
		PRINT ERROR_NUMBER()
		PRINT ERROR_SEVERITY()
		PRINT ERROR_STATE()
	END CATCH
END

EXEC PR_CUSTID_TAKEN 222,'MANN','ABC123@GMAIL.COM';


--10. Handle Duplicate Email Insertion in Customers Table.
CREATE OR ALTER PROCEDURE PR_ADD_EMAIL
@CUST_ID INT,@CUST_NAME VARCHAR(100),@EMAIL VARCHAR(100)
AS
BEGIN
	BEGIN TRY
		IF NOT EXISTS(SELECT * FROM Customers WHERE Email = @EMAIL)
			THROW 50010,'DUPLICATE EMAIL FOUND, TRY ANOTHER ONE',10

		INSERT INTO Customers VALUES(@CUST_ID,@CUST_NAME,@EMAIL)
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE()
		PRINT ERROR_NUMBER()
		PRINT ERROR_SEVERITY()
		PRINT ERROR_STATE()
	END CATCH
END

EXEC PR_ADD_EMAIL 333,'JAYY','ABC123@GMAIL.COM';