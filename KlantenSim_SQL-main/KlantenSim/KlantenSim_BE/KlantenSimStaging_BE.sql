USE Klantensimulator;
GO

CREATE TABLE Staging_FirstNames_BE_M (
	RankNr INT,
	Name NVARCHAR(100),
	Frequency INT
);

CREATE TABLE Staging_FirstNames_BE_F (
	RankNr INT,
	Name NVARCHAR(100),
	Frequency INT
);

CREATE TABLE Staging_LastNames_BE (
	RankNr INT,
	Name NVARCHAR(100),
	Frequency INT
);

CREATE TABLE Staging_Streets_BE (
	StreetName NVARCHAR(200),
	Municipality NVARCHAR(200),
	HighwayType NVARCHAR(50)
);