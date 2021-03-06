--declare @Show_ID uniqueidentifier = '0BF7FBA4-2803-452D-A3C2-5BB6D22DD896' -- Findon
declare @Show_ID uniqueidentifier = '5BDD261C-B420-4830-9646-CF8C8365B1C6' -- HB Champ (Sat)
--declare @Show_ID uniqueidentifier = '87461DB2-3D66-4CC8-B2E5-2E17D511BA49' -- HB Open (Sun)

select a.Ring_No as [Ring No.], a.Show_Final_Class_No as [Class No.], b.Class as [Class Name]
from
( 
SELECT [Ring_No]
	,MIN(sfc.Show_Final_Class_No) as Show_Final_Class_No
  FROM [tblDog_Classes] dc
  inner join [tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
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
group by Ring_No
) a
inner join
(
	select Show_Final_Class_No
	,Show_Final_Class_Description as Class
	,ROW_NUMBER() over(partition by Show_Final_Class_No order by Show_Final_Class_No) as seq
	from [tblShow_Final_Classes] sfc
	INNER JOIN
	(SELECT @Show_ID AS Show_ID
	UNION ALL
	SELECT Child_Show_ID AS Show_ID
	FROM [lnkLinked_Shows] ls
	WHERE Deleted_By IS NULL 
	AND Parent_Show_ID = @Show_ID) sl
	ON sfc.Show_ID = sl.Show_ID
) b
on a.Show_Final_Class_No = b.Show_Final_Class_No
and b.seq=1

--where a.Show_Final_Class_No = b.Show_Final_Class_No

  order by a.Show_Final_Class_No, Ring_No