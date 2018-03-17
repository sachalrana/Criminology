USE [AIT581]
GO
INSERT INTO [dbo].[Dim_CrimeType]
           ([Crime_Original]
           ,[Crime_Type]
           ,[Crime_Detail])
     SELECT distinct CrimeType, SUBSTRING(CrimeType, 1, CASE CHARINDEX('-', CrimeType)
            WHEN 0
                THEN LEN(CrimeType)
            ELSE CHARINDEX('-', CrimeType) - 1
            END)
    ,SUBSTRING(CrimeType, CASE CHARINDEX('-', CrimeType)
            WHEN 0
                THEN LEN(CrimeType) + 1
            ELSE CHARINDEX('-', CrimeType) + 1
            END, 1000)
FROM dbo.CrimeDB
GO
select * from Dim_CrimeType


