USE Klantensimulator;
GO

CREATE TABLE Staging_FirstNames_FI_M (
	Name NVARCHAR(100),
	Frequency INT
);

CREATE TABLE Staging_FirstNames_FI_F (
	Name NVARCHAR(100),
	Frequency INT
);

CREATE TABLE Staging_LastNames_FI (
	Name NVARCHAR(100),
	Frequency INT
);

CREATE TABLE Staging_Streets_FI (
	StreetName NVARCHAR(200),
	Municipality NVARCHAR(200),
	HighwayType NVARCHAR(50)
);