using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DSM_DATA;

namespace BLL
{
    class JudgesBL
    {
        private string _connString = "";

        public JudgesBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetJudgesByShow_Entry_Class_ID(Guid show_Entry_Class_ID)
        {
            DataTable retVal = null;

            string spName = "spGetJudgesByShow_Entry_Class_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Judges. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool RecordExistsForShowEntryClass(Guid show_Entry_Class_ID)
        {
            bool retVal = false;
            
            string spName = "spRecord_Exists_For_Show_Entry_Class_ID";

            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
            };

            try
            {
                retVal = (SSSDatabaseInfo.ExecuteScalarReturnShort(_connString, spName, p) > 0);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to discover if a Judges record exists for Show Entry Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public void InsertRecordForShowEntryClass(Guid show_Entry_Class_ID)
        {
            string spName = "spInsert_Judge_Record_For_Show_Entry_Class";

            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to Insert Judges record for Show Entry Class. Error: {0}", ex.Message));
                throw ex;
            }
        }

        public void UpdateJudges(Guid show_Entry_Class_ID, string primary_Judge, string reserve_Judge)
        {
            string spName = "spUpdate_tblJudges";

            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
                new SSSDatabaseInfo.DatabaseParameter("Primary_Judge", SSSDatabaseInfo.ParameterType.String, primary_Judge),
                new SSSDatabaseInfo.DatabaseParameter("Reserve_Judge", SSSDatabaseInfo.ParameterType.String, reserve_Judge),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to Update Judges record for Show Entry Class. Error: {0}", ex.Message));
                throw ex;
            }
        }
    }
}
