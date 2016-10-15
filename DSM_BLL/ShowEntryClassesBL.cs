using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class ShowEntryClassesBL
    {
        private string _connString = "";

        public ShowEntryClassesBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetShow_Entry_Classes()
        {
            DataTable retVal = null;

            string spName = "spGetShow_Entry_Classes";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Entry Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShow_Entry_ClassByShow_Entry_Class_ID(Guid show_Entry_Class_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShow_Entry_ClassByShow_Entry_Class_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Show Entry Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShow_Entry_ClassesByShow_ID(Guid show_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShow_Entry_ClassesByShow_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Entry Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShowEntryClassByShowAndClassNo(Guid show_ID, int class_No)
        {
            DataTable retVal = null;

            string spName = "spGetShowEntryClassByShowAndClassNo";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Class_No", SSSDatabaseInfo.ParameterType.Int, class_No),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Entry Class by Show ID and Class No. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Show_Entry_Classes(Guid? show_ID, int? class_Name_ID, short? class_No, short? gender, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_tblShow_Entry_Classes";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Class_Name_ID", SSSDatabaseInfo.ParameterType.Int, class_Name_ID),
                new SSSDatabaseInfo.DatabaseParameter("Person_Landline", SSSDatabaseInfo.ParameterType.Short, class_No),
                new SSSDatabaseInfo.DatabaseParameter("Gender", SSSDatabaseInfo.ParameterType.Short, gender),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Show Entry Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Show_Entry_Classes(Guid original_ID, Guid? show_ID, int? class_Name_ID, short? class_No, short? gender, bool? deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_tblShow_Entry_Classes";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Class_Name_ID", SSSDatabaseInfo.ParameterType.Int, class_Name_ID),
                new SSSDatabaseInfo.DatabaseParameter("Class_No", SSSDatabaseInfo.ParameterType.Short, class_No),
                new SSSDatabaseInfo.DatabaseParameter("Gender", SSSDatabaseInfo.ParameterType.Short, gender),
                new SSSDatabaseInfo.DatabaseParameter("Deleted", SSSDatabaseInfo.ParameterType.Bool, deleted),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to update Show Entry Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
