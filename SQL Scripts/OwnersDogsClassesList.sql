--'DBF00179-04B2-442D-9D0D-2461F872EAFB'
Declare @Show_ID uniqueidentifier = '0BF7FBA4-2803-452D-A3C2-5BB6D22DD896'
--Declare @Show_Entry_Class_ID uniqueidentifier = '9613FDC2-897C-45E1-B80F-F2294C797AB7'
Declare @Show_Final_Class_ID uniqueidentifier = null
declare @OrderBy int = 1
select 
	dc.Ring_No
	,ISNULL(NULLIF(owners.Person_Surname,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,''),'') as Owner	
	,d.Dog_KC_Name
	,dc.Running_Order
	,e.Offer_Of_Help
	,CONVERT(VARCHAR, sfc.Show_Final_Class_No) + ' - ' + sfc.Show_Final_Class_Description as Class_Name
	,e.Entrant_ID
	,owners.Person_ID
	,d.Dog_ID
	,dc.Dog_Class_ID
	,sfc.Show_Final_Class_ID
	,e.Entry_Date
FROM [sussexsoftwaresolutions].[dbo].[tblDog_Classes] dc
inner join [sussexsoftwaresolutions].[dbo].[tblDogs] d
on dc.Dog_ID = d.Dog_ID
and d.Deleted_By is null
inner join [sussexsoftwaresolutions].[dbo].[lnkDog_Owners] do
on d.Dog_ID = do.Dog_ID
and do.Deleted_By is null
inner join [sussexsoftwaresolutions].[dbo].[tblPeople] owners
on do.Owner_ID = owners.Person_ID
and owners.Deleted_By is null
inner join [sussexsoftwaresolutions].[dbo].[tblEntrants] e
on dc.Entrant_ID = e.Entrant_ID
and e.Deleted_By is null
inner join [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes] sfc
on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
and (sfc.Show_Final_Class_ID = @Show_FInal_Class_ID OR @Show_Final_Class_ID IS NULL)
inner join [sussexsoftwaresolutions].[dbo].[tblShow_Entry_Classes] sec
on sfc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
and sec.Deleted_By is null
inner join [sussexsoftwaresolutions].[dbo].[lkpClass_Names] cn
on sec.Class_Name_ID = cn.Class_Name_ID
and cn.Class_Name_Description <> 'NFC'
inner join [sussexsoftwaresolutions].[dbo].[tblShows] s
on sfc.Show_ID = s.Show_ID
and s.Show_ID = @Show_ID
where dc.Deleted_By is null
and dc.Running_Order is not null
--order by Entry_Date desc, dc.Ring_No, Dog_KC_Name, Class_No
order by sfc.Show_Final_Class_No, Running_Order

--update tblDog_Classes set Running_Order = null where Running_Order is not null