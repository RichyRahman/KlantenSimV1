USE Klantensimulator;
GO

BULK INSERT Staging_FirstNames_SE_M
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Zweden\namn-med-minst-tva-barare-31-december-2022_Tilltalsnamn_män.txt'
WITH (
	FIRSTROW = 6,
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);

BULK INSERT Staging_FirstNames_SE_F
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Zweden\namn-med-minst-tva-barare-31-december-2022_Tilltalsnamn_kvinnor.txt'
WITH (
	FIRSTROW = 6,
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);

BULK INSERT Staging_LastNames_SE
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Zweden\namn-med-minst-tva-barare-31-december-2022_Efternamn.txt'
WITH (
	FIRSTROW = 6,
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);

BULK INSERT Staging_Streets_SE
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Zweden\sweden_streets2.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);