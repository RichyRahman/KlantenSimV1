USE Klantensimulator;
GO

CREATE TABLE Staging_FirstNames_CH (
    Name NVARCHAR(255),
    FemaleCount INT NULL,
    MaleCount INT NULL
);

CREATE TABLE Staging_LastNames_CH (
    Name NVARCHAR(255),
    Frequency INT
);

CREATE TABLE Staging_Streets_CH (
    StreetName NVARCHAR(255),
    Municipality NVARCHAR(255),
    Canton NVARCHAR(100),
    StreetType NVARCHAR(50)
);