--DECLARE @var INT = 5
--DECLARE @ost INT

--IF @var % 2 = 0
--BEGIN
--	SELECT 'Even'
--	SET @ost = 10
--END
--ELSE
--	SELECT 'Odd'


--IF EXISTS(SELECT * 
--			FROM airports
--			WHERE city_id = 3)
--	SELECT 'Records exists'
--ELSE
--	SELECT 'Records not exists'


DECLARE @dateNow DATE = GETDATE()

DECLARE @dayName NVARCHAR(10)
SET @dayName = CASE DATEPART(WEEKDAY, @dateNow)
					WHEN 1 THEN 'Понедельник'
					WHEN 2 THEN 'Вторник'
					WHEN 3 THEN 'Среда'
					WHEN 4 THEN 'Четверг'
					WHEN 5 THEN 'Пятница'
					WHEN 6 THEN 'Суббота'
					WHEN 7 THEN 'Воскресенье'
				END
SELECT @dayName AS [День недели]
