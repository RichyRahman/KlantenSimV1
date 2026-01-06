USE Klantensimulator;
GO

BULK INSERT Staging_FirstNames_BE_M
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\België\mannennamen_belgie.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);

BULK INSERT Staging_FirstNames_BE_F
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\België\vrouwennamen_belgie.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);

BULK INSERT Staging_LastNames_BE
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\België\Familienamen2024_Belgie.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);

BULK INSERT Staging_Streets_BE
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\België\belgium_streets2.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);