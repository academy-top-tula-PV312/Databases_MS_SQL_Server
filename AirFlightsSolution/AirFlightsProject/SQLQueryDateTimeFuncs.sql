--SELECT GETDATE()
--SELECT GETUTCDATE()
--SELECT SYSDATETIME()

--SELECT SYSDATETIMEOFFSET()

--SELECT YEAR(GETDATE())
--SELECT MONTH(GETDATE())
--SELECT DAY(GETDATE())

--SELECT DATENAME(YEAR, GETDATE())
--SELECT DATENAME(QUARTER, GETDATE())
--SELECT DATENAME(MONTH, GETDATE())
--SELECT DATENAME(DAY, GETDATE())
--SELECT DATENAME(WEEK, GETDATE())
--SELECT DATENAME(WEEKDAY, GETDATE())
--SELECT DATENAME(HOUR, GETDATE())
--SELECT DATENAME(MINUTE, GETDATE())
--SELECT DATENAME(SECOND, GETDATE())
--SELECT DATENAME(MILLISECOND, GETDATE())
--SELECT DATENAME(MICROSECOND, GETDATE())
--SELECT DATENAME(NANOSECOND, GETDATE())

--SELECT DATEPART(WEEKDAY, GETDATE())
--SELECT DATEADD(MONTH, -29, GETDATE())

SELECT DATEDIFF(HOUR, GETDATE(), DATEADD(MONTH, -15, GETDATE()))