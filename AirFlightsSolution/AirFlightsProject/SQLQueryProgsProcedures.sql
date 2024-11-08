CREATE PROCEDURE InsertAirport
(
	@city NVARCHAR(50),
	@title NVARCHAR(50)
)
AS
BEGIN
	DECLARE @id INT = NULL;
	SELECT @id = id
		FROM cities
		WHERE title = @city
	IF @id IS NOT NULL
		INSERT INTO airports
			(city_id, title)
			VALUES
			(@id, @title)
END
GO