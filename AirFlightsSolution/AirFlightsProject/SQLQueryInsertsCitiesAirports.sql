USE air_flights_db

--INSERT INTO cities
--	(title)
--	VALUES
--	('������'),
--	('����� ���������'),
--	('������'),
--	('�����������'),
--	('������������'),
--	('�����������'),
--	('�������'),
--	('��������')

--SELECT * FROM cities

--INSERT INTO airports
--	(city_id, title)
--	VALUES
--	(1, '����������')
--GO

--INSERT INTO airports
--	(city_id, title)
--	VALUES
--	(
--		(SELECT id FROM cities WHERE title = '������'),
--		'�������'
--	)
--GO

--SELECT *
--	FROM airports
--	WHERE city_id = (SELECT id 
--						FROM cities 
--						WHERE title = '������')
--GO

--SELECT * FROM cities

--INSERT INTO airports
--	(city_id, title)
--	VALUES
--	(1, '�����������'),
--	(2, '�������'),
--	(3, '��. ������� �����'),
--	(4, '���������'),
--	(5, '��������')
	
--INSERT INTO airports
--	(city_id, title)
--	VALUES
--	(NULL, '���� �����������')