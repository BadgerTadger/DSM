
SELECT cn.Class_Name_Description
	  ,sec.Class_No
	  ,count(sec.Class_No)
  FROM [dsm].[dbo].[tblDog_Classes] dc
  inner join tblShow_Entry_Classes sec on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
  inner join lkpClass_Names cn on sec.Class_Name_ID = cn.Class_Name_ID
  inner join tblShows s on sec.Show_ID = s.Show_ID
  and s.Show_Opens > '2017-01-01'
  group by cn.Class_Name_Description, sec.Class_No