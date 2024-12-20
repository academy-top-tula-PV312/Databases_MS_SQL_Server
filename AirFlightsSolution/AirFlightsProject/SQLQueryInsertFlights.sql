USE air_flights_db

INSERT INTO flights
	([name], [date], [time], [duration],
	airplane_id, airport_from_id, airport_to_id)
	VALUES
	('SU 1224', '2024-05-12', '18:20', 75, 2, 2, 10),
	('SU 1280', '2024-05-22', '09:45', 100, 5, 2, 5),
	('SU 6496', '2024-06-10', '17:15', 100, 13, 2, 6),
	('SU 2810', '2024-06-12', '22:10', 260, 8, 4, 6),
	('SU 1406', '2024-05-18', '15:30', 120, 4, 2, 7),
	('SU 1702', '2024-06-02', '20:30', 515, 7, 2, 8),
	('S7 5016', '2024-07-06', '11:35', 135, 23, 7, 6),
	('WZ 423', '2024-06-25', '17:20', 140, 53, 1, 7),
	('WZ 1033', '2024-07-02', '09:05', 185, 54, 7, 10)
	
	