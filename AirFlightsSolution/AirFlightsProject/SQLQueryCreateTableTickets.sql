USE air_flights_db

/*
билет
	номер (guid)
	рейс_ид
	класс_ид
	пассажир_ид
	место
*/

--CREATE TABLE tickets
--(
--	number UNIQUEIDENTIFIER NOT NULL
--		DEFAULT NEWID(),
--	flight_id INT NOT NULL,
--	salon_id INT NOT NULL,
--	passenger_id INT NOT NULL,
--	place NVARCHAR(5) NOT NULL,

--	CONSTRAINT PK_tickets PRIMARY KEY (number),

--	CONSTRAINT FK_tickets_flights
--		FOREIGN KEY (flight_id)
--		REFERENCES flights(id)
--		ON DELETE CASCADE,

--	CONSTRAINT FK_tickets_salons
--		FOREIGN KEY (salon_id)
--		REFERENCES salon_classes(id)
--		ON DELETE CASCADE,

--	CONSTRAINT FK_tickets_passengers
--		FOREIGN KEY (passenger_id)
--		REFERENCES passengers(id)
--		ON DELETE CASCADE,
--)

ALTER TABLE tickets
	ADD CONSTRAINT UQ_tickets_flight_passenger
		UNIQUE (flight_id, passenger_id)
GO

ALTER TABLE tickets
	ADD CONSTRAINT UQ_tickets_flight_place
		UNIQUE (flight_id, place)
GO