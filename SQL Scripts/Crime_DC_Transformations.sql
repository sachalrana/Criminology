/****** Script for SelectTopNRows command from SSMS  ******/

Update Crime_DC
Set OFFENSE = 'RAPE- FORCIBLE'
Where OFFENSE ='SEX ABUSE'

Update Crime_DC
Set OFFENSE = 'THEFT FROM MOTOR VEHICLE - ATTEMPT'
Where OFFENSE ='THEFT F/AUTO'

Update Crime_DC
Set OFFENSE = 'ASSAULT WITH DEADLY WEAPON- AGGRAVATED ASSAULT'
Where OFFENSE ='ASSAULT W/DANGEROUS WEAPON'

Update Crime_DC
Set OFFENSE = 'THEFT- PERSON'
Where OFFENSE ='THEFT/OTHER'

Update Crime_DC
Set OFFENSE = 'VEHICLE - STOLEN'
Where OFFENSE ='MOTOR VEHICLE THEFT'

/*---------------------------------------------------------------------------------------------------------------*/
