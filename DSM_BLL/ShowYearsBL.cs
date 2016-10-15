using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class ShowYearsBL
    {
        private string _connString = "";

        public ShowYearsBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetShow_Years()
        {
            DataTable retVal = null;

            string spName = "spGetShow_Years";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Years. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShow_YearByShow_Year_ID(int show_Year_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShow_YearsByShow_Year_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Year_ID", SSSDatabaseInfo.ParameterType.Int, show_Year_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Year. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShow_YearByShow_Year(short show_Year)
        {
            DataTable retVal = null;

            string spName = "spGetShow_YearByShow_Year";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Year", SSSDatabaseInfo.ParameterType.Short, show_Year),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Year. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
