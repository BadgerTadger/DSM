using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class ShowTypesBL
    {
        private string _connString = "";

        public ShowTypesBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetShow_Types()
        {
            DataTable retVal = null;

            string spName = "spGetShow_Types";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Types. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShow_TypesByShow_Type_ID(int show_Type_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShow_TypesByShow_Type_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Type_ID", SSSDatabaseInfo.ParameterType.Int, show_Type_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Type. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShow_TypesLikeShow_Type_Description(string show_Type_Description)
        {
            DataTable retVal = null;

            string spName = "spGetShow_TypesLikeShow_Type_Description";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Type_Description", SSSDatabaseInfo.ParameterType.String, show_Type_Description),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Types. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
