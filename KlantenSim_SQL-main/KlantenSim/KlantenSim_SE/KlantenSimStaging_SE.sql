USE Klantensimulator;
GO

CREATE TABLE Staging_FirstNames_SE_M (
	Name NVARCHAR(100),
	Frequency INT
);

CREATE TABLE Staging_FirstNames_SE_F (
	Name NVARCHAR(100),
	Frequency INT
);

CREATE TABLE Staging_LastNames_SE (
	Name NVARCHAR(100),
	Frequency INT
);

CREATE TABLE Staging_Streets_SE (
	StreetName NVARCHAR(200),
	Municipality NVARCHAR(200),
	HighwayType NVARCHAR(50)
);