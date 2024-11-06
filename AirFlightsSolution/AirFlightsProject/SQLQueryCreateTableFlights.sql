USE air_flights_db

CREATE TABLE flights
(
/*
рейс
	ид
	название
	дата вылета
	время вылета
	длительность
	самолет_ид
	аэропорт_вылета_ид
	аэропорт_прилета_ид
*/
	id INT IDENTITY,
	[name] NVARCHAR(10) NOT NULL,
	[date] DATE NOT NULL,
	[time] TIME NOT NULL,
	duration INT NOT NULL,
	airplane_id INT NULL,
	airport_from_id INT NOT NULL,
	airport_to_id INT NOT NULL,

	CONSTRAINT PK_flights PRIMARY KEY (id),

	CONSTRAINT FK_flights_airplanes
		FOREIGN KEY (airplane_id)
		REFERENCES airplanes(id)
		ON DELETE SET NULL,

	CONSTRAINT FK_flights_airports_from
		FOREIGN KEY (airport_from_id)
		REFERENCES airports(id)
		ON DELETE NO ACTION,

	CONSTRAINT FK_flights_airports_to
		FOREIGN KEY (airport_to_id)
		REFERENCES airports(id)
		ON DELETE NO ACTION,

	CONSTRAINT CK_flights_duration
		CHECK (duration >= 0)
)

GO

ALTER TABLE flights
	ADD CONSTRAINT DF_flights_date 
		DEFAULT GETDATE() FOR [date]
GO