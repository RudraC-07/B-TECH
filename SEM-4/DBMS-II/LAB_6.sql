CREATE TABLE Products (
 Product_id INT PRIMARY KEY,
 Product_Name VARCHAR(250) NOT NULL,
 Price DECIMAL(10, 2) NOT NULL
);

INSERT INTO Products (Product_id, Product_Name, Price) VALUES
(1, 'Smartphone', 35000),
(2, 'Laptop', 65000),
(3, 'Headphones', 5500),
(4, 'Television', 85000),
(5, 'Gaming Console', 32000);



----------PART-A(CURSOR)----------


--1. Create a cursor Product_Cursor to fetch all the rows from a products table.
DECLARE @ID INT , @NAME VARCHAR(250) , @PRICE DECIMAL(10,2)

DECLARE Product_Cursor CURSOR
FOR 
	SELECT * FROM Products;

OPEN Product_Cursor

FETCH NEXT FROM Product_Cursor INTO @ID, @NAME, @PRICE

WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @ID AS ID, @NAME AS NAME, @PRICE AS PRICE
		FETCH NEXT FROM Product_Cursor INTO @ID, @NAME, @PRICE
	END

CLOSE Product_Cursor;

DEALLOCATE Product_Cursor;


--2. Create a cursor Product_Cursor_Fetch to fetch the records in form of ProductID_ProductName.
--(Example: 1_Smartphone)
DECLARE @P_ID INT , @P_NAME VARCHAR(250)

DECLARE Product_Cursor_Fetch CURSOR
FOR 
	SELECT Product_id, Product_Name FROM Products;

OPEN Product_Cursor_Fetch

FETCH NEXT FROM Product_Cursor_Fetch INTO @P_ID, @P_NAME

WHILE @@FETCH_STATUS = 0
	BEGIN
		PRINT CONCAT(@P_ID,'_',@P_NAME)
		FETCH NEXT FROM Product_Cursor_Fetch INTO @P_ID, @P_NAME
	END

CLOSE Product_Cursor_Fetch;

DEALLOCATE Product_Cursor_Fetch;


--3. Create a Cursor to Find and Display Products Above Price 30,000.
DECLARE @PR_NAME VARCHAR(250) , @PR_PRICE DECIMAL(10,2)

DECLARE Product_Find_And_Display_Cursor CURSOR
FOR 
	SELECT Product_Name, Price FROM Products WHERE Price > 30000;

OPEN Product_Find_And_Display_Cursor

FETCH NEXT FROM Product_Find_And_Display_Cursor INTO @PR_NAME, @PR_PRICE

WHILE @@FETCH_STATUS = 0
	BEGIN
		PRINT @PR_NAME 
		FETCH NEXT FROM Product_Find_And_Display_Cursor INTO @PR_NAME, @PR_PRICE
	END

CLOSE Product_Find_And_Display_Cursor;

DEALLOCATE Product_Find_And_Display_Cursor;


--4. Create a cursor Product_CursorDelete that deletes all the data from the Products table.
DECLARE @PROD_ID INT

DECLARE Product_CursorDelete CURSOR
FOR 
	SELECT Product_id FROM Products;

OPEN Product_CursorDelete

FETCH NEXT FROM Product_CursorDelete INTO @PROD_ID

WHILE @@FETCH_STATUS = 0
	BEGIN
		DELETE FROM Products WHERE  Product_id = @PROD_ID
		FETCH NEXT FROM Product_CursorDelete INTO @PROD_ID
	END

CLOSE Product_CursorDelete;

DEALLOCATE Product_CursorDelete;


----------PART-B(CURSOR)----------


--5. Create a cursor Product_CursorUpdate that retrieves all the data from the products table and increases
--the price by 10%.
DECLARE @PRO_ID INT

DECLARE Product_CursorUpdate CURSOR
FOR 
	SELECT Product_id FROM Products;

OPEN Product_CursorUpdate

FETCH NEXT FROM Product_CursorUpdate INTO @PRO_ID

WHILE @@FETCH_STATUS = 0
	BEGIN
		UPDATE Products SET  Price = Price+(0.1)*Price
		WHERE Product_id = @PRO_ID
		FETCH NEXT FROM Product_CursorUpdate INTO @PRO_ID
	END

CLOSE Product_CursorUpdate;

