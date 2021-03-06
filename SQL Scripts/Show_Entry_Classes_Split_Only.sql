declare	@Show_ID uniqueidentifier = '5BDD261C-B420-4830-9646-CF8C8365B1C6'


SELECT 
	sec.Show_Entry_Class_ID, 
	sec.Show_ID, 
	sec.Class_Name_ID, 
	cn.Class_Name_Description,
	sec.Class_No, 
	sec.Created_Date, 
	sec.Created_By, 
	sec.Modified_Date, 
	sec.Modified_By, 
	sec.Deleted_Date, 
	sec.Deleted_By 
	FROM [dbo].[tblShow_Final_Classes] sfc
	inner join [dbo].[tblShow_Entry_Classes] sec
	on sfc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
	and sfc.Deleted_By is null
	and sec.Deleted_By is null
	inner join [dbo].[lkpClass_Names] cn
	on sec.Class_Name_ID = cn.Class_Name_ID
	inner join
	(select @Show_ID as Show_ID
	Union ALL
	select Child_Show_ID as Show_ID
	from [dbo].[lnkLinked_Shows] ls
	where Parent_Show_ID = @Show_ID and Deleted_By is null) sl
	on sec.Show_ID = sl.Show_ID
	group by 	sec.Show_Entry_Class_ID, 
	sec.Show_ID, 
	sec.Class_Name_ID, 
	cn.Class_Name_Description,
	sec.Class_No, 
	sec.Created_Date, 
	sec.Created_By, 
	sec.Modified_Date, 
	sec.Modified_By, 
	sec.Deleted_Date, 
	sec.Deleted_By 
	having COUNT(sfc.Show_Final_Class_ID) > 1
	order by sec.Class_No