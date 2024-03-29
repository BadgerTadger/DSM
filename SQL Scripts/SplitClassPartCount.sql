
declare @Show_ID uniqueidentifier = '06BEE055-C95F-4B7F-873B-472ACA263658' -- Petersfield 2015

SELECT Count(dc.Dog_ID) as Dog_Count
      ,sfc.Show_Final_Class_Description
      ,sec.Class_No
      ,sfc.Show_Final_Class_No
  FROM [dbo].[tblDog_Classes] dc
  inner join [dbo].[tblDogs] d
  on dc.Dog_ID = d.Dog_ID
  and dc.Deleted_By is null
  inner join [dbo].[tblShow_Entry_Classes] sec
  on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
  and sec.Deleted_By is null
  inner join [dbo].[lkpClass_Names] secn
  on sec.Class_Name_ID = secn.Class_Name_ID
  and secn.Class_Name_Description <> 'NFC'
  inner join [dbo].[tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
INNER JOIN
(SELECT @Show_ID AS Show_ID
UNION ALL
SELECT Child_Show_ID AS Show_ID
FROM [dbo].[lnkLinked_Shows] ls
WHERE Deleted_By IS NULL 
AND Parent_Show_ID = @Show_ID) sl
ON sec.Show_ID = sl.Show_ID
Group by sec.Class_No, sfc.Show_Final_Class_Description, sfc.Show_Final_Class_No
order by sec.Class_No