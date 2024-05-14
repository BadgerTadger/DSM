
Declare @Show_ID uniqueidentifier = '86BFB3B8-DF78-4DF1-B12E-0AEF81668F88'
--Declare @Show_Entry_Class_ID uniqueidentifier = '9613FDC2-897C-45E1-B80F-F2294C797AB7'
Declare @Show_Entry_Class_ID uniqueidentifier = null
Declare @SpecialRequestsOnly bit = 1
select 
	dc.Ring_No
	,ISNULL(NULLIF(owners.Person_Surname,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,''),'') as Owner	
	,d.Dog_KC_Name
	,dc.Special_Request
	,CONVERT(VARCHAR, sfc.Show_Final_Class_No) + ' - ' + sfc.Show_Final_Class_Description as Class_Name
	,dc.Dog_Class_ID
	,sfc.Show_Entry_Class_ID
	,sfc.Show_Final_Class_ID
FROM [Petersfield_2024].[dbo].[tblDog_Classes] dc
inner join [Petersfield_2024].[dbo].[tblDogs] d
on dc.Dog_ID = d.Dog_ID
and d.Deleted_By is null
and ((@SpecialRequestsOnly = 1 AND nullif(dc.Special_Request,'') is not null)
or (@SpecialRequestsOnly = 0 AND nullif(dc.Special_Request,'') is null))
inner join [Petersfield_2024].[dbo].[lnkDog_Owners] do
on d.Dog_ID = do.Dog_ID
and do.Deleted_By is null
inner join [Petersfield_2024].[dbo].[tblPeople] owners
on do.Owner_ID = owners.Person_ID
and owners.Deleted_By is null
inner join [Petersfield_2024].[dbo].[tblEntrants] e
on dc.Entrant_ID = e.Entrant_ID
and e.Deleted_By is null
inner join [Petersfield_2024].[dbo].[tblShow_Entry_Classes] sec
on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
and sec.Deleted_By is null
and (sec.Show_Entry_Class_ID = @Show_Entry_Class_ID OR @Show_Entry_Class_ID IS NULL)
inner join [Petersfield_2024].[dbo].[tblShows] s
on sec.Show_ID = s.Show_ID
inner join [Petersfield_2024].[dbo].[tblShow_Final_Classes] sfc
on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
and s.Show_ID = @Show_ID
inner join [Petersfield_2024].[dbo].[lkpClass_Names] cn
on sec.Class_Name_ID = cn.Class_Name_ID
and cn.Class_Name_Description <> 'NFC'
inner join
(select @Show_ID as Show_ID
Union ALL
select Child_Show_ID as Show_ID
from [Petersfield_2024].[dbo].[lnkLinked_Shows] ls
where Parent_Show_ID = @Show_ID) sl
on sec.Show_ID = sl.Show_ID
where dc.Deleted_By is null
order by Ring_No, d.Dog_KC_Name, owners.Created_Date, sfc.Show_Final_Class_No
