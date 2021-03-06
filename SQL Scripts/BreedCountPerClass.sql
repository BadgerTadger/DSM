--declare @Show_ID uniqueidentifier = '0BF7FBA4-2803-452D-A3C2-5BB6D22DD896' -- Findon
declare @Show_ID uniqueidentifier = 'A28DC61C-425A-49BC-992D-C293618AC98E'
--declare @Show_ID uniqueidentifier = '87461DB2-3D66-4CC8-B2E5-2E17D511BA49' -- HB Open (Sun)

SELECT sfc.Show_Final_Class_No
	,sfc.Show_Final_Class_Description
	,db.Dog_Breed_Description 
	,count([Dog_Class_ID]) as [Count]
  FROM [tblDog_Classes] dc
  inner join [tblDogs] d
  on dc.Dog_ID=d.Dog_ID
  and dc.Deleted_By is null
  and d.Deleted_By is null
  inner join [tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
  and sfc.Deleted_By is null
  INNER JOIN
	(SELECT @Show_ID AS Show_ID
	UNION ALL
	SELECT Child_Show_ID AS Show_ID
	FROM [lnkLinked_Shows] ls
	WHERE Deleted_By IS NULL 
	AND Parent_Show_ID = @Show_ID) sl
	ON sfc.Show_ID = sl.Show_ID
  inner join [lkpDog_Breeds] db
  on d.Dog_Breed_ID = db.Dog_Breed_ID
  group by sfc.Show_Final_Class_No, sfc.Show_Final_Class_Description
	,db.Dog_Breed_Description
	order by Show_Final_Class_No, db.Dog_Breed_Description