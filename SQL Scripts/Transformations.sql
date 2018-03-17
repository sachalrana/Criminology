USE [AIT581]
GO

/* STANDARDISING COORDINATES */
UPDATE [dbo].[CrimeDB]
   SET 
      [CrimeLocCoordinates] = RIGHT(Crime_Chicago.Location, ABS(len(Crime_Chicago.Location)-2)) from Crime_Chicago
    
 WHERE CrimeCity like 'Chicago'
GO


UPDATE [dbo].[CrimeDB]
   SET 
      [CrimeLocCoordinates] = LEFT(CrimeDB.CrimeLocCoordinates, ABS(len(CrimeDB.CrimeLocCoordinates)-2)) from CrimeDB
    
 WHERE CrimeCity like 'Chicago'

 Select CrimeDB.CrimeLocCoordinates from CrimeDB where CrimeCity like 'Chicago'



 
UPDATE [dbo].[CrimeDB]
   SET 
      [CrimeLocCoordinates] = RIGHT(Crime_LosAngeles.Location#1, ABS(len(Crime_LosAngeles.Location#1)-1)) from Crime_LosAngeles
    
 WHERE CrimeCity like 'Los Angeles'
GO


UPDATE [dbo].[CrimeDB]
   SET 
      [CrimeLocCoordinates] = LEFT(CrimeDB.CrimeLocCoordinates, ABS(len(CrimeDB.CrimeLocCoordinates)-1)) from CrimeDB
    
 WHERE CrimeCity like 'Los Angeles'

 Select CrimeDB.CrimeLocCoordinates from CrimeDB where CrimeCity like 'Los Angeles'


 UPDATE [dbo].[CrimeDB]
   SET 
      [CrimeLocCoordinates] = RIGHT(Crime_NYC.[Location 1], ABS(len(Crime_NYC.[Location 1])-2)) from Crime_NYC
    
 WHERE CrimeCity like 'New York City'
GO


UPDATE [dbo].[CrimeDB]
   SET 
      [CrimeLocCoordinates] = LEFT(CrimeDB.CrimeLocCoordinates, ABS(len(CrimeDB.CrimeLocCoordinates)-2)) from CrimeDB
    
 WHERE CrimeCity like 'New York City'

 Select CrimeDB.CrimeLocCoordinates from CrimeDB where CrimeCity like 'New York City'

 /* --------------------------------------------------------------------------------- */



UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Central'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '1'

 UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Wentworth'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '2'

 UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Grand Crossing'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '3'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'South Chicago'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '4'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Calumet'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '5'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Gresham'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '6'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Englewood'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '7'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Chicago Lawn'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '8'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Deering'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '9'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Ogden'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '10'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Harrison'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '11'

 UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Monroe/Near West'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '12'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Wood'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '13'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Shakespeare'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '14'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Austin'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '15'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Jefferson Park'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '16'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Albany Park'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '17'								

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Near North'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '18'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Belmont/Town Hall'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '19'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Foster/Lincoln'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '20'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Prarie'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '21'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Morgan Park'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '22'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Town Hall'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '23'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Rogers Park'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '24'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Grand Central'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '25'

  UPDATE [dbo].[CrimeDB]
   SET
      [CrimeLocation] = 'Harrison'
     
 WHERE CrimeCity like 'Chicago' and CrimeLocation like '31'

 /*-----------------------------Chicago Missing Coordinates Look Up-----------------------------*/

 Update CrimeDB
 SET CrimeLocCoordinates = '41.9690,-87.7197' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Albany Park'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.8930,-87.7617' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Austin'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.9264,-87.7659' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Belmont/Town Hall'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.7298,-87.5705' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Calumet'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.8803,-87.6236' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Central'
 
 Update CrimeDB
 SET CrimeLocCoordinates = '41.7719,-87.6954' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Chicago Lawn'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.6852,-87.5692' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Deering'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.7753,-87.6416' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Englewood'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.973343,-87.869957' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Foster/Lincoln'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.893329,-87.647227' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Grand Central'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.762504,-87.595705' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Grand Crossing'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.7434,-87.6562' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Gresham'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.8741,-87.6276' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Harrison'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.9825,-87.7704' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Jefferson Park'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.8811,-87.6630' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Monroe/Near West'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.6878,-87.6690' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Morgan Park'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.9003,-87.6334' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Near North'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.8796,-87.6680' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Ogden'

 Update CrimeDB
 SET CrimeLocCoordinates = '42.0106,-87.6696' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Rogers Park'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.891703,-87.605819' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Shakespeare'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.7397,-87.5544' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'South Chicago'

 Update CrimeDB
 SET CrimeLocCoordinates = '41.7894,-87.7800' 
 where CrimeCity = 'Chicago' and CrimeLocCoordinates is NULL and CrimeLocation = 'Wentworth'


  
UPDATE [dbo].[CrimeDB]
   SET 
      [CrimeLocCoordinates] = RIGHT(CrimeDB.CrimeLocCoordinates, ABS(len(CrimeDB.CrimeLocCoordinates)-1)) from CrimeDB    
 WHERE CrimeCity like 'Chicago' and CrimeLocCoordinates like '(%'


UPDATE [dbo].[CrimeDB]
   SET 
      [CrimeLocCoordinates] = LEFT(CrimeDB.CrimeLocCoordinates, ABS(len(CrimeDB.CrimeLocCoordinates)-1)) from CrimeDB
    
 WHERE CrimeCity like 'Chicago' and CrimeLocCoordinates like  '%)'

 Select CrimeLocCoordinates from CrimeDB where CrimeCity = 'Chicago'
