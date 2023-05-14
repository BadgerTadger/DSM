using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    class ClassListBL
    {
        string _connString = "";

        public ClassListBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetClassLists()
        {
            DataTable retVal = null;

            string spName = "spGetClassLists";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get ClassLists. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
