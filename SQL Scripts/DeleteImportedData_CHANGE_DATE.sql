
DECLARE @ImportDate DateTime = '2016-04-24 16:00'

Delete FROM lnkDog_Owners
WHERE        (Created_Date > @ImportDate)

Delete FROM lnkDog_Owners_Audit

DELETE FROM [dbo].[tblDog_Classes]
WHERE        (Created_Date > @ImportDate)

Delete FROM [dbo].[tblPeople]
WHERE        (Created_Date > @ImportDate)

DELETE FROM [dbo].[tblAddresses]
WHERE        (Created_Date > @ImportDate)

DELETE FROM [dbo].[tblEntrants]
WHERE        (Created_Date > @ImportDate)

DELETE  FROM [dbo].[tblDogs]
WHERE        (Created_Date > @ImportDate)

DELETE tblEntryClassCount

DELETE tblFinalClassNames

DELETE tblRing_Numbers

DELETE FROM tblShow_Final_Classes
WHERE (Created_Date > @ImportDate)

