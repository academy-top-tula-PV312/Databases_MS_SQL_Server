USE air_flights_db

/*
аэропорт
	ид
	город_ид
	название
	описание
	изображение_путь
	флаг
*/

CREATE TABLE airports
(
	id INT IDENTITY,
	city_id INT NOT NULL,
	title NVARCHAR(100) NULL,
	[description] NVARCHAR(MAX) NULL,
	image_url NVARCHAR(100) NULL,
	CONSTRAINT PK_airports PRIMARY KEY (id),
	CONSTRAINT FK_airports_cities
		FOREIGN KEY (city_id)
		REFERENCES cities(id)
		ON DELETE NO ACTION
)

GO

ALTER TABLE airports
	ADD activity BIT DEFAULT (1)
GO