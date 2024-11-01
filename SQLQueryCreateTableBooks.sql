CREATE TABLE books
(
	id INT IDENTITY(1,1) NOT NULL,
	title NVARCHAR(100) NOT NULL,
	author_id INT NULL,
	publisher_id INT NULL,
	publish_year INT NULL,
	pages INT NULL,
	price DECIMAL(8,2) NULL,
	activity BIT NOT NULL DEFAULT (1),
	cover VARBINARY(MAX) NULL,

	CONSTRAINT PK_books PRIMARY KEY (id),
	CONSTRAINT FK_books_authors FOREIGN KEY (author_id)
		REFERENCES authors (id)
		ON DELETE SET NULL,
	CONSTRAINT FK_books_publishers FOREIGN KEY (publisher_id)
		REFERENCES publishers (id)
		ON DELETE SET NULL,
	CONSTRAINT CK_books_pages CHECK (pages > 0),
	CONSTRAINT CK_books_price CHECK (price >= 0),
)