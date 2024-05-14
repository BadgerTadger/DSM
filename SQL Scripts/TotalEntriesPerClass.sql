SELECT sec.Show_Entry_Class_ID, Class_Name_Description, sec.Class_No
      ,COUNT(dc.dog_ID) as Entries
  FROM [Petersfield_2024].[dbo].[tblDog_Classes] dc
  inner join [Petersfield_2024].[dbo].[tblDogs] d
  on dc.Dog_ID=d.Dog_ID
  and dc.Deleted_By is null
  and d.Deleted_By is null
  inner join [Petersfield_2024].[dbo].[tblPeople] p
  on dc.Handler_ID=p.Person_ID
  and p.Deleted_By is null
  inner join [Petersfield_2024].[dbo].[tblShow_Entry_Classes] sec
  on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
  and sec.Deleted_By is null
  inner join [Petersfield_2024].[dbo].[tblShows] s
  on sec.Show_ID = s.Show_ID
  and s.Deleted_By is null
  inner join [Petersfield_2024].[dbo].[lkpClass_Names] cn
  on sec.Class_Name_ID = cn.Class_Name_ID
  and cn.Class_Name_Description <> 'NFC'
  where s.Show_ID in ('86BFB3B8-DF78-4DF1-B12E-0AEF81668F88')
  group by sec.Show_Entry_Class_ID, Class_Name_Description, sec.Class_No
  order by sec.Class_No
  
