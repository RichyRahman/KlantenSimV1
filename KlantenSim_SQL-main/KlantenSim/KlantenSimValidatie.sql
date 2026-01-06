USE Klantensimulator
GO

SELECT *
FROM FirstName
WHERE CountryId IS NULL;

SELECT *
FROM Street s
LEFT JOIN Municipality m ON s.MunicipalityId = m.MunicipalityId
WHERE m.MunicipalityId IS NULL;

SELECT m.Name, COUNT(*)
FROM Street s
JOIN Municipality m ON s.MunicipalityId = m.MunicipalityId
GROUP BY m.Name;