using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class ShowHelpersBL
    {
        private string _connString = "";

        public ShowHelpersBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetShow_Helpers()
        {
            DataTable retVal = null;

            string spName = "spGetShow_Helpers";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Helpers. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShow_HelpersByShow_Helper_ID(Guid show_Helper_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShow_HelperByShow_Helper_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Helper_ID", SSSDatabaseInfo.ParameterType.Guid, show_Helper_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Helper. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShow_HelpersByShow_ID(Guid show_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShow_HelpersByShow_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Show Helper. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Show_Helpers(Guid? show_ID, Guid? person_ID, int? show_Role_ID, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_tblShow_Helpers";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Person_ID", SSSDatabaseInfo.ParameterType.Guid, person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Role_ID", SSSDatabaseInfo.ParameterType.Int, show_Role_ID),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Show Helper. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Show_Helpers(Guid original_ID, Guid? show_ID, Guid? person_ID, int? show_Role_ID, bool? deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_tblShow_Helpers";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Person_ID", SSSDatabaseInfo.ParameterType.Guid, person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Role_ID", SSSDatabaseInfo.ParameterType.Int, show_Role_ID),
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
                ErrorLog.LogMessage(string.Format("Failed to update Show Helper. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
