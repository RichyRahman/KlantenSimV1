USE Klantensimulator;
GO

CREATE TABLE Staging_FirstNames_DK_M (
	Name NVARCHAR(255),
	Frequency INT
);

CREATE TABLE Staging_FirstNames_DK_F (
	Name NVARCHAR(255),
	Frequency INT
);

CREATE TABLE Staging_LastNames_DK (
	Name NVARCHAR(255),
	Frequency INT
);

CREATE TABLE Staging_Streets_DK (
	StreetName NVARCHAR(200),
	Municipality NVARCHAR(200),
	HighwayType NVARCHAR(50)
);