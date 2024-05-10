SELECT sfc.Show_Final_Class_Description, sfc.Show_Final_Class_No
      ,COUNT(dc.dog_ID) as Entries
  FROM [WSuffolk_2024].[dbo].[tblDog_Classes] dc
  inner join [WSuffolk_2024].[dbo].[tblDogs] d
  on dc.Dog_ID=d.Dog_ID
  and dc.Deleted_By is null
  and d.Deleted_By is null
  inner join [WSuffolk_2024].[dbo].[tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
  and sfc.Deleted_By is null
  inner join [WSuffolk_2024].[dbo].[tblShows] s
  on sfc.Show_ID = s.Show_ID
  and s.Deleted_By is null
  where s.Show_ID in ('4120D67E-7799-4A1E-8241-A36A4D92C544')
  group by sfc.Show_Final_Class_No, sfc.Show_Final_Class_Description, sfc.Show_Final_Class_Description
  order by sfc.Show_Final_Class_No
  
