USE Klantensimulator;
GO

BULK INSERT Staging_FirstNames_CH
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Zwitserland\su-q-01.04.00.12_firstname.txt'
WITH (
    FIRSTROW = 7,
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);

BULK INSERT Staging_LastNames_CH
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Zwitserland\su-q-01.04.00.13_surnameCH.txt'
WITH (
    FIRSTROW = 7,
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);

BULK INSERT Staging_Streets_CH
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Zwitserland\switzerland_streets2.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);