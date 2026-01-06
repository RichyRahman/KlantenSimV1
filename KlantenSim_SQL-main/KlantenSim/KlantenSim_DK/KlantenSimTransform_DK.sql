USE Klantensimulator;
GO

INSERT INTO FirstName (CountryId, Name, Gender, Frequency)
SELECT
	c.CountryId,
	s.Name,
	'M',
	s.Frequency
FROM Staging_FirstNames_DK_M s
JOIN Country c ON c.IsoCode = 'DK';

INSERT INTO FirstName (CountryId, Name, Gender, Frequency)
SELECT
	c.CountryId,
	s.Name,
	'F',
	s.Frequency
FROM Staging_FirstNames_DK_F s
JOIN Country c ON c.IsoCode = 'DK';

INSERT INTO LastName (CountryId, Name, Frequency)
SELECT
	c.CountryId,
	s.Name,
	s.Frequency
FROM Staging_LastNames_DK s
JOIN Country c ON c.IsoCode = 'DK';

INSERT INTO Municipality (CountryId, Name)
SELECT DISTINCT
	c.CountryId,
	s.Municipality
FROM Staging_Streets_DK s
JOIN Country c ON c.IsoCode = 'DK'
WHERE s.Municipality IS NOT NULL;

INSERT INTO Street (MunicipalityId, Name, HighwayType)
SELECT
	m.MunicipalityId,
	s.StreetName,
	s.HighwayType
FROM Staging_Streets_DK s
JOIN Municipality m ON m.Name = s.Municipality
WHERE s.HighwayType IN (
	'residential',
	'primary',
	'secondary',
	'tertiary',
	'unclassified'
);