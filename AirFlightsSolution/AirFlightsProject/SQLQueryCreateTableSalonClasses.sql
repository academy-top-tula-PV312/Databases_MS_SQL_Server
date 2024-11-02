USE air_flights_db

/*
класс салона
	ид
	название 
*/

CREATE TABLE salon_classes
(
	id INT IDENTITY(1,1),
	title NVARCHAR(50) NOT NULL,
	activity BIT NOT NULL DEFAULT (1)
	CONSTRAINT PK_salon_classes PRIMARY KEY (id),
	CONSTRAINT UQ_salon_classes_title UNIQUE (title)
)

GO
