using System;
using System.Collections.Generic;
using System.Text;
using DSM_DATA;

using System.ComponentModel;
using System.Data;

namespace BLL
{
    class ClassNamesBL
    {
        string _connString = "";

        public ClassNamesBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetClass_Names()
        {
            DataTable retVal = null;

            string spName = "spGetClass_Names";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Class Names. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetClass_NameByClass_Name_ID(int class_Name_ID)
        {
            DataTable retVal = null;

            string spName = "spGetClass_NameByClass_Name_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Class_Name_ID", SSSDatabaseInfo.ParameterType.Int, class_Name_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Class Names. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetClass_NameLikeClass_Name_Description(string class_Name_Description)
        {
            DataTable retVal = null;

            string spName = "spGetClass_NamesLikeClass_Name_Description";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Class_Name_Description", SSSDatabaseInfo.ParameterType.String, class_Name_Description),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Class Names. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
