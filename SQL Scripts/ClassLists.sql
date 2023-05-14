
SELECT 'Class ' + CONVERT(VARCHAR, sec.Class_No) + ' - ' + sfc.Show_Final_Class_Description as classname
--,j.Primary_Judge
--,j.Reserve_Judge
,CASE RIGHT(sfc.Show_Final_Class_Description, 6) WHEN 'Part 2' THEN j.Reserve_Judge ELSE j.Primary_Judge END as Judge
,ISNULL(NULLIF(dc.[Running_Order],0),999) as RunningOrder
,dc.[Ring_No]
--,o.Person_Title as OwnerTitle
--,o.Person_Forename as OwnerForename
--,o.Person_Surname as OwnerSurname
--,h.Person_Title as HandlerTitle
--,h.Person_Forename as HandlerForename
--,h.Person_Surname as HandlerSurname
,CASE 
	WHEN o.Person_ID = dc.Handler_ID THEN
		ISNULL(NULLIF(o.Person_Surname,'') + ' ', '')
		+ ISNULL(NULLIF(o.Person_Title,'') + ' ', '')
		+ ISNULL(NULLIF(o.Person_Forename,''),'')
	ELSE
		ISNULL(NULLIF(o.Person_Surname,'') + ' ', '')
		+ ISNULL(NULLIF(o.Person_Title,'') + ' ', '')
		+ ISNULL(NULLIF(o.Person_Forename,''),'')
		+ ' ('
		+ ISNULL(NULLIF(h.Person_Title,'') + ' ', '')
		+ ISNULL(NULLIF(h.Person_Forename,'') + ' ', '')
		+ ISNULL(NULLIF(h.Person_Surname,''),'')
		+')'
	END as Owner
,[Dog_KC_Name]
,b.Dog_Breed_Description
,g.Dog_Gender
FROM [tblDog_Classes] dc
inner join [tblDogs] d
on dc.Dog_ID = d.Dog_ID
and d.Deleted_By is null
inner join [lnkDog_Owners] do
on d.Dog_ID = do.Dog_ID
and do.Deleted_By is null
inner join lkpDog_Breeds b
on d.Dog_Breed_ID = b.Dog_Breed_ID
inner join lkpDog_Gender g
on d.Dog_Gender_ID = g.Dog_Gender_ID
inner join [tblPeople] o
on do.Owner_ID = o.Person_ID
and o.Deleted_By is null
inner join [tblPeople] h
on dc.Handler_ID = h.Person_ID
and h.Deleted_By is null
inner join [tblEntrants] e
on dc.Entrant_ID = e.Entrant_ID
and e.Deleted_By is null
inner join [tblShow_Final_Classes] sfc
on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
inner join [tblShow_Entry_Classes] sec
on sfc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
and sec.Deleted_By is null
inner join tblJudges j
on j.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
inner join [lkpClass_Names] cn
on sec.Class_Name_ID = cn.Class_Name_ID
and cn.Class_Name_Description <> 'NFC'
order by sfc.Show_Final_Class_No, RunningOrder, dc.Ring_No