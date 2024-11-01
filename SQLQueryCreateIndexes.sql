CREATE INDEX IX_publishers_title 
	ON publishers
	(
		title ASC
	)
GO

CREATE INDEX IX_countries_title 
	ON countries
	(
		title ASC
	)
GO

CREATE INDEX IX_authors_name
	ON authors
	(
		last_name ASC,
		first_name ASC
	)
GO

CREATE INDEX IX_books_title
	ON books
	(
		title ASC
	)
GO

CREATE INDEX IX_books_authors
	ON books
	(
		author_id ASC
	)
GO

CREATE INDEX IX_books_publishers
	ON books
	(
		publisher_id ASC
	)
GO