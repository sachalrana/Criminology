USE [AIT581]
GO

INSERT INTO Crime_FactTable
select d.Dim_CrimeDate_ID, t.Dim_CrimeTime_ID, l.Dim_CrimeLocation_ID, lc.Dim_CrimeLocCoordinates_ID, ct.Dim_CrimeType_ID, cc.Dim_City_ID
from Dim_CrimeDate d, Dim_CrimeTime t, Dim_CrimeLocation l, Dim_CrimeLocCoordinates lc, Dim_CrimeType ct, Dim_CrimeCity cc, CrimeDB cd
where cd.CrimeDate = d.CrimeDate_Original
and cd.CrimeTime = t.CrimeTime_Original
and cd.CrimeLocation = l.CrimeLocation
and cd.CrimeLocCoordinates = lc.CrimeLocCoordinates_Original
and cd.CrimeType = ct.Crime_Original
and cd.CrimeCity = cc.City_Name



