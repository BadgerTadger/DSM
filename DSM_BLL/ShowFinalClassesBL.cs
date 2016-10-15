using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class ShowFinalClassesBL
    {
        private string _connString = "";

        public ShowFinalClassesBL(string connString)
        {
            _connString = connString;
        }
        
        public DataTable GetShow_Final_Classes()
        {
            DataTable retVal = null;

            string spName = "spGetShow_Final_Classes";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Final Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShow_Final_ClassByShow_Final_Class_ID(Guid show_Final_Class_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShow_Final_ClassByShow_Final_Class_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Final_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Final_Class_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Show Final Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
        
        public DataTable GetShow_Final_ClassByShow_Entry_Class_ID(Guid show_Entry_Class_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShow_Final_ClassesByShow_Entry_Class_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Show Final Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShow_Final_ClassesByShow_ID(Guid show_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShow_Final_ClassesByShow_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Show Final Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetSplitClassParts(Guid show_ID)
        {
            DataTable retVal = null;

            string spName = "spGetSplitClassParts";
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
                ErrorLog.LogMessage(string.Format("Failed to get Show Final Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Show_Final_Classes(Guid? show_ID, Guid? show_Entry_Class_ID, string show_Final_Class_Description,
            short show_Final_Class_No, Guid? judge_ID, DateTime? stay_Time, DateTime? lunch_Time, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_tblShow_Final_Classes";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Final_Class_Description", SSSDatabaseInfo.ParameterType.String, show_Final_Class_Description),
                new SSSDatabaseInfo.DatabaseParameter("Show_Final_Class_No", SSSDatabaseInfo.ParameterType.Short, show_Final_Class_No),
                new SSSDatabaseInfo.DatabaseParameter("Judge_ID", SSSDatabaseInfo.ParameterType.Guid, judge_ID),
                new SSSDatabaseInfo.DatabaseParameter("Stay_Time", SSSDatabaseInfo.ParameterType.DateTime, stay_Time),
                new SSSDatabaseInfo.DatabaseParameter("Lunch_Time", SSSDatabaseInfo.ParameterType.DateTime, lunch_Time),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Show Final Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Show_Final_Classes(Guid original_ID, Guid? show_ID, Guid? show_Entry_Class_ID, string show_Final_Class_Description,
            short show_Final_Class_No, Guid? judge_ID, DateTime? stay_Time, DateTime? lunch_Time, bool? deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_tblShow_Final_Classes";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Final_Class_Description", SSSDatabaseInfo.ParameterType.String, show_Final_Class_Description),
                new SSSDatabaseInfo.DatabaseParameter("Show_Final_Class_No", SSSDatabaseInfo.ParameterType.Short, show_Final_Class_No),
                new SSSDatabaseInfo.DatabaseParameter("Judge_ID", SSSDatabaseInfo.ParameterType.Guid, judge_ID),
                new SSSDatabaseInfo.DatabaseParameter("Stay_Time", SSSDatabaseInfo.ParameterType.DateTime, stay_Time),
                new SSSDatabaseInfo.DatabaseParameter("Lunch_Time", SSSDatabaseInfo.ParameterType.DateTime, lunch_Time),
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
                ErrorLog.LogMessage(string.Format("Failed to update Show Final Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public int DeleteShowFinalClassesByShowEntryClass(Guid show_Entry_Class_ID)
        {
            int retVal = 0;
            int rowsDeleted = 0;

            string spName = "spDeleteShowFinalClassesByShowEntryClass";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
                new SSSDatabaseInfo.DatabaseParameter("NumRowsChanged", SSSDatabaseInfo.ParameterType.Int, rowsDeleted, SSSDatabaseInfo.ParameterDirection.Output),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = rowsDeleted;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to delete Show Final Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
