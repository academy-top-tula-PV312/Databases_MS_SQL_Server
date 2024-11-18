USE air_flights_db

/*
авиакомпания
	ид
	город_ид
	название
	описание
	логотип_бинарный
	флаг
*/
CREATE TABLE airlines
(
	id INT IDENTITY,
	city_id INT NULL,
	title NVARCHAR(100) NOT NULL,
	[description] NVARCHAR(MAX) NULL,
	logotype VARBINARY(MAX) NULL,
	activity BIT DEFAULT(1),
	CONSTRAINT PK_airlines PRIMARY KEY (id),
	CONSTRAINT FK_airlines_cities
		FOREIGN KEY (city_id)
		REFERENCES cities(id)
		ON DELETE SET NULL,
	CONSTRAINT UQ_airlines_city_title UNIQUE (city_id, title)
)
GO