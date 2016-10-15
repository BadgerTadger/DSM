using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class LinkedShowsBL
    {
        private string _connString = "";

        public LinkedShowsBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetLinked_Shows()
        {
            DataTable retVal = null;

            string spName = "spGetLinked_Shows";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Linked Shows. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetLinked_ShowByLinked_Show_ID(Guid linked_Show_ID)
        {
            DataTable retVal = null;

            string spName = "spGetLinked_ShowByLinked_Show_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Linked_Show_ID", SSSDatabaseInfo.ParameterType.Guid, linked_Show_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Linked Shows. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetLinked_ShowsByParent_Show_ID(Guid parent_Show_ID)
        {
            DataTable retVal = null;

            string spName = "spGetLinked_ShowsByParent_Show_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Parent_Show_ID", SSSDatabaseInfo.ParameterType.Guid, parent_Show_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Linked Shows. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetLinked_ShowByChild_Show_ID(Guid child_Show_ID)
        {
            DataTable retVal = null;

            string spName = "spGetLinked_ShowByChild_Show_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Child_Show_ID", SSSDatabaseInfo.ParameterType.Guid, child_Show_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Linked Shows. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Linked_Shows(Guid parent_Show_ID, Guid child_Show_ID, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_lnkLinked_Shows";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Parent_Show_ID", SSSDatabaseInfo.ParameterType.Guid, parent_Show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Child_Show_ID", SSSDatabaseInfo.ParameterType.Guid, child_Show_ID),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Linked Show. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Linked_Shows(Guid original_ID, Guid parent_Show_ID, Guid child_Show_ID, bool deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_lnkLinked_Shows";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Parent_Show_ID", SSSDatabaseInfo.ParameterType.Guid, parent_Show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Child_Show_ID", SSSDatabaseInfo.ParameterType.Guid, child_Show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Deleted", SSSDatabaseInfo.ParameterType.Guid, deleted),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to update Linked Show. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
