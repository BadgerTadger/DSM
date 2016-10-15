
UPDATE tblDogs
SET Date_Of_Birth = c.[Date of birth],
year_of_birth = YEAR(c.[Date of birth])
FROM
tblDogs dsm
inner join
Combined c
on 
dsm.Reg_No = c.[registered number]
and c.[Date of birth] is not null