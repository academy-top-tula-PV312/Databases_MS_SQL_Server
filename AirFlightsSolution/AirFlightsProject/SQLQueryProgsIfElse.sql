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
					WHEN 1 THEN '�����������'
					WHEN 2 THEN '�������'
					WHEN 3 THEN '�����'
					WHEN 4 THEN '�������'
					WHEN 5 THEN '�������'
					WHEN 6 THEN '�������'
					WHEN 7 THEN '�����������'
				END
SELECT @dayName AS [���� ������]
