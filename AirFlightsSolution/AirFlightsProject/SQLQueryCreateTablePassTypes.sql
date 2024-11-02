USE air_flights_db

/*
тип пассажира
	ид
	название
	описание
	коэффициент
*/

CREATE TABLE passenger_types
(
	id INT IDENTITY,
	title NVARCHAR(50) NOT NULL,
	[description] NVARCHAR(MAX) NULL,
	factor REAL NOT NULL DEFAULT (1.0),
	CONSTRAINT PK_passenger_types PRIMARY KEY (id),
	CONSTRAINT UQ_passenger_types_title UNIQUE (title)
)

GO

ALTER TABLE passenger_types
	ADD activity BIT NOT NULL DEFAULT (1)
GO