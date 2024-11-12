USE air_flights_db
GO

CREATE TRIGGER AirportsLog ON airports
	AFTER INSERT, UPDATE, DELETE

	AS
	BEGIN
		DECLARE @command NVARCHAR(10);

		IF EXISTS(SELECT * FROM inserted)
			AND NOT EXISTS(SELECT * FROM deleted)
			SET @command = 'INSERT';

		IF NOT EXISTS(SELECT * FROM inserted)
			AND EXISTS(SELECT * FROM deleted)
			SET @command = 'DELETE';

		IF EXISTS(SELECT * FROM inserted)
			AND EXISTS(SELECT * FROM deleted)
			SET @command = 'UPDATE';


		IF @command = 'UPDATE' OR @command = 'INSERT'
		BEGIN
			INSERT INTO airports_log
					(date_change,
					[user_name],
					sql_command,
					port_id_old,
					port_id_new,
					port_city_old,
					port_city_new,
					port_title_old,
					port_title_new)

				SELECT GETDATE(), 
					SUSER_SNAME(),
					@command,
					d.id, i.id,
					d.city_id, i.city_id,
					d.title, i.title
				FROM inserted AS i
					LEFT JOIN deleted AS d
						ON i.id = d.id
		END
		ELSE
		BEGIN
			INSERT INTO airports_log
					(date_change,
					[user_name],
					sql_command,
					port_id_old,
					port_id_new,
					port_city_old,
					port_city_new,
					port_title_old,
					port_title_new)

				SELECT GETDATE(), 
					SUSER_SNAME(),
					@command,
					d.id, NULL,
					d.city_id, NULL,
					d.title, NULL
				FROM deleted AS d
		END

	END
GO