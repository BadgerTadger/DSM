declare @Show_ID uniqueidentifier = '86BFB3B8-DF78-4DF1-B12E-0AEF81668F88'

SELECT sfc.Show_Final_Class_Description
,Show_Final_Class_No
,[Running_Order]
	  ,[Ring_No]
      ,d.Dog_KC_Name
	  ,db.Dog_Breed_Description
	  ,dg.Dog_Gender
	,ISNULL(NULLIF(owners.Person_Surname,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,''),'') as Owner	
	  ,dc.Special_Request
  FROM [Petersfield_2024].[dbo].[tblDog_Classes] dc
  inner join [Petersfield_2024].[dbo].[tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
  and dc.Deleted_By is null
  and sfc.Deleted_By is null
  inner join [Petersfield_2024].[dbo].[tblDogs] d
  on dc.Dog_ID = d.Dog_ID
  inner join lkpDog_Gender dg
  on d.Dog_Gender_ID = dg.Dog_Gender_ID
  inner join lkpDog_Breeds db
  on db.Dog_Breed_ID = d.Dog_Breed_ID

  
left JOIN lnkDog_Owners do1 ON (dc.Dog_ID = do1.Dog_ID)
left JOIN lnkDog_Owners do2 ON (dc.Dog_ID = do2.Dog_ID AND 
   (do1.Created_Date < do2.Created_Date OR do1.Created_Date = do2.Created_Date AND do1.Dog_ID < do2.Dog_ID))



inner join tblPeople owners
on do1.Owner_ID = owners.Person_ID

inner join
(select @Show_ID as Show_ID
Union ALL
select Child_Show_ID as Show_ID
from [Petersfield_2024].[dbo].[lnkLinked_Shows] ls
where Parent_Show_ID = @Show_ID) sl
on sfc.Show_ID = sl.Show_ID
WHERE do2.Dog_ID IS NULL
and do1.Deleted_Date is null

order by Show_Final_Class_No, Running_Order, Ring_No
