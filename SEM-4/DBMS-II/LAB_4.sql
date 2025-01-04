----------PART-A (UDF)----------

--1. Write a function to print "hello world".
CREATE OR ALTER FUNCTION fn_HelloWorld()
RETURNS VARCHAR(50)
AS
BEGIN
	RETURN 'HELLO WORLD'
END
SELECT dbo.fn_HelloWorld()

--2. Write a function which returns addition of two numbers.
CREATE OR ALTER FUNCTION fn_Addition(@N1 INT,@N2 INT)
RETURNS INT
AS
BEGIN
	DECLARE @SUM INT
	SET @SUM = @N1 + @N2
	RETURN @SUM
END
SELECT dbo.fn_Addition(2,3)

--3. Write a function to check whether the given number is ODD or EVEN.
CREATE OR ALTER FUNCTION fn_ODD_EVEN(@N1 INT)
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @MSG VARCHAR(50)
	IF @N1%2=0
		SET @MSG = 'NUMBER IS EVEN'
	ELSE
		SET @MSG = 'NUMBER IS ODD'
	RETURN @MSG
END

SELECT dbo.fn_ODD_EVEN(7)

--4. Write a function which returns a table with details of a person whose first name starts with B.
CREATE OR ALTER FUNCTION fn_B_PERSON_DETAILS()
RETURNS TABLE
AS
	RETURNS (SELECT * FROM PERSON WHERE FIRSTNAME LIKE 'B%'

SELECT * FROM dbo.fn_B_PERSON_DETAILS()

--5. Write a function which returns a table with unique first names from the person table.
CREATE OR ALTER FUNCTION fn_UNIQE_FNAME()
RETURNS TABLE
AS	
	RETURNS (SELECT DISTINCT FIRSTNAME FROM PERSON)

SELECT * FROM dbo.fn_UNIQE_FNAME()

--6. Write a function to print number from 1 to N. (Using while loop)
CREATE OR ALTER FUNCTION fn_1_TO_N(@N INT)
RETURNS VARCHAR(MAX)
AS
BEGIN
	DECLARE @STR VARCHAR(MAX),@i INT
	SET @i = 1;
	SET @STR = ''
	WHILE @i <= @N
		BEGIN
			SET @STR = @STR +' '+ CAST(@i AS VARCHAR(MAX))
			SET @i = @i +1
		END
	RETURN @STR
END

SELECT dbo.fn_1_TO_N(20)

--7. Write a function to find the factorial of a given integer.CREATE OR ALTER FUNCTION fn_FACTORIAL(@N INT)
RETURNS INT
AS
BEGIN
	DECLARE @F INT,@i INT
	SET @i = 1;
	SET @F = 1;
	WHILE @i <= @N
		BEGIN
			SET @F = @F*@i
			SET @i = @i +1
		END
	RETURN @F
END

SELECT dbo.fn_FACTORIAL(5)


----------PART-B (UDF)----------


--8. Write a function to compare two integers and return the comparison result. (Using Case statement)
CREATE OR ALTER FUNCTION fn_INT_COMPARISION(@N1 INT,@N2 INT)
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @MSG VARCHAR(50)=''
	RETURN CASE
		WHEN @N1>@N2 THEN 'N1 IS GREATER'
		WHEN @N1<@N2 THEN 'N2 IS GREATER'
		WHEN @N1=@N2 THEN 'N1 IS EQUAL TO N2'
		END
END

SELECT dbo.fn_INT_COMPARISION(8,8)

--9. Write a function to print the sum of even numbers between 1 to 20.
CREATE OR ALTER FUNCTION fn_SUM_EVEN_NO()
RETURNS INT
AS 
BEGIN
	DECLARE @I INT, @SUM INT
	SET @I=1
	SET @SUM=0
	WHILE @I<= 20
		BEGIN 
			IF @I%2=0
				SET @SUM = @SUM+@I
			SET @I = @I+1
		END
	RETURN @SUM
END

SELECT DBO.fn_SUM_EVEN_NO()

--10. Write a function that checks if a given string is a palindromeCREATE OR ALTER FUNCTION fn_PALINDROME(@N INT)RETURNS VARCHAR(50)ASBEGIN	DECLARE @NUM INT,@REM INT,@REV INT,@X INT,@MSG VARCHAR(50)	SET @X = @N	SET @NUM = @N	SET @REV = 0	WHILE @NUM!=0	BEGIN		SET @REM = @NUM%10		SET @REV = @REV*10 + @REM		SET @NUM = @NUM/10	END	IF @REV = @X		SET @MSG = 'NO. IS PALINDROME'	ELSE		SET @MSG = 'NO. IS NOT PALINDROME'	RETURN @MSGENDSELECT DBO.fn_PALINDROME(123)