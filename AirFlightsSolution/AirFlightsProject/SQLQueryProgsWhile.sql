DECLARE @amount INT = 0,
		@N INT = 1000,
		@i INT

SET @i = 1

WHILE @i <= @N
BEGIN
	SET @amount += @i -- @amount + @i
	SET @i += 1
	--IF @i = 100
	--	RETURN
END

SELECT @amount
GO


