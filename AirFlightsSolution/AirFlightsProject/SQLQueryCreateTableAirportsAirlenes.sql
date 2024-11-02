USE air_flights_db

/*
аэропорт_авиакомпания
	аэропорт_ид
	авиакомпания_ид
*/

CREATE TABLE airports_airlines
(
	airport_id INT,
	airline_id INT,
	CONSTRAINT PK_airports_airlines
		PRIMARY KEY (airport_id, airline_id),

	CONSTRAINT FK_airports_airlines_airports
		FOREIGN KEY (airport_id)
		REFERENCES airports(id)
		ON DELETE CASCADE,

	CONSTRAINT FK_airports_airlines_airlines
		FOREIGN KEY (airline_id)
		REFERENCES airlines(id)
		ON DELETE CASCADE
)

GO