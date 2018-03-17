USE [AIT581]
GO

INSERT INTO [dbo].CrimeDB
           ([CrimeDate]
           ,[CrimeTime]
           ,[CrimeLocation]
		   ,[CrimeLocCoordinates]
           ,[CrimeType]
           ,[CrimeCity])
          Select Crime_DC.REPORTDATETIME, Crime_DC.REPORTDATETIME, Crime_DC.DISTRICT, concat(dbo.Crime_DC.X,',', dbo.Crime_DC.Y),  Crime_DC.OFFENSE, 'Washington D.C.' from Crime_DC
GO

INSERT INTO [dbo].[CrimeDB]
           ([CrimeDate]
           ,[CrimeTime]
           ,[CrimeLocation]
		   ,[CrimeLocCoordinates]
           ,[CrimeType]
           ,[CrimeCity])
		   Select Crime_Chicago.Date, Crime_Chicago.Date, Crime_Chicago.[Location Description], Crime_Chicago.Location, Crime_Chicago.[Primary Type], 'Chicago' from Crime_Chicago

		   
INSERT INTO [dbo].[CrimeDB]
           ([CrimeDate]
           ,[CrimeTime]
           ,[CrimeLocation]
		   ,[CrimeLocCoordinates]
           ,[CrimeType]
           ,[CrimeCity])
		   Select Crime_LosAngeles.DATE#OCC, Crime_LosAngeles.NewTime, Crime_LosAngeles.AREA#NAME, Crime_LosAngeles.Location#1, Crime_LosAngeles.CrmCd#Desc, 'Los Angeles' from Crime_LosAngeles

INSERT INTO [dbo].[CrimeDB]
           ([CrimeDate]
           ,[CrimeTime]
           ,[CrimeLocation]
		   ,[CrimeLocCoordinates]
           ,[CrimeType]
           ,[CrimeCity])
		   Select Crime_NYC.[Occurrence Date],Crime_NYC.[Occurrence Date], Crime_NYC.Borough, Crime_NYC.[Location 1], Crime_NYC.Offense, 'New York City' from Crime_NYC 
