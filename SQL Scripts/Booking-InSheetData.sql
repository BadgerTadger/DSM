--declare @Show_ID uniqueidentifier = '0BF7FBA4-2803-452D-A3C2-5BB6D22DD896' -- Findon
declare @Show_ID uniqueidentifier = 'A28DC61C-425A-49BC-992D-C293618AC98E'
--declare @Show_ID uniqueidentifier = '87461DB2-3D66-4CC8-B2E5-2E17D511BA49' -- HB Open (Sun)


SELECT      [Running_Order]
      ,[Ring_No]
	,d.Dog_KC_Name
	,db.Dog_Breed_Description
	,dg.Dog_Gender
	,d.Date_Of_Birth
	,d.Year_Of_Birth
	,ISNULL(NULLIF(owners.Person_Surname,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,''),'') as Owner	
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
  inner join lkpDog_Breeds db
  on d.Dog_Breed_ID = db.Dog_Breed_ID
  inner join lkpDog_Gender dg
  on d.Dog_Gender_ID = dg.Dog_Gender_ID
  
  

JOIN lnkDog_Owners do1 ON (dc.Dog_ID = do1.Dog_ID)
LEFT OUTER JOIN lnkDog_Owners do2 ON (dc.Dog_ID = do2.Dog_ID AND 
    (do1.Created_Date < do2.Created_Date OR do1.Created_Date = do2.Created_Date AND do1.Dog_ID < do2.Dog_ID))


inner join tblPeople owners
on do1.Owner_ID = owners.Person_ID
INNER JOIN
(SELECT @Show_ID AS Show_ID
UNION ALL
SELECT Child_Show_ID AS Show_ID
FROM [lnkLinked_Shows] ls
WHERE Deleted_By IS NULL 
AND Parent_Show_ID = @Show_ID) sl
ON sfc.Show_ID = sl.Show_ID
WHERE do2.Dog_ID IS NULL
  order by sfc.Show_Final_Class_No, isnull(NULLIF(Running_Order,0),99), Ring_No