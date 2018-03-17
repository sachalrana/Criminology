/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Crime_Type]
  FROM [AIT581].[dbo].[CrimeTypeTest]

  Update CrimeTypeTest
  set Crime_Type = 'HOMICIDE'
  where Crime_Type = 'HOMICIDE (NON UCR)'

  Update Dim_CrimeType
  set Crime_Type = 'HOMICIDE'
  where Crime_Type = 'HOMICIDE (NON UCR)'