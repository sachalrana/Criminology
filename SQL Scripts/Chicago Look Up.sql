/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * from CrimeDB where CrimeCity = 'Chicago'

Select CrimeLocation, CrimeLocCoordinates from CrimeDB where CrimeCity = 'Chicago' and CrimeLocation = 'Albany Park'

Select distinct CrimeLocation from CrimeDB where CrimeLocCoordinates is NULL

Update CrimeDB
Set CrimeDB.CrimeLocCoordinates = ChicagoLocationCoordinatesLookUpTable.
