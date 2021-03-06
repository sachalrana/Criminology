UPDATE [dbo].[Crime_Chicago]
   SET 
      [Location] = RIGHT(Crime_Chicago.Location, ABS(len(Crime_Chicago.Location)-1)) from Crime_Chicago
GO

UPDATE [dbo].[Crime_Chicago]
   SET 
      [Location] = LEFT(Crime_Chicago.Location, ABS(len(Crime_Chicago.Location)-1)) from Crime_Chicago
GO

/*-----------------------------------------------------------------------------------------------------------------*/

UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Central'
     
 where  District like '1'

 UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Wentworth'
     
 where  District like '2'

 UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Grand Crossing'
     
 where  District like '3'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'South Chicago'
     
 where  District like '4'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Calumet'
     
 where  District like '5'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Gresham'
     
 where  District like '6'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Englewood'
     
 where  District like '7'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Chicago Lawn'
     
 where  District like '8'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Deering'
     
 where  District like '9'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Ogden'
     
 where  District like '10'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Harrison'
     
 where  District like '11'

 UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Monroe/Near West'
     
 where  District like '12'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Wood'
     
 where  District like '13'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Shakespeare'
     
 where  District like '14'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Austin'
     
 where  District like '15'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Jefferson Park'
     
 where  District like '16'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Albany Park'
     
 where  District like '17'								

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Near North'
     
 where  District like '18'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Belmont/Town Hall'
     
 where  District like '19'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Foster/Lincoln'
     
 where  District like '20'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Prarie'
     
 where  District like '21'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Morgan Park'
     
 where  District like '22'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Town Hall'
     
 where  District like '23'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Rogers Park'
     
 where  District like '24'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Grand Central'
     
 where  District like '25'

  UPDATE [dbo].[Crime_Chicago]
   SET
      [Location Description] = 'Harrison'
     
 where  District like '31'

 /*------------------------------------------------------------------------------------------------------------*/

 Update Crime_Chicago
 SET Location = '41.9690,-87.7197' 
 where Location is NULL and [Location Description] = 'Albany Park'

 Update Crime_Chicago
 SET Location = '41.8930,-87.7617' 
 where Location is NULL and [Location Description] = 'Austin'

 Update Crime_Chicago
 SET Location = '41.9264,-87.7659' 
 where Location is NULL and [Location Description] = 'Belmont/Town Hall'

 Update Crime_Chicago
 SET Location = '41.7298,-87.5705' 
 where Location is NULL and [Location Description] = 'Calumet'

 Update Crime_Chicago
 SET Location = '41.8803,-87.6236' 
 where Location is NULL and [Location Description] = 'Central'
 
 Update Crime_Chicago
 SET Location = '41.7719,-87.6954' 
 where Location is NULL and [Location Description] = 'Chicago Lawn'

 Update Crime_Chicago
 SET Location = '41.6852,-87.5692' 
 where Location is NULL and [Location Description] = 'Deering'

 Update Crime_Chicago
 SET Location = '41.7753,-87.6416' 
 where Location is NULL and [Location Description] = 'Englewood'

 Update Crime_Chicago
 SET Location = '41.973343,-87.869957' 
 where Location is NULL and [Location Description] = 'Foster/Lincoln'

 Update Crime_Chicago
 SET Location = '41.893329,-87.647227' 
 where Location is NULL and [Location Description] = 'Grand Central'

 Update Crime_Chicago
 SET Location = '41.762504,-87.595705' 
 where Location is NULL and [Location Description] = 'Grand Crossing'

 Update Crime_Chicago
 SET Location = '41.7434,-87.6562' 
 where Location is NULL and [Location Description] = 'Gresham'

 Update Crime_Chicago
 SET Location = '41.8741,-87.6276' 
 where Location is NULL and [Location Description] = 'Harrison'

 Update Crime_Chicago
 SET Location = '41.9825,-87.7704' 
 where Location is NULL and [Location Description] = 'Jefferson Park'

 Update Crime_Chicago
 SET Location = '41.8811,-87.6630' 
 where Location is NULL and [Location Description] = 'Monroe/Near West'

 Update Crime_Chicago
 SET Location = '41.6878,-87.6690' 
 where Location is NULL and [Location Description] = 'Morgan Park'

 Update Crime_Chicago
 SET Location = '41.9003,-87.6334' 
 where Location is NULL and [Location Description] = 'Near North'

 Update Crime_Chicago
 SET Location = '41.8796,-87.6680' 
 where Location is NULL and [Location Description] = 'Ogden'

 Update Crime_Chicago
 SET Location = '42.0106,-87.6696' 
 where Location is NULL and [Location Description] = 'Rogers Park'

 Update Crime_Chicago
 SET Location = '41.891703,-87.605819' 
 where Location is NULL and [Location Description] = 'Shakespeare'

 Update Crime_Chicago
 SET Location = '41.7397,-87.5544' 
 where Location is NULL and [Location Description] = 'South Chicago'

 Update Crime_Chicago
 SET Location = '41.7894,-87.7800' 
 where Location is NULL and [Location Description] = 'Wentworth'

 /*-----------------------------------------------------------------------------------------------------------------*/

