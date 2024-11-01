--INSERT INTO countries (title)
--	VALUES ('Россия')
--GO

--INSERT INTO countries (title)
--	VALUES 
--	('Франция'),
--	('Англия'),
--	('США'),
--	('Германия')
--GO

--INSERT INTO publishers
--	(country_id, title)
--	VALUES
--	(1, 'Мысль')
--GO

--INSERT INTO publishers
--	(title, country_id)
--	VALUES
--	('Берлин Пресс', 2)
--GO

--UPDATE publishers SET country_id = 5
--GO

--UPDATE publishers SET country_id = 1
--	WHERE id = 1

--UPDATE publishers SET title = 'Берлин Пресс'
--	WHERE id = 2
--GO

--UPDATE books SET price = price * 1.1,
--				 pages = pages + 10
--	WHERE price < 500


--INSERT INTO publishers
--	(title, country_id)
--	VALUES
--	('jhsdffdssdf', 3)
--GO

--DELETE countries
--	WHERE id > 0

--TRUNCATE TABLE countries

--INSERT INTO Table_1
--	(title)
--	VALUES
--	('AAAA'),
--	('BBBB'),
--	('CCCC')

--DELETE Table_1 WHERE id > 0

--TRUNCATE TABLE Table_1
