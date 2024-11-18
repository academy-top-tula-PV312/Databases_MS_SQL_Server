USE air_flights_db

SELECT * FROM cities
	ORDER BY title

SELECT * FROM cities
	ORDER BY title
	OFFSET 3 ROWS 
	FETCH NEXT 4 ROWS ONLY