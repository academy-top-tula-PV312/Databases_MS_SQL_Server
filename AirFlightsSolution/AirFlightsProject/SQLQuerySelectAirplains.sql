USE air_flights_db

--SELECT pl.number AS number,
--	   l.title AS airline,
--	   mk.title AS maker,
--	   m.title AS model
--	FROM airplanes AS pl
--	JOIN models AS m
--		ON pl.model_id = m.id
--	JOIN airlines AS l
--		ON pl.airline_id = l.id
--	JOIN makers AS mk
--		ON m.maker_id = mk.id

SELECT l.title AS airline,
		COUNT(*)
	FROM airplanes AS pl
	JOIN models AS m
		ON pl.model_id = m.id
	JOIN airlines AS l
		ON pl.airline_id = l.id
	JOIN makers AS mk
		ON m.maker_id = mk.id
	GROUP BY l.title