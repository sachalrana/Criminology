USE [AIT581]
GO

INSERT INTO [dbo].[Dim_CrimeDate]
           ([CrimeDate_Original]
           ,[CrimeDate_Year]
           ,[CrimeDate_Month]
           ,[CrimeDate_Day]
           ,[CrimeDate_MonthName]
           ,[CrimeDate_WeekDay])
   select distinct CrimeDate, datepart(yyyy,CrimeDate), datepart(mm,CrimeDate), datepart(dd,CrimeDate),datename(month,CrimeDate) ,datename(WEEKDAY,CrimeDate)
   from CrimeDB
GO


