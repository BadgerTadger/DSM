using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class FinalClassNamesBL
    {
        private string _connString = "";

        public FinalClassNamesBL(string connString)
        {
            _connString = connString;
        }
        
        public DataTable GetFinalClassNames()
        {
            DataTable retVal = null;

            string spName = "spGetFinalClassNames";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Final Class Names. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetFinalClassNamesByOrderBy(short orderBy)
        {
            DataTable retVal = null;

            string spName = "spGetFinalClassNamesByOrderBy";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("OrderBy", SSSDatabaseInfo.ParameterType.Short, orderBy),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Final Class Names. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool InsertFinalClassNames(Guid show_Entry_Class_ID, string class_Name_Description, short class_No,
            string show_Final_Class_Description, short entries, short orderBy)
        {
            bool retVal = false;

            string spName = "spInsertFinalClassNames";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
                new SSSDatabaseInfo.DatabaseParameter("Class_Name_Description", SSSDatabaseInfo.ParameterType.String, class_Name_Description),
                new SSSDatabaseInfo.DatabaseParameter("Class_No", SSSDatabaseInfo.ParameterType.Short, class_No),
                new SSSDatabaseInfo.DatabaseParameter("Show_Final_Class_Description", SSSDatabaseInfo.ParameterType.String, show_Final_Class_Description),
                new SSSDatabaseInfo.DatabaseParameter("Entries", SSSDatabaseInfo.ParameterType.Short, entries),
                new SSSDatabaseInfo.DatabaseParameter("OrderBy", SSSDatabaseInfo.ParameterType.Short, orderBy),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Final Class Names. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool UpdateFinalClassNames(Guid show_Entry_Class_ID, string class_Name_Description, short class_No,
            string show_Final_Class_Description, short entries, short orderBy)
        {
            bool retVal = false;

            string spName = "spUpdateFinalClassNames";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
                new SSSDatabaseInfo.DatabaseParameter("Class_Name_Description", SSSDatabaseInfo.ParameterType.String, class_Name_Description),
                new SSSDatabaseInfo.DatabaseParameter("Class_No", SSSDatabaseInfo.ParameterType.Short, class_No),
                new SSSDatabaseInfo.DatabaseParameter("Show_Final_Class_Description", SSSDatabaseInfo.ParameterType.String, show_Final_Class_Description),
                new SSSDatabaseInfo.DatabaseParameter("Entries", SSSDatabaseInfo.ParameterType.Short, entries),
                new SSSDatabaseInfo.DatabaseParameter("OrderBy", SSSDatabaseInfo.ParameterType.Short, orderBy),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to update Final Class Names. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool ClearFinalClassNames()
        {
            bool retVal = false;

            string spName = "spClearFinalClassNames";

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, null);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to clear Final Class Names. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
