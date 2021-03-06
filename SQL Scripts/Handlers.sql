--declare @Show_ID uniqueidentifier = '0BF7FBA4-2803-452D-A3C2-5BB6D22DD896' -- Findon
declare @Show_ID uniqueidentifier = 'DBF00179-04B2-442D-9D0D-2461F872EAFB' -- HB Champ (Sat)
--declare @Show_ID uniqueidentifier = '87461DB2-3D66-4CC8-B2E5-2E17D511BA49' -- HB Open (Sun)

declare @Owner_ID uniqueidentifier = '2FD118AA-BD67-474B-A33E-FD150E3A808C' -- Annette Dowd

delete [sussexsoftwaresolutions].[dbo].[tblOwnersDogsClassesHandlers]
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblOwnersDogsClassesHandlers]

SELECT 
	dc.[Dog_Class_ID]
	,[Owner_ID]
	,dc.Handler_ID
	,ISNULL(NULLIF(ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Surname,''),''),''),'Unknown') as [Owner]
	,d.Dog_KC_Name
	,CASE  
	WHEN Show_Final_Class_No < 18 
	THEN 'Sat - ' + Show_Final_Class_Description
	ELSE 'Sun - ' + Show_Final_Class_Description
	END as Class
	,ISNULL(NULLIF(ISNULL(NULLIF(handlers.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(handlers.Person_Forename,'') + ' ', '')
	+ ISNULL(NULLIF(handlers.Person_Surname,''),''),''),'Unknown') as [Handler]
	FROM [sussexsoftwaresolutions].[dbo].[lnkDog_Owners] do
	inner JOIN [sussexsoftwaresolutions].[dbo].[tblDogs] d
	on do.Dog_ID = d.Dog_ID
	and do.Owner_ID = @Owner_ID
	and d.Deleted_By is null
	inner JOIN [sussexsoftwaresolutions].[dbo].[tblPeople] owners
	on do.Owner_ID = owners.Person_ID
	and owners.Deleted_By is null
	inner JOIN [sussexsoftwaresolutions].[dbo].[tblDog_Classes] dc
	on d.Dog_ID = dc.Dog_ID
	and dc.Deleted_By is null
	inner JOIN [sussexsoftwaresolutions].[dbo].[tblPeople] handlers
	on dc.Handler_ID = handlers.Person_ID
	and handlers.Deleted_By is null
	inner JOIN [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes] sfc
	on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
	and sfc.Deleted_By is null
	

SELECT [Dog_Class_ID]
      ,[Owner_ID]
      ,[Handler_ID]
      ,[Owner]
      ,[Dog_KC_Name]
      ,[Class]
      ,[Handler]
  FROM [sussexsoftwaresolutions].[dbo].[tblOwnersDogsClassesHandlers]
  order by dog_kc_name
GO

