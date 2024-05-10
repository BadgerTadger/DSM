USE [WSuffolk_2024]
GO


DECLARE @TTEST TABLE
(
  TEST UNIQUEIDENTIFIER
)

DECLARE @UNIQUEX UNIQUEIDENTIFIER
SET @UNIQUEX = NEWID();


INSERT INTO [dbo].[tblDog_Classes]
           ([Dog_Class_ID]
           ,[Entrant_ID]
           ,[Dog_ID]
           ,[Show_Entry_Class_ID]
           ,[Preferred_Part]
           ,[Show_Final_Class_ID]
           ,[Handler_ID]
           ,[Ring_No]
           ,[Running_Order]
           ,[Special_Request]
           ,[Created_Date]
           ,[Created_By]
           ,[Modified_Date]
           ,[Modified_By]
           ,[Deleted_Date]
           ,[Deleted_By])
     VALUES
           (@UNIQUEX
           ,'C9095749-4B00-4F9C-BEB8-1839DB9F9C75'
           ,'EA894249-92AC-448B-BE86-477951CD3372'
		   ,'B77602B5-4175-4D81-B2AC-995FC0E93BE0'
           ,0
           ,'7C2DA8CB-F0EF-45C9-A332-06A7C520749C' 
           ,'A40B9838-006D-44F9-9EE4-D7FA55F630D3'
           ,171
           ,0
           ,'Please draw in B'
           ,'2024-05-08 20:00:00'
           ,'B62E5FED-8459-4540-B0A9-CC50AAB7ADC2'
           ,'2024-05-08 20:00:00'
           ,'B62E5FED-8459-4540-B0A9-CC50AAB7ADC2'
           ,null
           ,null)
GO

       
