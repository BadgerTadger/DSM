SELECT sec.Show_Entry_Class_ID, Class_Name_Description, sec.Class_No
      ,COUNT(dc.dog_ID) as Entries
  FROM [dsm].[dbo].[tblDog_Classes] dc
  inner join [dsm].[dbo].[tblDogs] d
  on dc.Dog_ID=d.Dog_ID
  and dc.Deleted_By is null
  and d.Deleted_By is null
  inner join [dsm].[dbo].[tblPeople] p
  on dc.Handler_ID=p.Person_ID
  and p.Deleted_By is null
  inner join [dsm].[dbo].[tblShow_Entry_Classes] sec
  on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
  and sec.Deleted_By is null
  inner join [dsm].[dbo].[tblShows] s
  on sec.Show_ID = s.Show_ID
  and s.Deleted_By is null
  inner join [dsm].[dbo].[lkpClass_Names] cn
  on sec.Class_Name_ID = cn.Class_Name_ID
  and cn.Class_Name_Description <> 'NFC'
  where s.Show_ID in ('5BDD261C-B420-4830-9646-CF8C8365B1C6')
  group by sec.Show_Entry_Class_ID, Class_Name_Description, sec.Class_No
  order by sec.Class_No
  
