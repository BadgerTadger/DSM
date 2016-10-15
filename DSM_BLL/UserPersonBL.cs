using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class UserPersonBL
    {
        private string _connString = "";

        public UserPersonBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetUser_Person()
        {
            DataTable retVal = null;

            string spName = "spGetUser_Person";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get User Person. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetUser_PersonByUser_Person_ID(Guid user_Person_ID)
        {
            DataTable retVal = null;

            string spName = "spGetUser_PersonByUser_Person_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("User_Person_ID", SSSDatabaseInfo.ParameterType.Guid, user_Person_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get User Person. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetUser_PersonByUser_ID(Guid user_ID)
        {
            DataTable retVal = null;

            string spName = "spGetUser_PersonByUser_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get User Person. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetUser_PersonByPerson_ID(Guid person_ID)
        {
            DataTable retVal = null;

            string spName = "spGetUser_PersonByPerson_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Person_ID", SSSDatabaseInfo.ParameterType.Guid, person_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get User Person. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_User_Person(Guid user_ID, Guid person_ID, Guid userID)
        {
            Guid? retVal = null;

            string spName = "spInsert_lnkUser_Person";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
                new SSSDatabaseInfo.DatabaseParameter("Person_ID", SSSDatabaseInfo.ParameterType.Guid, person_ID),
                new SSSDatabaseInfo.DatabaseParameter("UserID", SSSDatabaseInfo.ParameterType.Guid, userID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert User Person. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_User_Person(Guid original_ID, Guid user1_ID, Guid person_ID, bool deleted, Guid userID)
        {
            bool retVal = false;

            string spName = "spUpdate_lnkUser_Person";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user1_ID),
                new SSSDatabaseInfo.DatabaseParameter("Person_ID", SSSDatabaseInfo.ParameterType.Guid, person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Deleted", SSSDatabaseInfo.ParameterType.Bool, deleted),
                new SSSDatabaseInfo.DatabaseParameter("UserID", SSSDatabaseInfo.ParameterType.Guid, userID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to update User Person. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
