select db.Dog_Breed_Description, p.Person_Surname, p.Person_Forename, d.Dog_KC_Name, d.Dog_ID 
from [sussexsoftwaresolutions].[dbo].[tblPeople] p
inner join [sussexsoftwaresolutions].[dbo].[lnkdog_owners] do
on p.person_id = do.Owner_ID
inner join [sussexsoftwaresolutions].[dbo].[tblDogs] d
on do.Dog_ID=d.Dog_ID
inner join [sussexsoftwaresolutions].[dbo].[lkpdog_breeds] db
on d.Dog_Breed_ID = db.Dog_Breed_ID
where db.Dog_Breed_Description like '%basset%'