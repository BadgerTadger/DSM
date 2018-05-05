using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class DogClassesBL
    {
        private string _connString = "";

        public DogClassesBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetDog_Classes()
        {
            DataTable retVal = null;

            string spName = "spGetDog_Classes";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_ClassByDog_Class_ID(Guid dog_Class_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_ClassByDog_Class_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_Class_ID", SSSDatabaseInfo.ParameterType.Guid, dog_Class_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_ClassesByDog_ID(Guid show_ID, Guid dog_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_ClassesByDog_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_ClassesByEntrant_ID_Dog_ID(Guid entrant_ID, Guid dog_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_ClassesByEntrant_ID_Dog_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Entrant_ID", SSSDatabaseInfo.ParameterType.Guid, entrant_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_ClassesByEntrant_ID(Guid entrant_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_ClassesByEntrant_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Entrant_ID", SSSDatabaseInfo.ParameterType.Guid, entrant_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_ClassesByHandler_ID(Guid handler_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_ClassesByHandler_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Handler_ID", SSSDatabaseInfo.ParameterType.Guid, handler_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_ClassesByShow_Entry_Class_ID(Guid show_Entry_Class_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_ClassesByShow_Entry_Class_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Dog Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_ClassesByShow_Final_Class_ID(Guid show_Final_Class_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_ClassesByShow_Final_Class_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Dog Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_ClassesByDog_IDAndShow_Entry_Class_ID(Guid dog_ID, Guid show_Entry_Class_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_ClassesByDog_IDAndShow_Entry_Class_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Classes. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetRunning_OrderForClass(Guid show_Final_Class_ID)
        {
            DataTable retVal = null;

            string spName = "spGetRunningOrderForClass";
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
                ErrorLog.LogMessage(string.Format("Failed to get Running Order for Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public short GetMaxRunningOrderForClass(Guid show_Final_Class_ID)
        {
            short retVal = 0;

            string spName = "spGetMaxRunningOrderForClass";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Final_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Final_Class_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnShort(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Max Running Order for Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public int GetEntryCountByShow_Final_Class_ID(Guid show_Final_Class_ID)
        {
            int retVal = 0;

            string spName = "spGetEntryCountByShow_Final_Class_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Final_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Final_Class_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnInt(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Class Entry Count. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Dog_Classes(Guid? entrant_ID, Guid? dog_ID, Guid? show_Entry_Class_ID, int preferred_Part, Guid? handler_ID,
            string special_Request, short? running_Order, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_tblDog_Classes";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Entrant_ID", SSSDatabaseInfo.ParameterType.Guid, entrant_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
                new SSSDatabaseInfo.DatabaseParameter("Preferred_Part", SSSDatabaseInfo.ParameterType.Int, preferred_Part),
                new SSSDatabaseInfo.DatabaseParameter("Handler_ID", SSSDatabaseInfo.ParameterType.Guid, handler_ID),
                new SSSDatabaseInfo.DatabaseParameter("Special_Request", SSSDatabaseInfo.ParameterType.String, special_Request),
                new SSSDatabaseInfo.DatabaseParameter("Running_Order", SSSDatabaseInfo.ParameterType.Short, running_Order),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Dog Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Dog_Classes(Guid original_ID, Guid? entrant_ID, Guid? dog_ID, Guid? show_Entry_Class_ID, int preferred_Part,
            Guid? show_Final_Class_ID, Guid? handler_ID, short? ring_No, short? running_Order, string special_Request,
            bool deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_tblDog_Classes";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Entrant_ID", SSSDatabaseInfo.ParameterType.Guid, entrant_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Entry_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Entry_Class_ID),
                new SSSDatabaseInfo.DatabaseParameter("Preferred_Part", SSSDatabaseInfo.ParameterType.Int, preferred_Part),
                new SSSDatabaseInfo.DatabaseParameter("Show_Final_Class_ID", SSSDatabaseInfo.ParameterType.Guid, show_Final_Class_ID == new Guid() ? null : show_Final_Class_ID),
                new SSSDatabaseInfo.DatabaseParameter("Handler_ID", SSSDatabaseInfo.ParameterType.Guid, handler_ID),
                new SSSDatabaseInfo.DatabaseParameter("Ring_No", SSSDatabaseInfo.ParameterType.Short, ring_No),
                new SSSDatabaseInfo.DatabaseParameter("Running_Order", SSSDatabaseInfo.ParameterType.Short, running_Order),
                new SSSDatabaseInfo.DatabaseParameter("Special_Request", SSSDatabaseInfo.ParameterType.String, special_Request),
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
                ErrorLog.LogMessage(string.Format("Failed to update Dog Class. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
