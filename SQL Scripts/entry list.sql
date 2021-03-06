/****** Script for SelectTopNRows command from SSMS  ******/
SELECT coalesce(p.Person_Title + ' ','') + coalesce(p.Person_Forename + ' ','') + coalesce(p.Person_Surname,'') as Owner,
--	d.Dog_KC_Name
	cn.Class_Name_Description
	--,do.No_Of_Owners
  FROM [sussexsoftwaresolutions].[dbo].[tblEntrants] e
  inner join [sussexsoftwaresolutions].[dbo].[tblDog_Classes] dc
  on e.Entrant_ID=dc.Entrant_ID
  inner join [sussexsoftwaresolutions].[dbo].[tblShow_Entry_Classes] sec
  on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
  inner join [sussexsoftwaresolutions].[dbo].[lkpClass_Names] cn
  on sec.Class_Name_ID = cn.Class_Name_ID
  inner join [sussexsoftwaresolutions].[dbo].[tblDogs] d
  on dc.Dog_ID=d.Dog_ID
  /*
  inner join (SELECT [Dog_ID],count([Owner_ID]) as No_Of_Owners
  FROM [sussexsoftwaresolutions].[dbo].[lnkDog_Owners]
  group by Dog_ID) do
  on do.Dog_ID = d.Dog_ID
  */
  
  --inner join [sussexsoftwaresolutions].[dbo].[lnkDog_Owners] do
  --on d.Dog_ID = do.Dog_ID
  inner join [sussexsoftwaresolutions].[dbo].[tblPeople] p
  on dc.Handler_ID=p.Person_ID
  
  where e.Deleted_By is null
  and dc.Deleted_By is null
  and sec.Deleted_By is null
  and d.Deleted_By is null
  --and do.Deleted_By is null
  --and p.Deleted_By is null
  and cn.Class_Name_Description <> 'NFC'
  --group by cn.Class_Name_Description
  order by e.Created_Date
  --and p.person_surname = 'jillett'