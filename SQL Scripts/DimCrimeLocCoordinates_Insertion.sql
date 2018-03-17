USE [AIT581]
GO

INSERT INTO [dbo].[Dim_CrimeLocCoordinates]
           ([CrimeLocCoordinates_Original]
           ,[CrimeLocCoordinates_X]
           ,[CrimeLocCoordinates_Y])
     
           Select distinct CrimeLocCoordinates,SUBSTRING(CrimeLocCoordinates, 1, CASE CHARINDEX(',', CrimeLocCoordinates)
            WHEN 0
                THEN LEN(CrimeLocCoordinates)
            ELSE CHARINDEX(',', CrimeLocCoordinates) - 1
            END)
    ,SUBSTRING(CrimeLocCoordinates, CASE CHARINDEX(',', CrimeLocCoordinates)
            WHEN 0
                THEN LEN(CrimeLocCoordinates) + 1
            ELSE CHARINDEX(',', CrimeLocCoordinates) + 1
            END, 1000)
			FROM dbo.CrimeDB
GO


