USE [library]

--CREATE TABLE [countries]
--(
--	id INT IDENTITY(1,1) NOT NULL, --PRIMARY KEY,
--	title NVARCHAR(50) NOT NULL,
--	CONSTRAINT PK_countries PRIMARY KEY (id)
--)


--CREATE TABLE publishers
--(
--	id INT IDENTITY(1,1) PRIMARY KEY,
--	title NVARCHAR(50) NOT NULL,
--	country_id INT REFERENCES countries(id)
--)

CREATE TABLE publishers
(
	id INT IDENTITY(1,1),
	title NVARCHAR(50) NOT NULL,
	country_id INT NULL,
	CONSTRAINT PK_publishers PRIMARY KEY (id),
	CONSTRAINT FK_publishers_countries FOREIGN KEY (country_id)
		REFERENCES countries(id)
)
