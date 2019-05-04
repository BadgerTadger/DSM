using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class RunningOrdersBL
    {
        private string _connString = "";

        public RunningOrdersBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetOwnersDogsClassesDrawn(bool display)
        {
            DataTable retVal = null;
            string spName = "";

            if (display)
            {
                spName = "spGetOwnersDogsClassesDrawnList";
            }
            else
            {
                spName = "spGetOwnersDogsClassesDrawnListOrderByEntry_Date";
            }

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Owners Dogs Classes Drawn list. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool PopulateOwnersDogsClassesList(Guid show_ID, Guid? show_Final_Class_ID)
        {
            bool retVal = false;

            string spName = "spPopulateOwnersDogsClassesList";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Final_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Final_Class_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to populate Owners Dogs Classes Drawn list. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool PopulateOwnersDogsClassesListOrderByEntry_Date(Guid show_ID, Guid? show_Final_Class_ID)
        {
            bool retVal = false;

            string spName = "spPopulateOwnersDogsClassesListOrderByEntry_Date";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Final_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Final_Class_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to populate Owners Dogs Classes Drawn list. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool PopulateOwnersDogsClassesListOrderByEntry_DateForClassRange(Guid show_ID, int startClass, int endClass)
        {
            bool retVal = false;

            string spName = "spPopulateOwnersDogsClassesListOrderByEntry_DateForClassRange";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("StartClass", SSSDatabaseInfo.ParameterType.Int, startClass),
                new SSSDatabaseInfo.DatabaseParameter("EndClass", SSSDatabaseInfo.ParameterType.Int, endClass),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to populate Owners Dogs Classes Drawn list. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool DeleteOwnersDogsClassesList()
        {
            bool retVal = false;

            string spName = "spDeleteOwnersDogsClassesList";

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, null);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to delete Owners Dogs Classes Drawn list. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
