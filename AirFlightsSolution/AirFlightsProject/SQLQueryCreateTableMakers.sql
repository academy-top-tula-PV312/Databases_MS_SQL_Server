USE air_flights_db

/*

производитель
	ид
	название

*/

CREATE TABLE makers
(
	id INT IDENTITY(1,1),
	title NVARCHAR(50) NOT NULL,
	CONSTRAINT PK_makers PRIMARY KEY (id),
	CONSTRAINT UQ_makers_title UNIQUE (title)
)

GO

ALTER TABLE makers
	ADD activity BIT DEFAULT (1)
GO