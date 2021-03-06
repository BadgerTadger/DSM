--declare @Show_ID uniqueidentifier = '0BF7FBA4-2803-452D-A3C2-5BB6D22DD896' -- Findon
declare @Show_ID uniqueidentifier = 'DBF00179-04B2-442D-9D0D-2461F872EAFB' -- HB Champ (Sat)
--declare @Show_ID uniqueidentifier = '87461DB2-3D66-4CC8-B2E5-2E17D511BA49' -- HB Open (Sun)

--declare @Owner_ID uniqueidentifier = '2FD118AA-BD67-474B-A33E-FD150E3A808C' -- Annette Dowd


SELECT distinct [Dog_Owner_ID]
      ,do.[Dog_ID]
      ,[Owner_ID]
      ,do.[Created_Date]
      ,do.[Created_By]
      ,do.[Modified_Date]
      ,do.[Modified_By]
      ,do.[Deleted_Date]
      ,do.[Deleted_By]
  FROM [sussexsoftwaresolutions].[dbo].[lnkDog_Owners] do
inner join [sussexsoftwaresolutions].[dbo].[tblDog_Classes] dc
on dc.Dog_ID = do.Dog_ID
and do.Deleted_By is null
and dc.Deleted_By IS null
inner JOIN [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes] sfc
ON dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
AND sfc.Deleted_By IS NULL
and dc.Deleted_By is null
INNER JOIN
(SELECT @Show_ID AS Show_ID
UNION ALL
SELECT Child_Show_ID AS Show_ID
FROM [sussexsoftwaresolutions].[dbo].[lnkLinked_Shows] ls
WHERE Deleted_By IS NULL 
AND Parent_Show_ID = @Show_ID) sl
ON sfc.Show_ID = sl.Show_ID
ORDER BY Dog_ID