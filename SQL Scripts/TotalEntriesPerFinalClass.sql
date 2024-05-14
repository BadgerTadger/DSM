SELECT sfc.Show_Final_Class_Description, sfc.Show_Final_Class_No
      ,COUNT(dc.dog_ID) as Entries
  FROM [tblDog_Classes] dc
  inner join [tblDogs] d
  on dc.Dog_ID=d.Dog_ID
  and dc.Deleted_By is null
  and d.Deleted_By is null
  inner join [tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
  and sfc.Deleted_By is null
  inner join [tblShows] s
  on sfc.Show_ID = s.Show_ID
  and s.Deleted_By is null
  where s.Show_ID in ('86BFB3B8-DF78-4DF1-B12E-0AEF81668F88')
  group by sfc.Show_Final_Class_No, sfc.Show_Final_Class_Description, sfc.Show_Final_Class_Description
  order by sfc.Show_Final_Class_No
  
