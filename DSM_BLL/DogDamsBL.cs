using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class DogDamsBL
    {
        private string _connString = "";


        public DogDamsBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetDog_Dams()
        {
            DataTable retVal = null;

            string spName = "spGetDog_Dams";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Dams. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_DamByDog_Dam_ID(Guid dog_Dam_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_DamByDog_Dam_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_Dam_ID", SSSDatabaseInfo.ParameterType.Guid, dog_Dam_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Dams. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_DamByDog_ID(Guid dog_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_DamByDog_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Dog Dams. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_DamsByDam_ID(Guid dam_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_DamsByDam_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dam_ID", SSSDatabaseInfo.ParameterType.Guid, dam_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Dams. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Dog_Dams(Guid dog_ID, Guid dam_ID, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_lnkDog_Dams";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dam_ID", SSSDatabaseInfo.ParameterType.Guid, dam_ID),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Dog Dams. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Dog_Dams(Guid original_ID, Guid dog_ID, Guid dam_ID, bool deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_lnkDog_Dams";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dam_ID", SSSDatabaseInfo.ParameterType.Guid, dam_ID),
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
                ErrorLog.LogMessage(string.Format("Failed to update Dog Dams. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}

