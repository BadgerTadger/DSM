declare @Show_ID uniqueidentifier = '5BDD261C-B420-4830-9646-CF8C8365B1C6' -- HB Champ (Sat)

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
	,CONVERT(VARCHAR, sec.Class_No) + ' - ' + sfc.Show_Final_Class_Description as Class_Name
	,e.Catalogue
FROM [tblDog_Classes] dc
inner join [tblDogs] d
on dc.Dog_ID = d.Dog_ID
and d.Deleted_By is null
inner join [lnkDog_Owners] do
on d.Dog_ID = do.Dog_ID
and do.Deleted_By is null
inner join [tblPeople] owners
on do.Owner_ID = owners.Person_ID
and owners.Deleted_By is null
inner join [tblAddresses] a
on owners.Address_ID = a.Address_ID
and a.Deleted_By is null
inner join [tblEntrants] e
on dc.Entrant_ID = e.Entrant_ID
and e.Deleted_By is null
inner join [tblShow_Entry_Classes] sec
on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
and sec.Deleted_By is null
inner join [tblShows] s
on sec.Show_ID = s.Show_ID
inner join [tblShow_Final_Classes] sfc
on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
inner join [lkpClass_Names] cn
on sec.Class_Name_ID = cn.Class_Name_ID
and cn.Class_Name_Description <> 'NFC'
inner join [lkpDog_Breeds] b
on d.Dog_Breed_ID = b.Dog_Breed_ID
inner join [lkpDog_Gender] g
on d.Dog_Gender_ID = g.Dog_Gender_ID
inner join
(select @Show_ID as Show_ID
Union ALL
select Child_Show_ID as Show_ID
from [lnkLinked_Shows] ls
where Deleted_By IS NULL
AND Parent_Show_ID = @Show_ID) sl
on sec.Show_ID = sl.Show_ID
where dc.Deleted_By is null
order by Ring_No, d.Dog_KC_Name, owners.Created_Date, sfc.Show_Final_Class_No

