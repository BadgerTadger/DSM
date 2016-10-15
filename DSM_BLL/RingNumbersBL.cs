using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class RingNumbersBL
    {
        private string _connString = "";

        public RingNumbersBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetRing_Numbers()
        {
            DataTable retVal = null;

            string spName = "spGetRing_Numbers";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Ring Numbers. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool PopulateRing_Numbers(Guid show_ID)
        {
            bool retVal = false;

            string spName = "spPopulateRing_Numbers";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to populate Ring Numbers. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
