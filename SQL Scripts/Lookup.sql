/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Crime_Type]
  FROM [AIT581].[dbo].[CrimeTypeTest]


 SELECT SUBSTRING(Crime_Type, 1, CASE CHARINDEX('-', Crime_Type)
            WHEN 0
                THEN LEN(Crime_Type)
            ELSE CHARINDEX('-', Crime_Type) - 1
            END)
    ,SUBSTRING(Crime_Type, CASE CHARINDEX('-', Crime_Type)
            WHEN 0
                THEN LEN(Crime_Type) + 1
            ELSE CHARINDEX('-', Crime_Type) + 1
            END, 1000)
FROM dbo.CrimeTypeTest