USE [library]
GO

--CREATE PROCEDURE MinMaxPriceBooks
--(
--	@minPrice DECIMAL(8,2) OUTPUT,
--	@maxPrice DECIMAL(8,2) OUTPUT
--)
--AS
--SELECT @minPrice = MIN(price),
--	   @maxPrice = MAX(price)
--	   FROM books
--GO

--DECLARE @min DECIMAL(8,2), @max DECIMAL(8,2)

--EXECUTE MinMaxPriceBooks @min OUTPUT, @max OUTPUT

--SELECT @min, @max

--GO

--CREATE PROCEDURE InsertCountry
--(
--	@title NVARCHAR(50),
--	@id INT OUTPUT
--)
--AS
--BEGIN
--	INSERT INTO countries
--		(title)
--		VALUES
--		(@title)
--	SET @id = @@IDENTITY
--END
--GO

--DECLARE @idCountry INT;

--EXECUTE InsertCountry 'Швеция', @idCountry OUTPUT
--SELECT @idCountry

--CREATE PROCEDURE BooksAvgPrice
--AS
--BEGIN
--	DECLARE @avg DECIMAL(8,2);
--	SELECT @avg = AVG(price)
--		FROM books
--	RETURN @avg
--END
--GO

DECLARE @avgPrice DECIMAL(8,2);

EXECUTE @avgPrice = BooksAvgPrice

SELECT @avgPrice

