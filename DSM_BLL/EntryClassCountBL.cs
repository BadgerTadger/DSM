using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class EntryClassCountBL
    {
        private string _connString = "";

        public EntryClassCountBL(string connString)
        {
            _connString = connString;
        }
        
        public DataTable GetEntryClassCount()
        {
            DataTable retVal = null;

            string spName = "spGetEntryClassCount";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Entry Class Count. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetEntryClassCountByShow_Entry_Class_ID(Guid show_Entry_Class_ID)
        {
            DataTable retVal = null;

            string spName = "spGetEntryClassCountByShow_Entry_Class_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Entry Class Count. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool PopulateEntryClassCount(Guid show_ID)
        {
            bool retVal = false;

            string spName = "spPopulateEntryClassCount";
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
                ErrorLog.LogMessage(string.Format("Failed to populate Entry Class Count. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
