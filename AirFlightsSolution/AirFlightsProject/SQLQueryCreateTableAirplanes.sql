USE air_flights_db

/*
самолет
	ид
	бортовой номер
	модель_ид
	название
	авиакомпания_ид
*/

CREATE TABLE airplanes
(
	id INT IDENTITY,
	number NVARCHAR(50) NOT NULL,
	model_id INT NOT NULL,
	title NVARCHAR(50) NULL,
	airline_id INT NOT NULL,
	activity BIT DEFAULT (1),

	CONSTRAINT PK_airplanes PRIMARY KEY (id),

	CONSTRAINT FK_airplanes_models
		FOREIGN KEY (model_id)
		REFERENCES models(id)
		ON DELETE NO ACTION,

	CONSTRAINT FK_airplanes_airlines
		FOREIGN KEY (airline_id)
		REFERENCES airlines(id)
		ON DELETE NO ACTION
)
GO

CREATE INDEX IX_airplanes_model_id ON airplanes
(
	model_id ASC
)
GO

CREATE INDEX IX_airplanes_airline_id ON airplanes
(
	airline_id ASC
)
GO