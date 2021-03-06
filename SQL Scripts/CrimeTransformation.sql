/****** Script for SelectTopNRows command from SSMS  ******/


UPDATE CrimeTypeTest 
  SET Crime_Type = 
  CASE
  WHEN CHARINDEX('"', Crime_Type) = 1
	THEN RIGHT(Crime_Type, ABS(len(Crime_Type)-1))
	ELSE
	RIGHT(Crime_Type, ABS(len(Crime_Type)))
		END
		
from CrimeTypeTest

  Update CrimeTypeTest 
  SET Crime_Type = 'SPOUSAL (COHAB) ABUSE - SIMPLE ASSAULT'
  Where Crime_Type like 'SPOUSAL(COHAB) ABUSE - SIMPLE ASSAULT'

  UPDATE CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type, 'OF', '-')
Where Crime_Type like 'VIOLATION%'

 UPDATE CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type, 'OF', '-')
Where Crime_Type like 'THEFT%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'-',' ')
where Crime_Type like 'HOMICIDE%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,',',' ')
where Crime_Type like 'REPLICA%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,',','')
where Crime_Type like 'SHOTS%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'SHOTS','SHOTS -')
where Crime_Type like 'SHOTS%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'SPOUSAL(COHAB)','SPOUSAL (COHAB)')
where Crime_Type like 'SPOUSAL%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,',','')
where Crime_Type like 'THEFT, COIN%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,',','-')
where Crime_Type like 'THEFT, PERSO%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'THREATENING','THREATS,')
where Crime_Type like 'THREATENING%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,',','')
where Crime_Type like 'VANDALISM%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,',',' ')
where Crime_Type like 'THEFT-GRAND%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'SEXUAL PENTRATION','SEX, PENETRATION')
where Crime_Type like 'SEXUAL%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'SEX OFFENDER','SEX, OFFENDER')
where Crime_Type like 'SEX OFFENDER%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'ASSAULT WITH DEADLY WEAPON','ASSAULT WITH DEADLY WEAPON,')
where Crime_Type like 'ASSAULT WITH DEADLY WEAPON%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'ASSAULT WITH DEADLY WEAPON,,','ASSAULT WITH DEADLY WEAPON,')
where Crime_Type like 'ASSAULT WITH DEADLY WEAPON,,%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'BURGLARY FROM VEHICLE, ATTEMPTED','BURGLARY, FROM VEHICLE ATTEMPTED')
where Crime_Type like 'BURGLARY FROM VEHICLE, ATTEMPTED'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,',','')
where Crime_Type like 'VANDALISM%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,',',' ')
where Crime_Type like 'THEFT-GRAND%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'BATTERY','BATTERY -')
where Crime_Type like 'BATTERY%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'BATTERY - - SIMPLE ASSAULT','BATTERY - SIMPLE ASSAULT')
where Crime_Type like 'BATTERY - - SIMPLE ASSAULT'


Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'CHILD, CRIME AGAINST','CHILD CRIME AGAINST')
where Crime_Type like 'CHILD, CRIME AGAINST'


Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'DISHONEST EMPLOYEE ATTEMPTED THEFT','DISHONEST EMPLOYEE - ATTEMPTED THEFT')
where Crime_Type like 'DISHONEST EMPLOYEE ATTEMPTED THEFT'


Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'OTHER','OTHER -')
where Crime_Type like 'OTHER%'


Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'DRUGS, TO A MINOR','DRUGS TO A MINOR')
where Crime_Type like 'DRUGS, TO A MINOR'


Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'GRAND THEFT /','GRAND THEFT -')
where Crime_Type like 'GRAND THEFT / %'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'DOCUMENT WORTHLESS ','DOCUMENT WORTHLESS - ')
where Crime_Type like 'DOCUMENT WORTHLESS%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'DOCUMENT WORTHLESS - -','DOCUMENT WORTHLESS - ')
where Crime_Type like 'DOCUMENT WORTHLESS%'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,'BEASTIALITY, CRIME AGAINST NATURE SEXUAL ASSLT WITH ANIM','BEASTIALITY CRIME AGAINST NATURE SEXUAL ASSLT WITH ANIM')
where Crime_Type like 'BEASTIALITY, CRIME AGAINST NATURE SEXUAL ASSLT WITH ANIM'

Update CrimeTypeTest
SET Crime_Type = REPLACE(Crime_Type,',','-')
