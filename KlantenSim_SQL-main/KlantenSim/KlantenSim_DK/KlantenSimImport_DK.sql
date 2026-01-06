USE Klantensimulator;
GO

BULK INSERT Staging_FirstNames_DK_M
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Denemarken\fornavne 2025 - mænd (3+) - med overskrifter.txt'
WITH (
	FIRSTROW = 6,
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);

BULK INSERT Staging_FirstNames_DK_F
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Denemarken\fornavne 2025 - kvinder (3+) - med overskrifter.txt'
WITH (
	FIRSTROW = 6,
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);

BULK INSERT Staging_LastNames_DK
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Denemarken\efternavne 2025 (3+) - med overskrifter.txt'
WITH (
	FIRSTROW = 6,
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);

BULK INSERT Staging_Streets_DK
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Denemarken\denmark_streets2.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);