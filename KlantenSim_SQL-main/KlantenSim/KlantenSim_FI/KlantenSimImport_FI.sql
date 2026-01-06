USE Klantensimulator;
GO

BULK INSERT Staging_FirstNames_FI_M
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Finland\etunimitilasto-2025-08-13-dvv_miehet_ens.txt'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);

BULK INSERT Staging_FirstNames_FI_F
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Finland\etunimitilasto-2025-08-13-dvv_naiset_ens.txt'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);

BULK INSERT Staging_LastNames_FI
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Finland\sukunimitilasto-2025-08-13-dvv.txt'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);

BULK INSERT Staging_Streets_FI
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Finland\finland_streets2.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001'
);