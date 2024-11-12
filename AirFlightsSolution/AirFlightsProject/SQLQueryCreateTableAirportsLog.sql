USE air_flights_db

CREATE TABLE airports_log
(
	id INT IDENTITY(1,1)
		CONSTRAINT PK_airports_log PRIMARY KEY,
	date_change DATETIME2 NOT NULL,
	[user_name] VARCHAR(50) NOT NULL,
	sql_command VARCHAR(10) NOT NULL,

	port_id_old INT NULL,
	port_id_new INT NULL,
	port_city_old INT NULL,
	port_city_new INT NULL,
	port_title_old VARCHAR(50) NULL,
	port_title_new VARCHAR(50) NULL
)