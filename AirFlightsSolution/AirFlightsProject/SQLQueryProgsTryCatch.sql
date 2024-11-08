BEGIN TRY
	DECLARE @num INT = 10,
			@den INT = 2,
			@frac REAL;
	SET @frac = @num / @den
END TRY
BEGIN CATCH
	SELECT ERROR_MESSAGE()
	SET @frac = 0
END CATCH

SELECT @frac