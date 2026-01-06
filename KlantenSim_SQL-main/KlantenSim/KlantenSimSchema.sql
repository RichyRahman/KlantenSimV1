CREATE DATABASE Klantensimulator;
GO
USE Klantensimulator;
GO

CREATE TABLE Country (
	CountryId INT IDENTITY PRIMARY KEY,
	IsoCode NVARCHAR(5) NOT NULL UNIQUE,
	Name NVARCHAR(100) NOT NULL
);

CREATE TABLE FirstName (
	FirstNameId INT IDENTITY PRIMARY KEY,
	CountryId INT NOT NULL,
	Name NVARCHAR(100) NOT NULL,
	Gender CHAR(1) NOT NULL CHECK (Gender IN ('M','F')),
	Frequency INT NULL,

	CONSTRAINT FK_FirstName_Country
		FOREIGN KEY (CountryId) REFERENCES Country(CountryId)
);

CREATE TABLE Municipality (
	MunicipalityId INT IDENTITY PRIMARY KEY,
	CountryId INT NOT NULL,
	Name NVARCHAR(200) NOT NULL,

	CONSTRAINT FK_Municipality_Country
		FOREIGN KEY (CountryId) REFERENCES Country(CountryId)
);

CREATE TABLE Street (
	StreetId INT IDENTITY PRIMARY KEY,
	MunicipalityId INT NOT NULL,
	Name NVARCHAR(200) NOT NULL,
	HighwayType NVARCHAR(50) NOT NULL,

	CONSTRAINT FK_Street_Municipality
		FOREIGN KEY (MunicipalityId) REFERENCES Municipality(MunicipalityId)
);
