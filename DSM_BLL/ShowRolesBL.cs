using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class ShowRolesBL
    {
        private string _connString = "";

        public ShowRolesBL(string connString)
        {
            _connString = connString;
        }
        
        public DataTable GetShow_Roles()
        {
            DataTable retVal = null;

            string spName = "spGetShow_Roles";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Roles. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShow_RolesByShow_Role_ID(int show_Role_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShow_RoleByShow_Role_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Role_ID", SSSDatabaseInfo.ParameterType.Int, show_Role_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Role. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShow_RolesByShow_Role_Description(string show_Role_Description)
        {
            DataTable retVal = null;

            string spName = "spGetShow_RolesLikeShow_Role_Description";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Role_Description", SSSDatabaseInfo.ParameterType.String, show_Role_Description),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Roles. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