Update Crime_Chicago
Set [Primary Type] = 'BATTERY - SIMPLE ASSAULT'
Where [Primary Type] = 'BATTERY'

Update Crime_Chicago
Set [Primary Type] = 'RAPE- ATTEMPTED'
Where [Primary Type] = 'CRIM SEXUAL ASSAULT'

Update Crime_Chicago
Set [Primary Type] = 'VANDALISM - FELONY'
Where [Primary Type] = 'CRIMINAL DAMAGE'

Update Crime_Chicago
Set [Primary Type] = 'TRESPASSING'
Where [Primary Type] = 'CRIMINAL TRESPASS'

Update Crime_Chicago
Set [Primary Type] = 'EMBEZZLEMENT'
Where [Primary Type] = 'DECEPTIVE PRACTICE' and Description = 'EMBEZZLEMENT'

Update Crime_Chicago
Set [Primary Type] = 'CREDIT CARD FRAUD'
Where [Primary Type] = 'DECEPTIVE PRACTICE' and Description = 'CREDIT CARD FRAUD'

Update Crime_Chicago
Set [Primary Type] = 'COUNTERFEIT'
Where [Primary Type] = 'DECEPTIVE PRACTICE' and Description = 'COUNTERFEIT CHECK' or Description = 'COUNTERFEITING DOCUMENT'

Update Crime_Chicago
Set [Primary Type] = 'UNAUTHORIZED COMPUTER ACCESS'
Where [Primary Type] = 'DECEPTIVE PRACTICE' and Description = 'COMPUTER FRAUD' or Description = 'UNLAWFUL USE OF A COMPUTER'

Update Crime_Chicago
Set [Primary Type] = 'GRAND THEFT - INSURANCE FRAUD'
Where [Primary Type] = 'DECEPTIVE PRACTICE' and Description = 'INSURANCE FRAUD'

Update Crime_Chicago
Set [Primary Type] = 'THEFT - IDENTITY'
Where [Primary Type] = 'DECEPTIVE PRACTICE' and Description = 'IMPERSONATION'

Update Crime_Chicago
Set [Primary Type] = 'PEEPING TOM'
Where [Primary Type] = 'DECEPTIVE PRACTICE' and Description = 'UNAUTHORIZED VIDEOTAPING'

Update Crime_Chicago
Set [Primary Type] = 'EMBEZZLEMENT'
Where [Primary Type] = 'DECEPTIVE PRACTICE'

Update Crime_Chicago
Set [Primary Type] = 'BRIBERY'
Where [Primary Type] = 'INTERFERENCE WITH PUBLIC OFFICER' and Description = 'BRIBERY'

Update Crime_Chicago
Set [Primary Type] = 'BATTERY - POLICE'
Where [Primary Type] = 'INTERFERENCE WITH PUBLIC OFFICER' and Description = 'RESIST/OBSTRUCT/DISARM OFFICER'

