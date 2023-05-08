

USE [dsm2]
GO


ALTER TABLE [dbo].[tblDogs]
ADD Breed varchar(255)
GO


UPDATE [dbo].[tblDogs]
SET Breed = (SELECT DogBreedDescription FROM lkpDogBreeds WHERE tblDogs.BreedID = lkpDogBreeds.DogBreedID)
GO



INSERT INTO [dbo].[lkpDogBreeds]
           ([DogBreedID]
           ,[DogBreedDescription])
     VALUES
           (999,'Free Text')
GO






