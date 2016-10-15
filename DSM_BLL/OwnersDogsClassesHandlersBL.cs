using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class OwnersDogsClassesHandlersBL
    {
        private string _connString = "";

        public OwnersDogsClassesHandlersBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetOwnersDogsClassesHandlers(Guid owner_ID)
        {
            DataTable retVal = null;

            string spName = "spGetOwnersDogsClassesHandlers";
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
                ErrorLog.LogMessage(string.Format("Failed to get Owners Dogs Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool PopulateOwnersDogsClassesHandlers(Guid owner_ID)
        {
            bool retVal = false;

            string spName = "spPopulateOwnersDogsClassesHandlers";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Owner_ID", SSSDatabaseInfo.ParameterType.Guid, owner_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to populate Owners Dogs Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
