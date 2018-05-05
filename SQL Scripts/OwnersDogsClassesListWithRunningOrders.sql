--'DBF00179-04B2-442D-9D0D-2461F872EAFB'
Declare @Show_ID uniqueidentifier = 'A28DC61C-425A-49BC-992D-C293618AC98E'
--Declare @Show_Entry_Class_ID uniqueidentifier = '9613FDC2-897C-45E1-B80F-F2294C797AB7'
Declare @Show_Final_Class_ID uniqueidentifier = null
declare @OrderBy int = 1
select 
	dc.Ring_No
	,ISNULL(NULLIF(owners.Person_Surname,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,''),'') as Owner	
	,d.Dog_KC_Name
	,d.Merit_Points
	,dc.Running_Order
	,e.Offer_Of_Help
	,CONVERT(VARCHAR, sfc.Show_Final_Class_No) + ' - ' + sfc.Show_Final_Class_Description as Class_Name
/*	,e.Entrant_ID
	,owners.Person_ID
	,d.Dog_ID
	,dc.Dog_Class_ID
	,sfc.Show_Final_Class_ID*/
	,e.Entry_Date
FROM [tblDog_Classes] dc
inner join [tblDogs] d
on dc.Dog_ID = d.Dog_ID
and d.Deleted_By is null
inner join [lnkDog_Owners] do
on d.Dog_ID = do.Dog_ID
and do.Deleted_By is null
inner join [tblPeople] owners
on do.Owner_ID = owners.Person_ID
and owners.Deleted_By is null
inner join [tblEntrants] e
on dc.Entrant_ID = e.Entrant_ID
and e.Deleted_By is null
inner join [tblShow_Final_Classes] sfc
on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
and (sfc.Show_Final_Class_ID = @Show_FInal_Class_ID OR @Show_Final_Class_ID IS NULL)
inner join [tblShow_Entry_Classes] sec
on sfc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
and sec.Deleted_By is null
inner join [lkpClass_Names] cn
on sec.Class_Name_ID = cn.Class_Name_ID
and cn.Class_Name_Description <> 'NFC'
inner join [tblShows] s
on sfc.Show_ID = s.Show_ID
and s.Show_ID = @Show_ID
where dc.Deleted_By is null
--and dc.Running_Order > 0
AND sfc.Show_Final_Class_No = 19
order by sfc.Show_Final_Class_No, 
--Dog_KC_Name, 
Running_Order

