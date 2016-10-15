using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class DogSiresBL
    {
        private string _connString = "";


        public DogSiresBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetDog_Sires()
        {
            DataTable retVal = null;

            string spName = "spGetDog_Sires";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Sires. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_SireByDog_Sire_ID(Guid dog_Sire_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_SireByDog_Sire_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_Sire_ID", SSSDatabaseInfo.ParameterType.Guid, dog_Sire_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Sires. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_SireByDog_ID(Guid dog_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_SireByDog_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Dog Sires. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_SiresBySire_ID(Guid sire_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_SiresBySire_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Sire_ID", SSSDatabaseInfo.ParameterType.Guid, sire_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Sires. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Dog_Sires(Guid dog_ID, Guid sire_ID, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_lnkDog_Sires";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
                new SSSDatabaseInfo.DatabaseParameter("Sire_ID", SSSDatabaseInfo.ParameterType.Guid, sire_ID),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Dog Sires. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Dog_Sires(Guid original_ID, Guid dog_ID, Guid sire_ID, bool deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_lnkDog_Sires";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
                new SSSDatabaseInfo.DatabaseParameter("Sire_ID", SSSDatabaseInfo.ParameterType.Guid, sire_ID),
                new SSSDatabaseInfo.DatabaseParameter("Deleted", SSSDatabaseInfo.ParameterType.Bool, deleted),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to update Dog Sires. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}

