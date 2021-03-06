--declare @Show_ID uniqueidentifier = '0BF7FBA4-2803-452D-A3C2-5BB6D22DD896' -- Findon
declare @Show_ID uniqueidentifier = 'DBF00179-04B2-442D-9D0D-2461F872EAFB' -- HB Champ (Sat)
--declare @Show_ID uniqueidentifier = '87461DB2-3D66-4CC8-B2E5-2E17D511BA49' -- HB Open (Sun)

SELECT 
	distinct
	ISNULL(NULLIF(ISNULL(NULLIF(p.Person_Title,'') + ' ', '')
	+ ISNULL(NULLIF(p.Person_Forename,'') + ' ', '')
	+ ISNULL(NULLIF(p.Person_Surname,''),''),''),'Unknown') as [Owner]
	,p.Person_Email
	,CASE
	WHEN Show_Final_Class_Description Like '%champ%' 
	THEN 'Ticket'
	ELSE ''
	END as Ticket
  FROM [sussexsoftwaresolutions].[dbo].[tblDog_Classes] dc
  inner join [sussexsoftwaresolutions].[dbo].[tblEntrants] e
  on dc.Entrant_ID = e.Entrant_ID
  and dc.Deleted_By is null
  and e.Deleted_By is null
  and NULLIF(e.Send_Running_Order,'') is not null
  inner join [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes] sfc
  on dc.Show_Final_Class_ID = sfc.Show_Final_Class_ID
  and dc.Deleted_By is null
  and sfc.Deleted_By is null
  inner join [sussexsoftwaresolutions].[dbo].[tblDogs] d
  on dc.Dog_ID=d.Dog_ID
  inner join (
  Select Dog_ID
		,Owner_ID
		,ROW_NUMBER() over(partition by Dog_ID order by Dog_ID) as seq
  FROM [sussexsoftwaresolutions].[dbo].[lnkDog_Owners]
  ) do
  on d.Dog_ID = do.Dog_ID
  and do.seq=1
  INNER JOIN [sussexsoftwaresolutions].[dbo].[tblPeople] p
  on do.Owner_ID = p.Person_ID
  and NULLIF(p.Person_Email,'') is not null
  INNER JOIN [sussexsoftwaresolutions].[dbo].[tblAddresses] a
  on p.Address_ID = a.Address_ID

INNER JOIN 
(SELECT @Show_ID AS Show_ID
UNION ALL
SELECT Child_Show_ID AS Show_ID
FROM [sussexsoftwaresolutions].[dbo].[lnkLinked_Shows] ls
WHERE Deleted_By IS NULL 
AND Parent_Show_ID = @Show_ID) sl
ON e.Show_ID = sl.Show_ID
  where NULLIF(Running_Order,'') is not null
  order by [Owner]