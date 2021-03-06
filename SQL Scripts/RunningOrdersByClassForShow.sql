--declare @Show_ID uniqueidentifier = '0BF7FBA4-2803-452D-A3C2-5BB6D22DD896' -- Findon
--declare @Show_ID uniqueidentifier = '37BFADE5-A7D6-4155-918F-31F80D77446E' -- HB Champ (Sat)
--declare @Show_ID uniqueidentifier = '87461DB2-3D66-4CC8-B2E5-2E17D511BA49' -- HB Open (Sun)
--declare @Show_ID uniqueidentifier = '5BDD261C-B420-4830-9646-CF8C8365B1C6' -- Petersfield 2016
declare @Show_ID uniqueidentifier = 'A28DC61C-425A-49BC-992D-C293618AC98E' -- Petersfield 2016

SELECT Show_Final_Class_No
	,dc.Show_Final_Class_ID
      ,Show_Final_Class_Description
      ,[Ring_No]
      ,[Running_Order]
      ,dc.[Modified_Date]
  FROM [tblDog_Classes] dc
  inner join [tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
  --and dc.Show_Final_Class_ID='0A6DF5EA-152A-4AFA-9C14-9AF02CDF6E5C'
  and dc.Deleted_By is null
  and sfc.Deleted_By is null
INNER JOIN
(SELECT @Show_ID AS Show_ID
UNION ALL
SELECT Child_Show_ID AS Show_ID
FROM [lnkLinked_Shows] ls
WHERE Deleted_By IS NULL 
AND Parent_Show_ID = @Show_ID) sl
ON sfc.Show_ID = sl.Show_ID
  --where NULLIF(Running_Order,'') is not null
  --and Running_Order < 21
  order by sfc.Show_Final_Class_No, Running_Order, Ring_No