USE air_flights_db

/*
тип документа
	ид
	название
*/

CREATE TABLE document_types
(
	id INT IDENTITY(1,1),
	title NVARCHAR(50) NOT NULL,
	activity BIT NOT NULL DEFAULT (1),
	CONSTRAINT PK_document_types PRIMARY KEY (id),
	CONSTRAINT UQ_document_types_title UNIQUE (title)
)

GO