Update Crime_Chicago
Set [Primary Type] = 'CONTEMPT OF COURT'
Where [Primary Type] = 'INTERFERENCE WITH PUBLIC OFFICER' and Description = 'INTERFERENCE JUDICIAL PROCESS'

Update Crime_Chicago
Set [Primary Type] = 'DISTURBING THE PEACE'
Where [Primary Type] = 'INTERFERENCE WITH PUBLIC OFFICER'

Update Crime_Chicago
Set [Primary Type] = 'KIDNAPPING'
Where [Primary Type] = 'KIDNAPPING'

Update Crime_Chicago
Set [Primary Type] = 'VEHICLE - ATTEMPT STOLEN'
Where [Primary Type] = 'MOTOR VEHICLE THEFT' and Description like '%ATT%'

Update Crime_Chicago
Set [Primary Type] = 'VEHICLE - STOLEN'
Where [Primary Type] = 'MOTOR VEHICLE THEFT'

Update Crime_Chicago
Set [Primary Type] = 'DRUGS - TO A MINOR'
Where [Primary Type] = 'NARCOTICS' and Description like '%18'

Update Crime_Chicago
Set [Primary Type] = 'DRUGS'
Where [Primary Type] = 'NARCOTICS' 

Update Crime_Chicago
Set [Primary Type] = 'OTHER - MISCELLANEOUS CRIME'
Where [Primary Type] = 'NON - CRIMINAL' or [Primary Type] = 'NON-CRIMINAL' or [Primary Type] = 'NON-CRIMINAL (SUBJECT SPECIFIED)' 

Update Crime_Chicago
Set [Primary Type] = 'INDECENT EXPOSURE'
Where [Primary Type] = 'OBSCENITY' 

Update Crime_Chicago
Set [Primary Type] = 'CHILD ABANDONMENT'
Where [Primary Type] = 'OFFENSE INVOLVING CHILDREN' and Description = 'CHILD ABANDONMENT'

Update Crime_Chicago
Set [Primary Type] = 'CHILD ABUSE - ABANDONMENT'
Where [Primary Type] = 'CHILD ABANDONMENT' 

Update Crime_Chicago
Set [Primary Type] = 'KIDNAPPING'
Where [Primary Type] = 'OFFENSE INVOLVING CHILDREN' and Description = 'CHILD ABDUCTION'

Update Crime_Chicago
Set [Primary Type] = 'CHILD ABUSE - STEALING'
Where [Primary Type] = 'KIDNAPPING' and Description = 'CHILD ABDUCTION'

Update Crime_Chicago
Set [Primary Type] = 'CHILD ABUSE'
Where [Primary Type] = 'OFFENSE INVOLVING CHILDREN' and Description = 'CHILD ABUSE'

Update Crime_Chicago
Set [Primary Type] = 'CHILD ENDANGERMENT'
Where [Primary Type] = 'OFFENSE INVOLVING CHILDREN' and Description = 'ENDANGERING LIFE/HEALTH CHILD'

Update Crime_Chicago
Set [Primary Type] = 'CHILD ABUSE - ENDANGERMENT'
Where [Primary Type] = 'CHILD ENDANGERMENT'

Update Crime_Chicago
Set [Primary Type] = 'CHILD ABUSE - AGGRAVATED ASSAULT'
Where [Primary Type] = 'OFFENSE INVOLVING CHILDREN' and Description = 'AGG CRIM SEX ABUSE FAM MEMBER' or Description = 'AGG SEX ASSLT OF CHILD FAM MBR'

Update Crime_Chicago
Set [Primary Type] = 'CHILD ABUSE - SIMPLE ASSAULT'
Where [Primary Type] = 'OFFENSE INVOLVING CHILDREN' and Description = 'CRIM SEX ABUSE BY FAM MEMBER' or Description = 'SEX ASSLT OF CHILD BY FAM MBR'

