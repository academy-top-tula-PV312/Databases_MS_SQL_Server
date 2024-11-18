WITH lines_count AS
(
SELECT l.title AS [title],
		l.id AS [id],
		COUNT(*) AS [counts]
	FROM airlines AS l
	JOIN airplanes AS p
		ON p.airline_id = l.id
	GROUP BY l.id, l.title
	HAVING COUNT(*) > 5
),
airports_count AS
(
SELECT * FROM airports
)

SELECT lc.title AS airline,
		ap.title AS aitport	
	FROM lines_count AS lc
	JOIN airports_airlines AS aa
		ON lc.id = aa.airline_id
	JOIN airports AS ap
		ON ap.id = aa.airport_id
	ORDER BY airline


