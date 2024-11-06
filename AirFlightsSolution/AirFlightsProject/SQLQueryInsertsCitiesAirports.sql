USE air_flights_db

--INSERT INTO cities
--	(title)
--	VALUES
--	('Москва'),
--	('Санкт Петербург'),
--	('Казань'),
--	('Новосибирск'),
--	('Екатеринбург'),
--	('Владивосток'),
--	('Воронеж'),
--	('Новгород')

--SELECT * FROM cities

--INSERT INTO airports
--	(city_id, title)
--	VALUES
--	(1, 'Домодедово')
--GO

--INSERT INTO airports
--	(city_id, title)
--	VALUES
--	(
--		(SELECT id FROM cities WHERE title = 'Москва'),
--		'Внуково'
--	)
--GO

--SELECT *
--	FROM airports
--	WHERE city_id = (SELECT id 
--						FROM cities 
--						WHERE title = 'Москва')
--GO

--SELECT * FROM cities

--INSERT INTO airports
--	(city_id, title)
--	VALUES
--	(1, 'Шереметьево'),
--	(2, 'Пулково'),
--	(3, 'Им. Габдулы Тукая'),
--	(4, 'Толмачево'),
--	(5, 'Кольцово')
	
--INSERT INTO airports
--	(city_id, title)
--	VALUES
--	(NULL, 'Омск Центральный')