Update Crime_Chicago
Set [Primary Type] = 'CHILD ABUSE - CRIME AGAINST'
Where [Primary Type] = 'OFFENSE INVOLVING CHILDREN'

Update Crime_Chicago
Set [Primary Type] = 'DRUGS'
Where [Primary Type] = 'OTHER NARCOTIC VIOLATION'

Update Crime_Chicago
Set [Primary Type] = 'CRUELTY TO ANIMALS'
Where [Primary Type] = 'OTHER OFFENSE' and Description = 'ANIMAL ABUSE/NEGLECT' or Description = 'ANIMAL FIGHTING'

Update Crime_Chicago
Set [Primary Type] = 'THREATS- PHONE CALLS/LETTERS'
Where [Primary Type] = 'OTHER OFFENSE' and Description = 'TELEPHONE THREAT' or Description = 'HARASSMENT BY ELECTRONIC MEANS' or Description = 'HARASSMENT BY TELEPHONE' or Description = 'OBSCENE TELEPHONE CALLS'

Update Crime_Chicago
Set [Primary Type] = 'STALKING'
Where [Primary Type] = 'OTHER OFFENSE' and Description = 'EAVESDROPPING' 

Update Crime_Chicago
Set [Primary Type] = 'VIOLATION - RESTRAINING ORDER'
Where [Primary Type] = 'OTHER OFFENSE' and Description = 'VIOLATE ORDER OF PROTECTION' 

Update Crime_Chicago
Set [Primary Type] = 'SEX- OFFENDER REGISTRANT INCIDENT'
Where [Primary Type] = 'OTHER OFFENSE' and Description = 'SEX OFFENDER: FAIL TO REGISTER' or Description = 'SEX OFFENDER: FAIL REG NEW ADD' or Description = 'SEX OFFENDER: PROHIBITED ZONE'

Update Crime_Chicago
Set [Primary Type] = 'OTHER - MISCELLANEOUS CRIME'
Where [Primary Type] = 'OTHER OFFENSE'

Update Crime_Chicago
Set [Primary Type] = 'INDECENT EXPOSURE'
Where [Primary Type] = 'PUBLIC INDECENCY'

Update Crime_Chicago
Set [Primary Type] = 'PEEPING TOM'
Where [Primary Type] = 'PUBLIC PEACE VIOLATION' and Description = 'PEEPING TOM'

Update Crime_Chicago
Set [Primary Type] = 'BOMB SCARE'
Where [Primary Type] = 'PUBLIC PEACE VIOLATION' and Description = 'BOMB THREAT'

Update Crime_Chicago
Set [Primary Type] = 'INCITING A RIOT'
Where [Primary Type] = 'PUBLIC PEACE VIOLATION' and Description = 'MOB ACTION'

Update Crime_Chicago
Set [Primary Type] = 'ARSON'
Where [Primary Type] = 'PUBLIC PEACE VIOLATION' and Description = 'ARSON THREAT'

Update Crime_Chicago
Set [Primary Type] = 'DISTURBING THE PEACE'
Where [Primary Type] = 'PUBLIC PEACE VIOLATION'

Update Crime_Chicago
Set [Primary Type] = 'CHILD ABUSE'
Where [Primary Type] = 'SEX OFFENSE' and Description = 'SEXUAL EXPLOITATION OF A CHILD' or Description = 'INDECENT SOLICITATION/CHILD'


Update Crime_Chicago
Set [Primary Type] = 'INCEST'
Where [Primary Type] = 'SEX OFFENSE' and Description = 'SEX RELATION IN FAMILY'

Update Crime_Chicago
Set [Primary Type] = 'INDECENT EXPOSURE'
Where [Primary Type] = 'SEX OFFENSE' and Description = 'PUBLIC INDECENCY'


Update Crime_Chicago
Set [Primary Type] = 'SEX- UNLAWFUL'
Where [Primary Type] = 'SEX OFFENSE' and Description = 'FORNICATION'

































