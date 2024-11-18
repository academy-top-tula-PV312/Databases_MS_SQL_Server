USE air_flights_db

--SELECT a.title AS [airport], 
--	   c.title AS [city]
--	FROM airports AS a, 
--		 cities AS c
--	WHERE a.activity = 1
--		AND a.city_id = c.id

--SELECT a.title AS [airport], 
--	   c.title AS [city]
--	FROM airports AS a
--	INNER JOIN cities AS c
--		ON a.city_id = c.id
--	WHERE a.activity = 1

--SELECT a.title AS [airport], 
--	   c.title AS [city]
--	FROM airports AS a
--	LEFT OUTER JOIN cities AS c
--		ON a.city_id = c.id
----	WHERE a.activity = 1

--SELECT a.title AS [airport], 
--	   c.title AS [city]
--	FROM airports AS a
--	RIGHT OUTER JOIN cities AS c
--		ON a.city_id = c.id

--SELECT a.title AS [airport], 
--	   c.title AS [city]
--	FROM airports AS a
--	FULL OUTER JOIN cities AS c
--		ON a.city_id = c.id

--SELECT c.title, COUNT(a.id)
--	FROM cities AS c
--		JOIN airports AS a
--		ON a.city_id = c.id
--	GROUP BY c.title