--declare @Show_ID uniqueidentifier = '0BF7FBA4-2803-452D-A3C2-5BB6D22DD896' -- Findon
declare @Show_ID uniqueidentifier = '5BDD261C-B420-4830-9646-CF8C8365B1C6'
--declare @Show_ID uniqueidentifier = '87461DB2-3D66-4CC8-B2E5-2E17D511BA49' -- HB Open (Sun)

SELECT      [Running_Order]
      ,[Ring_No]
	,d.Dog_KC_Name
	,sfc.Show_Final_Class_Description
  FROM [tblDog_Classes] dc
  inner join [tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
  and dc.Deleted_By is null
  and sfc.Deleted_By is null
  and sfc.Show_Final_Class_Description not like 'YKC%'
  inner join [tblDogs] d
  on dc.Dog_ID = d.Dog_ID
  and d.Deleted_By is null
INNER JOIN
(SELECT @Show_ID AS Show_ID
UNION ALL
SELECT Child_Show_ID AS Show_ID
FROM [lnkLinked_Shows] ls
WHERE Deleted_By IS NULL 
AND Parent_Show_ID = @Show_ID) sl
ON sfc.Show_ID = sl.Show_ID
  order by sfc.Show_Final_Class_No, isnull(NULLIF(Running_Order,0),99), Ring_No