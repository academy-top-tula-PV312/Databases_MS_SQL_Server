USE air_flights_db

/*
модель_самолета
	ид
	производитель_ид
	название
	описание
	изображение_путь
*/

CREATE TABLE models
(
	id INT IDENTITY,
	maker_id INT NOT NULL,
	title NVARCHAR(50) NOT NULL,
	[description] NVARCHAR(MAX) NULL,
	image_url NVARCHAR(100) NULL,

	CONSTRAINT PK_models PRIMARY KEY (id),

	CONSTRAINT FK_models_makers
		FOREIGN KEY (maker_id)
		REFERENCES makers(id)
		ON DELETE CASCADE,
	CONSTRAINT UQ_models_maker_title
		UNIQUE (maker_id, title)
)

GO

ALTER TABLE models
	ADD activity BIT DEFAULT (1)
GO