USE [library]

--ALTER TABLE authors
--	ALTER COLUMN last_name NVARCHAR(50) NOT NULL
--GO

--ALTER TABLE authors
--	ADD activity BIT NOT NULL

--ALTER TABLE authors
--	ADD temp INT NULL
--GO

--ALTER TABLE authors
--	DROP COLUMN temp
--GO



--ALTER TABLE authors
--	ADD PRIMARY KEY (last_name)

--ALTER TABLE authors
--	ADD FOREIGN KEY (country_id) REFERENCES countries(id)

--ALTER TABLE authors
--	ADD CHECK (YEAR(birth_date) > 1900)


--ALTER TABLE authors
--	ADD CONSTRAINT DF_authors_activity DEFAULT 1 FOR activity
--GO

--ALTER TABLE authors
--	DROP FK_authors_countries
--GO

--ALTER TABLE authors
--	ADD CONSTRAINT FK_authors_countries
--		FOREIGN KEY (country_id)
--		REFERENCES countries(id)
--		ON DELETE SET NULL
--GO