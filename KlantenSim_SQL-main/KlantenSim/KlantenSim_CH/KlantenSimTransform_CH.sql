USE Klantensimulator;
GO

INSERT INTO FirstName (CountryId, Name, Gender, Frequency)
SELECT
    c.CountryId,
    s.Name,
    'M',
    CAST(s.MaleCount AS INT)
FROM Staging_FirstNames_CH s
JOIN Country c ON c.IsoCode = 'CH'
WHERE s.MaleCount <> '*';

INSERT INTO FirstName (CountryId, Name, Gender, Frequency)
SELECT
    c.CountryId,
    s.Name,
    'F',
    CAST(s.FemaleCount AS INT)
FROM Staging_FirstNames_CH s
JOIN Country c ON c.IsoCode = 'CH'
WHERE s.FemaleCount <> '*';

INSERT INTO LastName (CountryId, Name, Frequency)
SELECT
    c.CountryId,
    s.Name,
    s.Frequency
FROM Staging_LastNames_CH s
JOIN Country c
    ON c.IsoCode = 'CH'
WHERE s.Frequency > 0;

INSERT INTO Municipality (CountryId, Name)
SELECT DISTINCT
    c.CountryId,
    s.Municipality
FROM Staging_Streets_CH s
JOIN Country c
    ON c.IsoCode = 'CH'
WHERE s.Municipality IS NOT NULL
  AND s.Municipality <> '';

INSERT INTO Street (MunicipalityId, Name, HighwayType)
SELECT
    m.MunicipalityId,
    s.StreetName,
    s.StreetType
FROM Staging_Streets_CH s
JOIN Municipality m
    ON m.Name = s.Municipality
WHERE s.StreetName IS NOT NULL
  AND s.StreetName <> '';