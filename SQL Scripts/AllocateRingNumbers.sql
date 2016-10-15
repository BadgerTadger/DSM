update [sussexsoftwaresolutions].[dbo].[tblDog_Classes]
set Ring_No = rn.Ring_No
from [sussexsoftwaresolutions].[dbo].[tblDog_Classes] dc
inner join
	(SELECT distinct d.Dog_ID, d.[Dog_KC_Name]
       ,p.Person_Forename
       ,p.Person_Surname
  ,row_number() OVER (ORDER BY p.person_Surname, p.person_forename)  as Ring_No
  FROM [sussexsoftwaresolutions].[dbo].[tblDogs] d
  inner join [sussexsoftwaresolutions].[dbo].[tblDog_Classes] dc
  on d.Dog_ID=dc.Dog_ID
  and d.Deleted_By is null
  and dc.Deleted_By is null
  inner join [sussexsoftwaresolutions].[dbo].[tblShow_Entry_Classes] sec
  on dc.Show_Entry_Class_ID = sec.Show_Entry_Class_ID
  and sec.Deleted_By is null
  inner join [sussexsoftwaresolutions].[dbo].[lkpClass_Names] cn
  on sec.Class_Name_ID = cn.Class_Name_ID
  and cn.Class_Name_Description <> 'NFC'
  left join [sussexsoftwaresolutions].[dbo].[tblPeople] p
  on dc.Handler_ID = p.Person_ID
  and p.Deleted_By is null
  GROUP BY d.Dog_ID, d.[Dog_KC_Name], p.Person_Surname, p.Person_Forename
  order by p.Person_Surname, p.Person_Forename) rn
on dc.Dog_ID = rn.Dog_ID