DEALLOCATE Product_CursorUpdate;


--6. Create a Cursor to Rounds the price of each product to the nearest whole number.DECLARE @PRODUCT_ID INT;

    DECLARE CURSOR_PRODUCT CURSOR
    FOR SELECT PRODUCT_ID 
        FROM PRODUCTS;

    OPEN CURSOR_PRODUCT;

    FETCH NEXT FROM CURSOR_PRODUCT
    INTO @PRODUCT_ID;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        UPDATE PRODUCTS
        SET PRICE = ROUND(PRICE,0)
        WHERE PRODUCT_ID = @PRODUCT_ID;
        
        FETCH NEXT FROM CURSOR_PRODUCT
        INTO @PRODUCT_ID;
    END

    CLOSE CURSOR_PRODUCT;

DEALLOCATE CURSOR_PRODUCT;


----------PART-C(CURSOR)----------


CREATE TABLE NEWPRODUCTS (
 PRODUCT_ID INT PRIMARY KEY,
 PRODUCT_NAME VARCHAR(250) NOT NULL,
 PRICE DECIMAL(10, 2) NOT NULL
);
-- INSERT DATA INTO THE PRODUCTS TABLE
INSERT INTO NEWPRODUCTS (PRODUCT_ID, PRODUCT_NAME, PRICE) VALUES
(1, 'SMARTPHONE', 35000),
(2, 'LAPTOP', 65000),
(3, 'HEADPHONES', 5500),
(4, 'TELEVISION', 85000),
(5, 'GAMING CONSOLE', 32000);

--SELECT * FROM NEWPRODUCTS
--SELECT * FROM Products
--truncaTE TABLE NEWPRODUCTS

--7. Create a cursor to insert details of Products into the NewProducts table if the product is “Laptop”
--(Note: Create NewProducts table first with same fields as Products table)
DECLARE @PRODUCT_ID INT,@PRODUCT_NAME VARCHAR(250),@PRICE DECIMAL(10, 2);

    DECLARE CURSOR_PRODUCT CURSOR
    FOR SELECT * 
        FROM PRODUCTS;

    OPEN CURSOR_PRODUCT;

    FETCH NEXT FROM CURSOR_PRODUCT
    INTO @PRODUCT_ID,@PRODUCT_NAME,@PRICE;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        IF (@PRODUCT_NAME = 'LAPTOP')
            INSERT INTO NEWPRODUCTS VALUES
            (@PRODUCT_ID , @PRODUCT_NAME , @PRICE)
        
        FETCH NEXT FROM CURSOR_PRODUCT
        INTO @PRODUCT_ID,@PRODUCT_NAME,@PRICE;
    END

    CLOSE CURSOR_PRODUCT;

DEALLOCATE CURSOR_PRODUCT;


--8. Create a Cursor to Archive High-Price Products in a New Table (ArchivedProducts), Moves products
--with a price above 50000 to an archive table, removing them from the original Products table.
CREATE TABLE ARCHIVEDPRODUCTS (
    PRODUCT_ID INT PRIMARY KEY,
    PRODUCT_NAME VARCHAR(250) NOT NULL,
    PRICE DECIMAL(10, 2) NOT NULL
);

DECLARE @PRODUCT_ID INT,@PRODUCT_NAME VARCHAR(250),@PRICE DECIMAL(10, 2);

    DECLARE CURSOR_PRODUCT CURSOR
    FOR SELECT * 
        FROM PRODUCTS;

    OPEN CURSOR_PRODUCT;

    FETCH NEXT FROM CURSOR_PRODUCT
    INTO @PRODUCT_ID,@PRODUCT_NAME,@PRICE;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        IF(@PRICE > 50000) 
        BEGIN
            DELETE FROM PRODUCTS 
            WHERE PRODUCT_ID = @PRODUCT_ID;

            INSERT INTO ARCHIVEDPRODUCTS VALUES
            (@PRODUCT_ID,@PRODUCT_NAME,@PRICE);
        END
        
        FETCH NEXT FROM CURSOR_PRODUCT
        INTO @PRODUCT_ID,@PRODUCT_NAME,@PRICE;
    END

    CLOSE CURSOR_PRODUCT;

DEALLOCATE CURSOR_PRODUCT;

--SELECT * FROM ARCHIVEDPRODUCTS