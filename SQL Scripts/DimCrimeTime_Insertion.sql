USE [AIT581]
GO

INSERT INTO [dbo].[Dim_CrimeTime]
           ([CrimeTime_Original]
           ,[CrimeTime_Hours]
           ,[CrimeTime_Minutes]
           ,[CrimeTime_Seconds]
           ,[CrimeTime_TimeOfDay])
    select distinct CrimeTime, datepart(HH,CrimeTime), datepart(MI,CrimeTime), datepart(SS,CrimeTime),''
	from CrimeDB
GO

Update Dim_CrimeTime
Set CrimeTime_TimeOfDay = 'MIDNIGHT'
Where CrimeTime_Hours = '0' and CrimeTime_Minutes = '0' and CrimeTime_Seconds = '0'

Update Dim_CrimeTime
Set CrimeTime_TimeOfDay = 'MORNING'
Where CrimeTime_Hours between '0' and '11'

Update Dim_CrimeTime
Set CrimeTime_TimeOfDay = 'AFTERNOON'
Where CrimeTime_Hours between '12' and '17'

Update Dim_CrimeTime
Set CrimeTime_TimeOfDay = 'EVENING'
Where CrimeTime_Hours between '18' and '23'




