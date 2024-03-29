--declare @Show_ID uniqueidentifier = '0BF7FBA4-2803-452D-A3C2-5BB6D22DD896' -- Findon
declare @Show_ID uniqueidentifier = '85DD1670-4EC5-49CE-A417-E1B9EBF6C427' -- HB Champ (Sat)
--declare @Show_ID uniqueidentifier = '87461DB2-3D66-4CC8-B2E5-2E17D511BA49' -- HB Open (Sun)

/*
SELECT TOP 1000 [Dog_Class_ID]
      ,[Ring_No]
      ,d.Dog_KC_Name
      ,sfc.Show_Final_Class_ID
      ,Show_Final_Class_No
      ,sfc.Show_Final_Class_Description
      ,[Running_Order]
      ,[Special_Request]
  FROM [dsm].[dbo].[tblDog_Classes] dc
  inner join [dsm].[dbo].[tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
  and dc.Deleted_By is null
  and sfc.Deleted_By is null
  inner join [dsm].[dbo].[tblDogs] d
  on dc.Dog_ID = d.Dog_ID
inner join
(select @Show_ID as Show_ID
Union ALL
select Child_Show_ID as Show_ID
from [dsm].[dbo].[lnkLinked_Shows] ls
where Parent_Show_ID = @Show_ID) sl
on sfc.Show_ID = sl.Show_ID
  --where Ring_No = 61
*/  
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Ring_No]
      ,d.Dog_KC_Name
	  ,Show_Final_Class_No
      ,sfc.Show_Final_Class_Description
	  ,[Running_Order]
  FROM [dsm].[dbo].[tblDog_Classes] dc
  inner join [dsm].[dbo].[tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
  and dc.Deleted_By is null
  and sfc.Deleted_By is null
  inner join [dsm].[dbo].[tblDogs] d
  on dc.Dog_ID = d.Dog_ID
inner join
(select @Show_ID as Show_ID
Union ALL
select Child_Show_ID as Show_ID
from [dsm].[dbo].[lnkLinked_Shows] ls
where Parent_Show_ID = @Show_ID) sl
on sfc.Show_ID = sl.Show_ID
and (sfc.Show_Final_Class_No = 13)-- or sfc.Show_Final_Class_No = 14)
order by Show_Final_Class_No, Ring_No

/*

update [sss].[dbo].[tblDog_Classes]
set Show_Final_Class_ID = '26A2B732-5E76-414B-A62E-775DDDB2C9C9' where Dog_Class_ID = '6136899A-61DD-4D74-A6CF-2B68FE9C70B7'

update [sss].[dbo].[tblDog_Classes]
set Show_Final_Class_ID = 'C3CE86E0-F818-4C9F-A9D6-0907AB46CCFB' where Dog_Class_ID = 'F28C0EBC-AD40-4F46-9B95-66BF9B7E2483'



*/
