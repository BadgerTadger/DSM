--declare @Show_ID uniqueidentifier = '0BF7FBA4-2803-452D-A3C2-5BB6D22DD896' -- Findon
declare @Show_ID uniqueidentifier = 'DBF00179-04B2-442D-9D0D-2461F872EAFB' -- HB Champ (Sat)
--declare @Show_ID uniqueidentifier = '87461DB2-3D66-4CC8-B2E5-2E17D511BA49' -- HB Open (Sun)

SELECT
      [Running_Order]
      ,[Ring_No]
	,d.Dog_KC_Name
	,ISNULL(NULLIF(ISNULL(NULLIF(p.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(p.Person_Forename,'') + ' ', '')
	+ ISNULL(NULLIF(p.Person_Surname,''),''),''),'Unknown') as Handler
	,sfc.Show_Final_Class_No
	,sfc.Show_Final_Class_Description
  FROM [sussexsoftwaresolutions].[dbo].[tblDog_Classes] dc
  inner join [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
  and dc.Deleted_By is null
  and sfc.Deleted_By is null
  and sfc.Show_Final_Class_Description like '%ykc%'
  inner join [sussexsoftwaresolutions].[dbo].[tblDogs] d
  on dc.Dog_ID = d.Dog_ID
  and d.Deleted_By is null
  --inner join [sussexsoftwaresolutions].[dbo].[lnkDog_Owners] do
  --on d.Dog_ID = do.Dog_ID
  --and do.Deleted_By is null
  inner join [sussexsoftwaresolutions].[dbo].[tblPeople] p
  on dc.Handler_ID = p.Person_ID
  and p.Deleted_By is null
INNER JOIN
(SELECT @Show_ID AS Show_ID
UNION ALL
SELECT Child_Show_ID AS Show_ID
FROM [sussexsoftwaresolutions].[dbo].[lnkLinked_Shows] ls
WHERE Deleted_By IS NULL 
AND Parent_Show_ID = @Show_ID) sl
ON sfc.Show_ID = sl.Show_ID
  order by sfc.Show_Final_Class_No, isnull(Running_Order,99), Ring_No