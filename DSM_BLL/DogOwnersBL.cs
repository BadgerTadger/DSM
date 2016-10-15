using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class DogOwnersBL
    {
        private string _connString = "";

        public DogOwnersBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetDog_Owners()
        {
            DataTable retVal = null;

            string spName = "spGetDog_Owners";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Owners. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_OwnersByDog_Owner_ID(Guid dog_Owner_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_OwnersByDog_Owner_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_Owner_ID", SSSDatabaseInfo.ParameterType.Guid, dog_Owner_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Owners. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_OwnersByDog_ID(Guid dog_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_OwnersByDog_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Dog Owners. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_OwnersByOwner_ID(Guid owner_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_OwnersByOwner_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Owner_ID", SSSDatabaseInfo.ParameterType.Guid, owner_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Owners. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_OwnersByShow_ID(Guid show_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_OwnersByShow_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Owners. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Dog_Owners(Guid dog_ID, Guid owner_ID, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_lnkDog_Owners";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
                new SSSDatabaseInfo.DatabaseParameter("Owner_ID", SSSDatabaseInfo.ParameterType.Guid, owner_ID),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Dog Owners. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Dog_Owners(Guid original_ID, Guid dog_ID, Guid owner_ID, bool deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_lnkDog_Owners";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
                new SSSDatabaseInfo.DatabaseParameter("Owner_ID", SSSDatabaseInfo.ParameterType.Guid, owner_ID),
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
                ErrorLog.LogMessage(string.Format("Failed to update Dog Owners. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
