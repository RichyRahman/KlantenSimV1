USE Klantensimulator;
GO

CREATE TABLE Staging_FirstNames_ES_M (
    Name NVARCHAR(255),
    Frequency INT,
    AvgAge INT NULL
);

CREATE TABLE Staging_FirstNames_ES_F (
    Name NVARCHAR(255),
    Frequency INT,
    AvgAge INT NULL
);

CREATE TABLE Staging_LastNames_ES_High (
    RankNr INT,
    Name NVARCHAR(255),
    FreqFirst INT,
    FreqSecond INT,
    FreqTotal INT
);

CREATE TABLE Staging_LastNames_ES_Low (
    RankNr INT,
    Name NVARCHAR(255),
    FreqFirst INT,
    FreqSecond INT,
    FreqTotal INT
);

CREATE TABLE Staging_Streets_ES (
	StreetName NVARCHAR(200),
	Municipality NVARCHAR(200),
	HighwayType NVARCHAR(50)
);
