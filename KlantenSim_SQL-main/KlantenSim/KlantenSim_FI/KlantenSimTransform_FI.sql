USE Klantensimulator;
GO

INSERT INTO FirstName (CountryId, Name, Gender, Frequency)
SELECT
	c.CountryId,
	s.Name,
	'M',
	s.Frequency
FROM Staging_FirstNames_FI_M s
JOIN Country c ON c.IsoCode = 'FI';

INSERT INTO FirstName (CountryId, Name, Gender, Frequency)
SELECT
	c.CountryId,
	s.Name,
	'F',
	s.Frequency
FROM Staging_FirstNames_FI_F s
JOIN Country c ON c.IsoCode = 'FI';

INSERT INTO LastName (CountryId, Name, Frequency)
SELECT
	c.CountryId,
	s.Name,
	s.Frequency
FROM Staging_LastNames_FI s
JOIN Country c ON c.IsoCode = 'FI';

INSERT INTO Municipality (CountryId, Name)
SELECT DISTINCT
	c.CountryId,
	s.Municipality
FROM Staging_Streets_FI s
JOIN Country c ON c.IsoCode = 'FI'
WHERE s.Municipality IS NOT NULL;

INSERT INTO Street (MunicipalityId, Name, HighwayType)
SELECT
	m.MunicipalityId,
	s.StreetName,
	s.HighwayType
FROM Staging_Streets_FI s
JOIN Municipality m ON m.Name = s.Municipality
WHERE s.HighwayType IN (
	'residential',
	'primary',
	'secondary',
	'tertiary',
	'unclassified'
);