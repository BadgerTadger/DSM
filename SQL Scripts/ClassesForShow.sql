Declare @Show_ID uniqueidentifier = 'FFBD2D76-6E6E-467E-8094-870F2A6874DE'

select cn.Class_Name_Description, sec.Class_No, sec.Gender from
tblShow_Entry_Classes sec
inner join lkpClass_Names cn
on sec.Class_Name_ID = cn.Class_Name_ID
where sec.Show_ID = @Show_ID
order by sec.Class_No