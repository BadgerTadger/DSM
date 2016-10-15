using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    public class ShowsBL
    {
        private string _connString = "";

        public ShowsBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetShows()
        {
            DataTable retVal = null;

            string spName = "spGetShows";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Shows. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShowByShow_ID(Guid show_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShowByShow_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Show. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShowsByClub_ID(Guid club_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShowsByClub_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Shows. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShowsByClub_ID_And_Show_Year_ID(Guid club_ID, int show_Year_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShowsByClub_ID_And_Show_Year_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Club_ID", SSSDatabaseInfo.ParameterType.Guid, club_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Year_ID", SSSDatabaseInfo.ParameterType.Int, show_Year_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Shows. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShowsByShow_Type_ID(int show_Type_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShowsByShow_Type_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Type_ID", SSSDatabaseInfo.ParameterType.Int, show_Type_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Shows. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShowsByShow_Year(short show_Year_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShowsByShow_Year_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Year_ID", SSSDatabaseInfo.ParameterType.Short, show_Year_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Shows. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShowsByVenue_ID(Guid venue_ID)
        {
            DataTable retVal = null;

            string spName = "spGetShowsByVenue_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Venue_ID", SSSDatabaseInfo.ParameterType.Guid, venue_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Shows. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetShowsLikeShow_Name(string show_Name)
        {
            DataTable retVal = null;

            string spName = "spGetShowsLikeShow_Name";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_Name", SSSDatabaseInfo.ParameterType.String, show_Name),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Shows. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Shows(Guid? club_ID, int? show_Year_ID, int? show_Type_ID, Guid? venue_ID, DateTime? show_Opens, DateTime? judging_Commences,
        string show_Name, DateTime? closing_Date, short? maxClassesPerDog, bool? linked_Show, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_tblShows";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Club_ID", SSSDatabaseInfo.ParameterType.Guid, club_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Year_ID", SSSDatabaseInfo.ParameterType.Int, show_Year_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Type_ID", SSSDatabaseInfo.ParameterType.Int, show_Type_ID),
                new SSSDatabaseInfo.DatabaseParameter("Venue_ID", SSSDatabaseInfo.ParameterType.Guid, venue_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Opens", SSSDatabaseInfo.ParameterType.DateTime, show_Opens),
                new SSSDatabaseInfo.DatabaseParameter("Judging_Commences", SSSDatabaseInfo.ParameterType.DateTime, judging_Commences),
                new SSSDatabaseInfo.DatabaseParameter("Show_Name", SSSDatabaseInfo.ParameterType.String, show_Name),
                new SSSDatabaseInfo.DatabaseParameter("Closing_Date", SSSDatabaseInfo.ParameterType.DateTime, closing_Date),
                new SSSDatabaseInfo.DatabaseParameter("MaxClassesPerDog", SSSDatabaseInfo.ParameterType.Short, maxClassesPerDog),
                new SSSDatabaseInfo.DatabaseParameter("Linked_Show", SSSDatabaseInfo.ParameterType.Bool, linked_Show),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Show. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Shows(Guid original_ID, Guid? club_ID, int? show_Year_ID, int? show_Type_ID, Guid? venue_ID, DateTime? show_Opens, DateTime? judging_Commences,
        string show_Name, DateTime? closing_Date, bool? entries_Complete, bool? judges_Allocated, bool? split_Classes, bool? running_Orders_Allocated,
        bool? ring_Numbers_Allocated, short? maxClassesPerDog, bool? linked_Show, bool? deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_tblShows";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Club_ID", SSSDatabaseInfo.ParameterType.Guid, club_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Year_ID", SSSDatabaseInfo.ParameterType.Int, show_Year_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Type_ID", SSSDatabaseInfo.ParameterType.Int, show_Type_ID),
                new SSSDatabaseInfo.DatabaseParameter("Venue_ID", SSSDatabaseInfo.ParameterType.Guid, venue_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_Opens", SSSDatabaseInfo.ParameterType.DateTime, show_Opens),
                new SSSDatabaseInfo.DatabaseParameter("Judging_Commences", SSSDatabaseInfo.ParameterType.DateTime, judging_Commences),
                new SSSDatabaseInfo.DatabaseParameter("Show_Name", SSSDatabaseInfo.ParameterType.String, show_Name),
                new SSSDatabaseInfo.DatabaseParameter("Closing_Date", SSSDatabaseInfo.ParameterType.DateTime, closing_Date),
                new SSSDatabaseInfo.DatabaseParameter("Entries_Complete", SSSDatabaseInfo.ParameterType.Bool, entries_Complete),
                new SSSDatabaseInfo.DatabaseParameter("Judges_Allocated", SSSDatabaseInfo.ParameterType.Bool, judges_Allocated),
                new SSSDatabaseInfo.DatabaseParameter("Split_Classes", SSSDatabaseInfo.ParameterType.Bool, split_Classes),
                new SSSDatabaseInfo.DatabaseParameter("Running_Orders_Allocated", SSSDatabaseInfo.ParameterType.Bool, running_Orders_Allocated),
                new SSSDatabaseInfo.DatabaseParameter("Ring_Numbers_Allocated", SSSDatabaseInfo.ParameterType.Bool, ring_Numbers_Allocated),
                new SSSDatabaseInfo.DatabaseParameter("MaxClassesPerDog", SSSDatabaseInfo.ParameterType.Short, maxClassesPerDog),
                new SSSDatabaseInfo.DatabaseParameter("Linked_Show", SSSDatabaseInfo.ParameterType.Bool, linked_Show),
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
                ErrorLog.LogMessage(string.Format("Failed to update Person. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

    }
}
