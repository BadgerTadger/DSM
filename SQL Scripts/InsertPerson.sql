USE [Petersfield_2023]
GO

DECLARE @guid uniqueidentifier = NEWID();
 --SELECT @guid as 'GUID';

INSERT INTO [dbo].[tblPeople]
           ([Person_ID]
           ,[Person_Title]
           ,[Person_Surname]
           ,[Person_Forename])
     VALUES
           (@guid
           ,null
           ,'Dunn'
           ,'Isla')
GO


