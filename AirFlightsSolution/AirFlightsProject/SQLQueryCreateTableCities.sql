USE air_flights_db

/*
город
	ид
	название
*/

CREATE TABLE cities
(
	id INT IDENTITY(1,1),
	title NVARCHAR(50) NOT NULL,
	CONSTRAINT PK_cities PRIMARY KEY (id),
	CONSTRAINT UQ_cities_title UNIQUE (title)
)

GO

