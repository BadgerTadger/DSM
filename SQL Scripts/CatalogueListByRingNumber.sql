--declare @Show_ID uniqueidentifier = '0BF7FBA4-2803-452D-A3C2-5BB6D22DD896' -- Findon
declare @Show_ID uniqueidentifier = '37BFADE5-A7D6-4155-918F-31F80D77446E' -- HB Champ (Sat)
--declare @Show_ID uniqueidentifier = '87461DB2-3D66-4CC8-B2E5-2E17D511BA49' -- HB Open (Sun)

select 
	dc.Ring_No
	,ISNULL(NULLIF(owners.Person_Surname,'') + ', ', '')
	+ ISNULL(NULLIF(owners.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(owners.Person_Forename,''),'') as Owner	
	,CASE e.Withold_Address WHEN 1 THEN 'Address Withheld'
	ELSE ISNULL(NULLIF(a.Address_1,'') + ',', '')
	+ ISNULL(NULLIF(a.Address_2,'') + ',', '')
	+ ISNULL(NULLIF(a.Address_Town,'') + ',', '')
	+ ISNULL(NULLIF(a.Address_City,'') + ',', '')
	+ ISNULL(NULLIF(a.Address_County,'') + ',', '')
	+ ISNULL(NULLIF(a.Address_Postcode,'') + '', '')
	END as Address
	,d.Dog_KC_Name
	,b.Dog_Breed_Description
	,g.Dog_Gender
	,COALESCE(NULLIF(LEFT(CONVERT(VARCHAR, d.Date_Of_Birth, 103), 10),''),
	NULLIF(RIGHT(CONVERT(VARCHAR, d.Year_Of_Birth, 103),4),''),'Unknown') as Date_Of_Birth
	,ISNULL(NULLIF(ISNULL(NULLIF(breeders.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(breeders.Person_Forename,'') + ' ', '')
	+ ISNULL(NULLIF(breeders.Person_Surname,''),''),''),'Unknown') as Breeder
	,ISNULL(NULLIF(sires.Dog_KC_Name,''),'Unknown') as Sire	
	,ISNULL(NULLIF(dams.Dog_KC_Name,''),'Unknown') as Dam
	,CONVERT(VARCHAR, sec.Class_No) + ' - ' + sfc.Show_Final_Class_Description as Class_Name
	,CASE do.Owner_ID WHEN db.Breeder_ID THEN 1 ELSE 0 END as BreederIsOwner
	,e.Catalogue
FROM [sss].[dbo].[tblDog_Classes] dc
inner join [sss].[dbo].[tblDogs] d
on dc.Dog_ID = d.Dog_ID
and d.Deleted_By is null
inner join [sss].[dbo].[lnkDog_Owners] do
on d.Dog_ID = do.Dog_ID
and do.Deleted_By is null
inner join [sss].[dbo].[tblPeople] owners
on do.Owner_ID = owners.Person_ID
and owners.Deleted_By is null
inner join [sss].[dbo].[tblAddresses] a
on owners.Address_ID = a.Address_ID
and a.Deleted_By is null
inner join [sss].[dbo].[tblEntrants] e
on dc.Entrant_ID = e.Entrant_ID
and e.Deleted_By is null
inner join [sss].[dbo].[tblShow_Entry_Classes] sec
on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
and sec.Deleted_By is null
inner join [sss].[dbo].[tblShows] s
on sec.Show_ID = s.Show_ID
inner join [sss].[dbo].[tblShow_Final_Classes] sfc
on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
inner join [sss].[dbo].[lkpClass_Names] cn
on sec.Class_Name_ID = cn.Class_Name_ID
and cn.Class_Name_Description <> 'NFC'
inner join [sss].[dbo].[lkpDog_Breeds] b
on d.Dog_Breed_ID = b.Dog_Breed_ID
inner join [sss].[dbo].[lkpDog_Gender] g
on d.Dog_Gender_ID = g.Dog_Gender_ID
left join [sss].[dbo].[lnkDog_Breeders] db
on d.Dog_ID = db.Dog_ID
left join [sss].[dbo].[tblPeople] breeders
on db.Breeder_ID = breeders.Person_ID
left join [sss].[dbo].[lnkDog_Sires] si
on d.Dog_ID = si.Dog_ID
left join [sss].[dbo].[tblDogs] sires
on si.Sire_ID = sires.Dog_ID
left join [sss].[dbo].[lnkDog_Dams] da
on d.Dog_ID = da.Dog_ID
left join [sss].[dbo].[tblDogs] dams
on da.Dam_ID = dams.Dog_ID
inner join
(select @Show_ID as Show_ID
Union ALL
select Child_Show_ID as Show_ID
from [sss].[dbo].[lnkLinked_Shows] ls
where Deleted_By IS NULL
AND Parent_Show_ID = @Show_ID) sl
on sec.Show_ID = sl.Show_ID
where dc.Deleted_By is null
order by Ring_No, d.Dog_KC_Name, owners.Created_Date, sfc.Show_Final_Class_No

