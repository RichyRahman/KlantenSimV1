USE Klantensimulator;
GO

INSERT INTO FirstName (CountryId, Name, Gender, Frequency)
SELECT
    c.CountryId,
    s.Name,
    'M',
    s.Frequency
FROM Staging_FirstNames_ES_M s
JOIN Country c ON c.IsoCode = 'ES'
WHERE s.Frequency > 0;

INSERT INTO FirstName (CountryId, Name, Gender, Frequency)
SELECT
    c.CountryId,
    s.Name,
    'F',
    s.Frequency
FROM Staging_FirstNames_ES_F s
JOIN Country c ON c.IsoCode = 'ES'
WHERE s.Frequency > 0;

INSERT INTO LastName (CountryId, Name, Frequency)
SELECT
    c.CountryId,
    s.Name,
    s.FreqFirst
FROM (
    SELECT Name, FreqFirst FROM Staging_LastNames_ES_High
    UNION ALL
    SELECT Name, FreqFirst FROM Staging_LastNames_ES_Low
) s
JOIN Country c ON c.IsoCode = 'ES'
WHERE s.FreqFirst > 0;

INSERT INTO Municipality (CountryId, Name)
SELECT DISTINCT
    c.CountryId,
    s.Municipality
FROM Staging_Streets_ES s
JOIN Country c ON c.IsoCode = 'ES'
WHERE s.Municipality IS NOT NULL;

INSERT INTO Street (MunicipalityId, Name, HighwayType)
SELECT
    m.MunicipalityId,
    s.StreetName,
    s.HighwayType
FROM Staging_Streets_ES s
JOIN Municipality m 
    ON m.Name = s.Municipality
WHERE s.HighwayType IN (
    'residential',
    'primary',
    'secondary',
    'tertiary',
    'unclassified'
);