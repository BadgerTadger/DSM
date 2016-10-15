USE [sss]
GO

/****** Object:  StoredProcedure [dbo].[spGetShowEntryClassByShowAndClassNo]    Script Date: 12/04/2015 22:17:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetShowEntryClassByShowAndClassNo]
(
	@Show_ID uniqueidentifier = null,
	@ClassNo int = 0
)
AS
begin
	SET NOCOUNT ON;
		
SELECT 
	Show_Entry_Class_ID, 
	sec.Show_ID, 
	sec.Class_Name_ID, 
	Class_Name_Description,
	Class_No,
	Gender, 
	Created_Date, 
	Created_By, 
	Modified_Date, 
	Modified_By, 
	Deleted_Date, 
	Deleted_By 
FROM 
	dbo.tblShow_Entry_Classes sec
INNER JOIN
	dbo.lkpClass_Names cn
ON sec.Class_Name_ID = cn.Class_Name_ID
	inner join
	(select @Show_ID as Show_ID
	Union ALL
	select Child_Show_ID as Show_ID
	from [dbo].[lnkLinked_Shows] ls
	where Parent_Show_ID = @Show_ID) sl
	on sec.Show_ID = sl.Show_ID
WHERE Deleted_By IS NULL
AND sec.Class_No = @ClassNo
ORDER BY Class_No
end
GO


