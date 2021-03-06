DECLARE @Show_ID uniqueidentifier = 'DBF00179-04B2-442D-9D0D-2461F872EAFB'
	
	SELECT distinct row_number() OVER (ORDER BY p.person_Surname, p.person_forename)  AS Ring_No,
	d.Dog_ID, d.[Dog_KC_Name]
	   ,p.Person_Forename
	   ,p.Person_Surname
	FROM [sussexsoftwaresolutions].[dbo].[tblDogs] d
	inner join [sussexsoftwaresolutions].[dbo].[tblDog_Classes] dc
	on d.Dog_ID=dc.Dog_ID
	and d.Deleted_By is null
	and dc.Deleted_By is null
	inner join [sussexsoftwaresolutions].[dbo].[tblShow_Entry_Classes] sec
	on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
	and sec.Deleted_By is null
	inner join [sussexsoftwaresolutions].[dbo].[tblShows] s
	on sec.Show_ID=s.Show_ID
	and s.Deleted_By is null
	inner join [sussexsoftwaresolutions].[dbo].[lkpClass_Names] cn
	on sec.Class_Name_ID = cn.Class_Name_ID
	and cn.Class_Name_Description <> 'NFC'
	inner join [sussexsoftwaresolutions].[dbo].[tblPeople] p
	on dc.Handler_ID = p.Person_ID
	and p.Deleted_By is null
	inner join
	(select @Show_ID as Show_ID
	Union ALL
	select Child_Show_ID as Show_ID
	from [sussexsoftwaresolutions].[dbo].[lnkLinked_Shows] ls
	where Parent_Show_ID = @Show_ID) sl
	on sec.Show_ID = sl.Show_ID
	GROUP BY d.Dog_ID, d.[Dog_KC_Name], p.Person_Surname, p.Person_Forename
	order by p.Person_Surname, p.Person_Forename
--order by Dog_KC_Name