using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class DogBreedersBL
    {
        string _connString = "";

        public DogBreedersBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetDog_Breeders()
        {
            DataTable retVal = null;

            string spName = "spGetDog_Breeders";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Breeders. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_BreedersByDog_Breeder_ID(Guid dog_Breeder_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_BreedersByDog_Breeder_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_Breeder_ID", SSSDatabaseInfo.ParameterType.Guid, dog_Breeder_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Breeder. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_BreedersByDog_ID(Guid dog_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_BreedersByDog_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Breeder. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_BreedersByBreeder_ID(Guid breeder_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_BreedersByBreeder_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Breeder_ID", SSSDatabaseInfo.ParameterType.Guid, breeder_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Breeder. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Dog_Breeders(Guid dog_ID, Guid breeder_ID, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_lnkDog_Breeders";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
                new SSSDatabaseInfo.DatabaseParameter("Breeder_ID", SSSDatabaseInfo.ParameterType.Guid, breeder_ID),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Dog Breeder. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Dog_Breeders(Guid original_ID, Guid dog_ID, Guid breeder_ID, bool deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_lnkDog_Breeders";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
                new SSSDatabaseInfo.DatabaseParameter("Breeder_ID", SSSDatabaseInfo.ParameterType.Guid, breeder_ID),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
                new SSSDatabaseInfo.DatabaseParameter("Deleted", SSSDatabaseInfo.ParameterType.Bool, deleted),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to update Dog Breeder. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
