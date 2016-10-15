using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class DogBreeds
    {
        string _connString = "";

        public DataTable lkpDogBreeds = null;

        private int _dog_Breed_ID;
        public int Dog_Breed_ID
        {
            get { return _dog_Breed_ID; }
            set { _dog_Breed_ID = value; }
        }

        private string _description = null;
        public string Description
        {
            get { return _description; }
            set { _description = value; }
        }

        public DogBreeds(string connString)
        {
            _connString = connString;

            try
            {
                DogBreedsBL dogBreeds = new DogBreedsBL(_connString);
                lkpDogBreeds = dogBreeds.GetDog_Breeds();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DogBreeds(string connString, int dog_Breed_ID)
        {
            _connString = connString;

            try
            {
                DogBreedsBL dogBreeds = new DogBreedsBL(_connString);
                lkpDogBreeds = dogBreeds.GetDog_BreedsByDog_Breed_ID(dog_Breed_ID);
                DataRow row = lkpDogBreeds.Rows[0];

                _dog_Breed_ID = dog_Breed_ID;
                _description = Utils.DBNullToString(row["Dog_Breed_Description"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<DogBreeds> GetDog_Breeds()
        {
            List<DogBreeds> retVal = new List<DogBreeds>();

            try
            {
                DogBreedsBL dogBreeds = new DogBreedsBL(_connString);
                lkpDogBreeds = dogBreeds.GetDog_Breeds();

                if (lkpDogBreeds != null && lkpDogBreeds.Rows.Count > 0)
                {
                    DogBreeds firstDogBreed = new DogBreeds(_connString);
                    firstDogBreed.Dog_Breed_ID = 1;
                    firstDogBreed.Description = "Please Select...";
                    retVal.Add(firstDogBreed);
                    foreach (DataRow row in lkpDogBreeds.Rows)
                    {
                        DogBreeds dogBreed = new DogBreeds(_connString, Utils.DBNullToInt(row["Dog_Breed_ID"]));
                        retVal.Add(dogBreed);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<DogBreeds> GetDog_BreedsByDog_Breed_Description(string description)
        {
            List<DogBreeds> retVal = new List<DogBreeds>();

            try
            {
                DogBreedsBL dogBreeds = new DogBreedsBL(_connString);
                lkpDogBreeds = dogBreeds.GetDog_BreedsByDog_Breed_Description(description);

                if (lkpDogBreeds != null && lkpDogBreeds.Rows.Count > 0)
                {
                    foreach (DataRow row in lkpDogBreeds.Rows)
                    {
                        DogBreeds dogBreed = new DogBreeds(_connString, Utils.DBNullToInt(row["Dog_Breed_ID"]));
                        retVal.Add(dogBreed);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public int? Insert_Dog_Breed(string dog_Breed_Description)
        {
            int? retVal = null;

            try
            {
                DogBreedsBL dogBreeds = new DogBreedsBL(_connString);
                retVal = dogBreeds.Insert_Dog_Breed(dog_Breed_Description);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}