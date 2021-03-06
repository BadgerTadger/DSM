SELECT sfc.Show_Final_Class_Description, sfc.Show_Final_Class_No
      ,COUNT(dc.dog_ID) as Entries
  FROM [dsm].[dbo].[tblDog_Classes] dc
  inner join [dsm].[dbo].[tblDogs] d
  on dc.Dog_ID=d.Dog_ID
  and dc.Deleted_By is null
  and d.Deleted_By is null
  inner join [dsm].[dbo].[tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
  and sfc.Deleted_By is null
  inner join [dsm].[dbo].[tblShows] s
  on sfc.Show_ID = s.Show_ID
  and s.Deleted_By is null
  where s.Show_ID in ('5BDD261C-B420-4830-9646-CF8C8365B1C6')
  group by sfc.Show_Final_Class_No, sfc.Show_Final_Class_Description, sfc.Show_Final_Class_Description
  order by sfc.Show_Final_Class_No
  
