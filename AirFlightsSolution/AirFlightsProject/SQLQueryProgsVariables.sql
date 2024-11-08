DECLARE @myVar INT = 0

SET @myVar = 123
SELECT @myVar = 321

--SELECT @myVar
--PRINT(@myVar)

SELECT @myVar = @myVar * 5
SELECT @myVar AS [Value of myVar]

DECLARE @name NVARCHAR(20) = 'Bobby',
		@birth_date DATE = '21.11.2001',
		@maried BIT = 1

DECLARE @book TABLE
(
	id INT IDENTITY NOT NULL,
	title NVARCHAR(50) NOT NULL,
	author_id INT NULL,
	price DECIMAL(8,2)
)

INSERT INTO @book
	(title, price)
	VALUES
	('Гражданский кодекс', 540.00)

SELECT * FROM @book
GO

SELECT @@SERVERNAME AS [Server name],
	   @@VERSION AS [Server version]




