using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class DogBreedsBL
    {
        string _connString = "";

        public DogBreedsBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetDog_Breeds()
        {
            DataTable retVal = null;

            string spName = "spGetDog_Breeds";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Breeds. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_BreedsByDog_Breed_ID(int dog_Breed_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_BreedByDog_Breed_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_Breed_ID", SSSDatabaseInfo.ParameterType.Int, dog_Breed_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Breed. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_BreedsByDog_Breed_Description(string dog_Breed_Description)
        {
            DataTable retVal = null;

            string spName = "spGetDog_BreedsLikeDog_Breed_Description";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_Breed_Description", SSSDatabaseInfo.ParameterType.String, dog_Breed_Description),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Breed. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public int? Insert_Dog_Breed(string dog_Breed_Description)
        {
            int? retVal = null;

            string spName = "spInsert_lkpDog_Breeds";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_Breed_Description", SSSDatabaseInfo.ParameterType.String, dog_Breed_Description),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnInt(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Dog Breeder. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
