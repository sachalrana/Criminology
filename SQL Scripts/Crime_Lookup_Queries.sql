/****** Script for SelectTopNRows command from SSMS  ******/
SELECT Distinct Description, Count(Description) from Crime_Chicago where [Primary Type] = 'ASSAULT' group by Description

SELECT Distinct Description, Crime_Chicago.[Primary Type], Count(Description) from Crime_Chicago group by Description,[Primary Type]

SELECT Distinct Description, Count(Description) from Crime_Chicago where [Primary Type] = 'CRIM SEXUAL ASSAULT' group by Description

SELECT Distinct Description, Count(Description) from Crime_Chicago where [Primary Type] = 'DECEPTIVE PRACTICE' group by Description

SELECT Distinct Description, Count(Description) from Crime_Chicago where [Primary Type] = 'NON-CRIMINAL' group by Description

SELECT Distinct Description, Count(Description) from Crime_Chicago where [Primary Type] = 'NON - CRIMINAL' group by Description

SELECT Distinct Description, Count(Description) from Crime_Chicago where [Primary Type] = 'OFFENSE INVOLVING CHILDREN' group by Description

SELECT Distinct Description, Count(Description) from Crime_Chicago where [Primary Type] = 'OTHER OFFENSE' group by Description

SELECT Distinct Description, Count(Description) from Crime_Chicago where [Primary Type] = 'SEX OFFENSE' group by Description