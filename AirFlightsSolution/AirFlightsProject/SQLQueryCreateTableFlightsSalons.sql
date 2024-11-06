USE air_flights_db
/*
рейс_класс
	рейс_ид
	класс_ид
	стоимость
*/

CREATE TABLE flights_salons
(
	flight_id INT NOT NULL,
	salon_id INT NOT NULL,
	price DECIMAL(8,2) NULL

	CONSTRAINT PK_flights_salons
		PRIMARY KEY (flight_id, salon_id),

	CONSTRAINT FK_flights_salons_flights
		FOREIGN KEY (flight_id)
		REFERENCES flights(id)
		ON DELETE CASCADE,

	CONSTRAINT FK_flights_salons_salons
		FOREIGN KEY (salon_id)
		REFERENCES salon_classes(id)
		ON DELETE CASCADE,

	CONSTRAINT CK_flights_salons_price
		CHECK (price >=0)
)
