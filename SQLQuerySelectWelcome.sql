--SELECT * 
--	FROM books
--GO

--SELECT title, price
--	FROM books
--GO

--SELECT title AS [title of book], 
--	   publish_year AS [year of publish], 
--	   price
--	FROM books
--	WHERE publish_year > 1991 AND price < 500

--SELECT TOP 3 *
--	FROM publishers
--	ORDER BY country_id ASC, title DESC

--SELECT DISTINCT country_id
--	FROM publishers

/*
WHERE
-------------------------------------
= равно
!=, <> - не равно
>=, !<
<=, !>

>, <

LIKE, NOT LIKE

BETWEEN, NOT BETWEEN

IN, NOT IN

EXISTS

*/

SELECT p.title AS [publisher],
		c.title AS [country]
	FROM publishers AS p, 
		 countries AS c
	WHERE p.country_id = c.id