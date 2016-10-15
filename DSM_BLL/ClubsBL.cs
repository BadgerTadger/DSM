using System;
using System.Collections.Generic;
using System.Text;
using DSM_DATA;

using System.ComponentModel;
using System.Data;

namespace BLL
{
    class ClubsBL
    {
        string _connString = "";

        public ClubsBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetClubs()
        {
            DataTable retVal = null;

            string spName = "spGetClubs";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Clubs. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetClubByClub_ID(Guid club_ID)
        {
            DataTable retVal = null;

            string spName = "spGetClubByClub_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Club_ID", SSSDatabaseInfo.ParameterType.Guid, club_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Club. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetClubsByClub_Contact(Guid club_Contact)
        {
            DataTable retVal = null;

            string spName = "spGetClubsByClub_Contact";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Club_Contact", SSSDatabaseInfo.ParameterType.Guid, club_Contact),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Clubs. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetClubsLikeClub_Short_Name(string club_Short_Name)
        {
            DataTable retVal = null;

            string spName = "spGetClubsByClub_Short_Name";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Club_Short_Name", SSSDatabaseInfo.ParameterType.String, club_Short_Name),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Clubs. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetClubsLikeClub_Long_Name(string club_Long_Name)
        {
            DataTable retVal = null;

            string spName = "spGetClubsLikeClub_Long_Name";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Club_Long_Name", SSSDatabaseInfo.ParameterType.String, club_Long_Name),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Clubs. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Clubs(string club_Long_Name, string club_Short_Name, Guid? club_Contact, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_tblClubs";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Club_Long_Name", SSSDatabaseInfo.ParameterType.String, club_Long_Name),
                new SSSDatabaseInfo.DatabaseParameter("Club_Short_Name", SSSDatabaseInfo.ParameterType.String, club_Short_Name),
                new SSSDatabaseInfo.DatabaseParameter("Club_Contact", SSSDatabaseInfo.ParameterType.Guid, club_Contact),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Club. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Clubs(Guid original_ID, string club_Long_Name, string club_Short_Name, Guid? club_Contact, bool deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_tblClubs";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Club_Long_Name", SSSDatabaseInfo.ParameterType.String, club_Long_Name),
                new SSSDatabaseInfo.DatabaseParameter("Club_Short_Name", SSSDatabaseInfo.ParameterType.String, club_Short_Name),
                new SSSDatabaseInfo.DatabaseParameter("Club_Contact", SSSDatabaseInfo.ParameterType.Guid, club_Contact),
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
                ErrorLog.LogMessage(string.Format("Failed to update Club. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
