USE Klantensimulator;
GO

BULK INSERT Staging_FirstNames_ES_M
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Spanje\nombres_por_edad_media_hombres.txt'
WITH (
    FIRSTROW = 6,
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);

BULK INSERT Staging_FirstNames_ES_F
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Spanje\nombres_por_edad_media_mujeres.txt'
WITH (
    FIRSTROW = 6,
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);

BULK INSERT Staging_LastNames_ES_High
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Spanje\apellidos_frecuencia_100mas.txt'
WITH (
    FIRSTROW = 6,
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);

BULK INSERT Staging_LastNames_ES_Low
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Spanje\apellidos_frecuencia_20mas.txt'
WITH (
    FIRSTROW = 6,
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);

BULK INSERT Staging_Streets_ES
FROM 'C:\Users\rahma\OneDrive\Bureaublad\Progr_Gev1\Progr_Gev1_Import\Spanje\spain_streets2.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);