USE air_flights_db

/*
пассажир
	ид
	тип_ид
	ФИО
	дата рождения
	документ_ид
	серия
	номер
*/

CREATE TABLE passengers
(
	id INT IDENTITY,
	last_name NVARCHAR(50) NOT NULL,
	first_name NVARCHAR(50) NULL,
	middle_name NVARCHAR(50) NULL,
	[type_id] INT NOT NULL,
	birth_date DATE NOT NULL,
	document_id INT NOT NULL,
	series NVARCHAR(10) NOT NULL,
	number NVARCHAR(10) NOT NULL,

	CONSTRAINT PK_passengers PRIMARY KEY (id),

	CONSTRAINT FK_passengers_passenger_types
		FOREIGN KEY ([type_id])
		REFERENCES passenger_types(id)
		ON DELETE NO ACTION,

	CONSTRAINT FK_passengers_document_types
		FOREIGN KEY (document_id)
		REFERENCES document_types(id)
		ON DELETE NO ACTION,

	CONSTRAINT CK_passengers_birth_date
		CHECK (YEAR(GETDATE()) - YEAR(birth_date) <= 80)
)
GO

CREATE INDEX IX_passengers_full_name ON passengers
(
	last_name ASC,
	first_name ASC,
	middle_name ASC,
	birth_date ASC
)
GO

CREATE INDEX IX_passengers_documnet ON passengers
(
	document_id ASC,
	series ASC,
	number ASC
)
GO

