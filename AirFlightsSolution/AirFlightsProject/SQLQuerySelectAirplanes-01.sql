USE air_flights_db
GO

--SELECT p.number,
--	   mk.title AS makers,
--	   m.title AS model, 
--	   l.title AS airline
--	FROM airplanes AS p,
--		 models AS m,
--		 airlines AS l,
--		 makers as mk
--	WHERE p.model_id = m.id 
--		  AND p.airline_id = l.id
--		  AND m.maker_id = mk.id

		
--SELECT TOP 10 p.number,
--	   mk.title AS makers,
--	   m.title AS model, 
--	   l.title AS airline
--	FROM airplanes AS p
--	INNER JOIN models AS m 
--		ON p.model_id = m.id
--	JOIN airlines AS l
--		ON p.airline_id = l.id
--	JOIN makers AS mk
--		ON m.maker_id = mk.id
--	ORDER BY airline
	-- WHERE l.id NOT BETWEEN 3 AND 5 --l.id >= 3 AND l.id <= 5
	-- WHERE l.id NOT IN (2, 4, 6) --l.id = 2 OR l.id = 4 OR l.id = 6

SELECT DISTINCT mk.title AS maker,
	   m.title AS model
	FROM airplanes AS p
	JOIN models AS m
		ON p.model_id = m.id
	JOIN makers AS mk
		ON m.maker_id = mk.id