/****** Script for SelectTopNRows command from SSMS  ******/


 UPDATE [dbo].[Crime_NYC]
   SET 
      [Location 1] = RIGHT(Crime_NYC.[Location 1], ABS(len(Crime_NYC.[Location 1])-2)) from Crime_NYC
    
GO


 UPDATE [dbo].[Crime_NYC]
   SET 
      [Location 1] = LEFT(Crime_NYC.[Location 1], ABS(len(Crime_NYC.[Location 1])-2)) from Crime_NYC
    
GO

/*-------------------------------------------------------------------------------------------------------------------*/

Update Crime_NYC
Set Offense = 'ASSAULT'
Where Offense = 'FELONY ASSAULT'

Update Crime_NYC
Set Offense = 'EMBEZZLEMENT- GRAND THEFT ($950.01 & OVER)'
Where Offense = 'GRAND LARCENY'

Update Crime_NYC
Set Offense = 'VEHICLE - STOLEN'
Where Offense = 'GRAND LARCENY OF MOTOR VEHICLE'

Update Crime_NYC
Set Offense = 'HOMICIDE'
Where Offense = 'MURDER & NON-NEGL. MANSLAUGHTE'

Update Crime_NYC
Set Offense = 'RAPE- FORCIBLE'
Where Offense = 'RAPE'

Update Crime_NYC
Set Offense = 'RAPE- FORCIBLE'
Where Offense = 'RAPE'

/*--------------------------------------------------------------------------------------------------------*/

