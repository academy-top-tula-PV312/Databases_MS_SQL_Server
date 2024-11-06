USE air_flights_db

/*
�����
	����� (guid)
	����_��
	�����_��
	��������_��
	�����
*/

CREATE TABLE tickets
(
	number UNIQUEIDENTIFIER NOT NULL
		DEFAULT NEWID(),
	flight_id INT NOT NULL,
	salon_id INT NOT NULL,
	passenger_id INT NOT NULL,
	place NVARCHAR(5) NOT NULL,

	CONSTRAINT PK_tickets PRIMARY KEY (number),

	CONSTRAINT FK_tickets_flights
		FOREIGN KEY (flight_id)
		REFERENCES flights(id)
		ON DELETE CASCADE,

	CONSTRAINT FK_tickets_salons
		FOREIGN KEY (salon_id)
		REFERENCES salon_classes(id)
		ON DELETE CASCADE,

	CONSTRAINT FK_tickets_passengers
		FOREIGN KEY (passenger_id)
		REFERENCES passengers(id)
		ON DELETE CASCADE,
)