USE air_flights_db

-- CURSORS
/*
1 DECLARE VARIABLES
2 BINDING CURSOR AND VARIABLE
3 OPEN CURSOR, EXECUTE SELECT
4 READING DATA FROM CURSOR
5 CLOSE AND CLEAR CURSOR
*/

--1
DECLARE @id INT,
		@name NVARCHAR(10),
		@date DATE,
		@time TIME

--2
DECLARE flight_cursor CURSOR
	FOR 
	SELECT id, [name], [date], [time]
	FROM flights
	WHERE airplane_id = 8

--3
OPEN flight_cursor

--4
FETCH NEXT FROM flight_cursor
	INTO @id, @name, @date, @time

WHILE @@FETCH_STATUS = 0
BEGIN
	PRINT(@name)

	FETCH NEXT FROM flight_cursor
		INTO @id, @name, @date, @time
END

--5
CLOSE flight_cursor
DEALLOCATE flight_cursor