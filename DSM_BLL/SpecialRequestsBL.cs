using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class SpecialRequestsBL
    {
        private string _connString = "";

        public SpecialRequestsBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetSpecialRequests()
        {
            DataTable retVal = null;

            string spName = "spGetSpecialRequestList";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Special Requests. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool PopulateSpecialRequestList(Guid show_ID, Guid? show_Entry_Class_ID, bool specialRequestsOnly)
        {
            bool retVal = false;

            string spName = "spPopulateSpecialRequestList";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
                new SSSDatabaseInfo.DatabaseParameter("SpecialRequestsOnly", SSSDatabaseInfo.ParameterType.Bool, specialRequestsOnly),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to populate Special Requests. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
