USE air_flights_db
GO

--SELECT a.title AS airport,
--	   l.title AS airline
--	FROM airports_airlines AS aa
--	JOIN airports AS a
--		ON aa.airport_id = a.id
--	JOIN airlines AS l
--		ON aa.airline_id = l.id

SELECT a.title AS airport,
	   COUNT(*) AS [airlines count]
	--INTO result_table
	FROM airports_airlines AS aa
	JOIN airports AS a
		ON aa.airport_id = a.id
	GROUP BY a.title
	-- HAVING COUNT(*) <= 5
	ORDER BY [airlines count]
	