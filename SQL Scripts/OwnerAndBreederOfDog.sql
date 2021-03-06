/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000
      [Dog_KC_Name]
      ,p.[Person_Title] + ' ' + p.[Person_Forename] + ' ' + p.[Person_Surname] as Owner
      ,p2.[Person_Title] + ' ' + p2.[Person_Forename] + ' ' + p2.[Person_Surname] as Breeder
      
  FROM [sussexsoftwaresolutions].[dbo].[lnkDog_Owners] do
  inner join [sussexsoftwaresolutions].[dbo].[tblDogs] d
  on do.Dog_ID=d.Dog_ID
  inner join [sussexsoftwaresolutions].[dbo].[tblPeople] p
  on do.Owner_ID=p.Person_ID
  inner join [sussexsoftwaresolutions].[dbo].[lnkDog_Breeders] db
  on d.Dog_ID= db.Dog_ID
  inner join [sussexsoftwaresolutions].[dbo].[tblPeople] p2
  on db.Breeder_ID=p2.Person_ID
  where d.Dog_KC_Name like '%gypton just a breeze%'
  --where p.Person_Surname='harknett'  
  --where p2.Person_Surname='maguire'