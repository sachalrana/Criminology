/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Date#Rptd]
      ,[DR#NO]
      ,[DATE#OCC]
      ,[TIME#OCC]
      ,[AREA]
      ,[AREA#NAME]
      ,[RD]
      ,[Crm#Cd]
      ,[CrmCd#Desc]
      ,[Tra]
      ,[Status#Desc]
      ,[LOCATION]
      ,[Cross#Street]
      ,[Location#1]
      ,[NewTime]
  FROM [AIT581].[dbo].[Crime_LosAngeles]

  /****** Script for SelectTopNRows command from SSMS  ******/


UPDATE Crime_LosAngeles 
  SET CrmCd#Desc = 
  CASE
  WHEN CHARINDEX('"', CrmCd#Desc) = 1
	THEN RIGHT(CrmCd#Desc, ABS(len(CrmCd#Desc)-1))
	ELSE
	RIGHT(CrmCd#Desc, ABS(len(CrmCd#Desc)))
		END
		
from Crime_LosAngeles

  Update Crime_LosAngeles 
  SET CrmCd#Desc = 'SPOUSAL (COHAB) ABUSE - SIMPLE ASSAULT'
  Where CrmCd#Desc like 'SPOUSAL(COHAB) ABUSE - SIMPLE ASSAULT'

  UPDATE Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc, 'OF', '-')
Where CrmCd#Desc like 'VIOLATION%'

 UPDATE Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc, 'OF', '-')
Where CrmCd#Desc like 'THEFT%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'-',' ')
where CrmCd#Desc like 'HOMICIDE%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,',',' ')
where CrmCd#Desc like 'REPLICA%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,',','')
where CrmCd#Desc like 'SHOTS%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'SHOTS','SHOTS -')
where CrmCd#Desc like 'SHOTS%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'SPOUSAL(COHAB)','SPOUSAL (COHAB)')
where CrmCd#Desc like 'SPOUSAL%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,',','')
where CrmCd#Desc like 'THEFT, COIN%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,',','-')
where CrmCd#Desc like 'THEFT, PERSO%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'THREATENING','THREATS,')
where CrmCd#Desc like 'THREATENING%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,',','')
where CrmCd#Desc like 'VANDALISM%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,',',' ')
where CrmCd#Desc like 'THEFT-GRAND%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'SEXUAL PENTRATION','SEX, PENETRATION')
where CrmCd#Desc like 'SEXUAL%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'SEX OFFENDER','SEX, OFFENDER')
where CrmCd#Desc like 'SEX OFFENDER%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'ASSAULT WITH DEADLY WEAPON','ASSAULT WITH DEADLY WEAPON,')
where CrmCd#Desc like 'ASSAULT WITH DEADLY WEAPON%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'ASSAULT WITH DEADLY WEAPON,,','ASSAULT WITH DEADLY WEAPON,')
where CrmCd#Desc like 'ASSAULT WITH DEADLY WEAPON,,%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'BURGLARY FROM VEHICLE, ATTEMPTED','BURGLARY, FROM VEHICLE ATTEMPTED')
where CrmCd#Desc like 'BURGLARY FROM VEHICLE, ATTEMPTED'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,',','')
where CrmCd#Desc like 'VANDALISM%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,',',' ')
where CrmCd#Desc like 'THEFT-GRAND%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'BATTERY','BATTERY -')
where CrmCd#Desc like 'BATTERY%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'BATTERY - - SIMPLE ASSAULT','BATTERY - SIMPLE ASSAULT')
where CrmCd#Desc like 'BATTERY - - SIMPLE ASSAULT'


Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'CHILD, CRIME AGAINST','CHILD CRIME AGAINST')
where CrmCd#Desc like 'CHILD, CRIME AGAINST'


Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'DISHONEST EMPLOYEE ATTEMPTED THEFT','DISHONEST EMPLOYEE - ATTEMPTED THEFT')
where CrmCd#Desc like 'DISHONEST EMPLOYEE ATTEMPTED THEFT'


Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'OTHER','OTHER -')
where CrmCd#Desc like 'OTHER%'


Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'DRUGS, TO A MINOR','DRUGS TO A MINOR')
where CrmCd#Desc like 'DRUGS, TO A MINOR'


Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'GRAND THEFT /','GRAND THEFT -')
where CrmCd#Desc like 'GRAND THEFT / %'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'DOCUMENT WORTHLESS ','DOCUMENT WORTHLESS - ')
where CrmCd#Desc like 'DOCUMENT WORTHLESS%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'DOCUMENT WORTHLESS - -','DOCUMENT WORTHLESS - ')
where CrmCd#Desc like 'DOCUMENT WORTHLESS%'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,'BEASTIALITY, CRIME AGAINST NATURE SEXUAL ASSLT WITH ANIM','BEASTIALITY CRIME AGAINST NATURE SEXUAL ASSLT WITH ANIM')
where CrmCd#Desc like 'BEASTIALITY, CRIME AGAINST NATURE SEXUAL ASSLT WITH ANIM'

Update Crime_LosAngeles
SET CrmCd#Desc = REPLACE(CrmCd#Desc,',','-')

Update Crime_LosAngeles
Set CrmCd#Desc = 'LEWD - LETTERS'
Where CrmCd#Desc like 'LETTERS- LEWD'

Update Crime_LosAngeles
Set CrmCd#Desc = 'LEWD - CONDUCT'
Where CrmCd#Desc like 'LEWD CONDUCT'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CREDIT CARD FRAUD - USE ($950 & UNDER)'
Where CrmCd#Desc like 'CREDIT CARDS- FRAUD USE ($950 & UNDER'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CREDIT CARD FRAUD - USE ($950.01 & OVER)'
Where CrmCd#Desc like 'CREDIT CARDS- FRAUD USE ($950.01 & OVER)'

Update Crime_LosAngeles
Set CrmCd#Desc = 'DRUGS - TO A MINOR'
Where CrmCd#Desc like 'DRUGS TO A MINOR'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CHILD NEGLECT'
Where CrmCd#Desc like 'CHILD NEGLECT (SEE 300 W.I.C.)'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CHILD ENDANGERMENT'
Where CrmCd#Desc like 'CHILD ENDANGERMENT/NEG.'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CHILD ABUSE - AGGRAVATED ASSAULT'
Where CrmCd#Desc like 'CHILD ABUSE (PHYSICAL) - AGGRAVATED ASSAULT'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CHILD ABUSE - SIMPLE ASSAULT'
Where CrmCd#Desc like 'CHILD ABUSE (PHYSICAL) - SIMPLE ASSAULT'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CHILD ABUSE - ANNOYING'
Where CrmCd#Desc like 'CHILD ANNOYING (17YRS & UNDER- DID NOT TOUCH VICTIM)'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CHILD ABUSE - STEALING'
Where CrmCd#Desc like 'CHILD STEALING'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CHILD ABUSE - NEGLECT'
Where CrmCd#Desc like 'CHILD NEGLECT'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CHILD ABUSE - ENDANGERMENT'
Where CrmCd#Desc like 'CHILD ENDANGERMENT'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CHILD ABUSE - ABANDONMENT'
Where CrmCd#Desc like 'CHILD ABANDONMENT'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CHILD ABUSE - CRIME AGAINST'
Where CrmCd#Desc like 'CHILD CRIME AGAINST'

Update Crime_LosAngeles
Set CrmCd#Desc = 'INCEST'
Where CrmCd#Desc like 'INCEST (SEXUAL ACTS BETWEEN BLOOD RELATIVES)'

Update Crime_LosAngeles
Set CrmCd#Desc = 'SEX OFFENSE - OFFENDER REGISTRANT INCIDENT'
Where CrmCd#Desc like 'SEX- OFFENDER REGISTRANT INCIDENT'

Update Crime_LosAngeles
Set CrmCd#Desc = 'SEX OFFENSE - PENETRATION WITH A FOREIGN OBJECT'
Where CrmCd#Desc like 'SEX- PENETRATION WITH A FOREIGN OBJECT'

Update Crime_LosAngeles
Set CrmCd#Desc = 'SEX OFFENSE - UNLAWFUL'
Where CrmCd#Desc like 'SEX- UNLAWFUL'

Update Crime_LosAngeles
Set CrmCd#Desc = 'WEAPONS VIOLATION'
Where CrmCd#Desc like 'WEAPONS POSSESSION/BOMBING'

Update Crime_LosAngeles
Set CrmCd#Desc = 'CRUELTY TO ANIMALS'
Where CrmCd#Desc like 'BEASTIALITY CRIME AGAINST NATURE SEXUAL ASSLT WITH ANIM'

Update Crime_LosAngeles
Set CrmCd#Desc = 'VEHICLE - STOLEN'
Where CrmCd#Desc like 'BIKE - STOLEN' or CrmCd#Desc like 'BOAT - STOLEN'

Update Crime_LosAngeles
Set CrmCd#Desc = 'VEHICLE - ATTEMPT STOLEN'
Where CrmCd#Desc like 'BIKE - ATTEMPTED STOLEN'

Update Crime_LosAngeles
Set CrmCd#Desc = 'SODOMY'
Where CrmCd#Desc like 'SODOMY/SEXUAL CONTACT B/W PENIS OF ONE PERS TO ANUS OTH'

Update Crime_LosAngeles
Set CrmCd#Desc = 'SPOUSAL ABUSE - AGGRAVATED ASSAULT'
Where CrmCd#Desc like 'SPOUSAL (COHAB) ABUSE - AGGRAVATED ASSAULT'


Update Crime_LosAngeles
Set CrmCd#Desc = 'SPOUSAL ABUSE - SIMPLE ASSAULT'
Where CrmCd#Desc like 'SPOUSAL (COHAB) ABUSE - SIMPLE ASSAULT'

















Select distinct CrmCd#Desc from Crime_LosAngeles

/*--------------------------------------------------------------------------------------------------------------------*/
 
UPDATE [dbo].[Crime_LosAngeles]
   SET 
      [Location#1] = RIGHT(Crime_LosAngeles.Location#1, ABS(len(Crime_LosAngeles.Location#1)-1)) from Crime_LosAngeles
GO


UPDATE [dbo].[Crime_LosAngeles]
   SET 
      [Location#1] = LEFT(Crime_LosAngeles.Location#1, ABS(len(Crime_LosAngeles.Location#1)-1)) from Crime_LosAngeles
GO

/*------------------------------------------------------------------------------------------------------------------------*/

