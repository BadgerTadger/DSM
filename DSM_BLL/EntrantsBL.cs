using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class EntrantsBL
    {
        private string _connString = "";

        public EntrantsBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetEntrants()
        {
            DataTable retVal = null;

            string spName = "spGetEntrants";
            SSSDatabaseInfo.DatabaseParameter[] p = null;

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Entrants. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetEntrantsByEntrant_ID(Guid entrant_ID)
        {
            DataTable retVal = null;

            string spName = "spGetEntrantByEntrant_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Entrant_ID", SSSDatabaseInfo.ParameterType.Guid, entrant_ID)
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Entrants. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }


        public DataTable GetEntrantsByShow_ID(Guid show_ID, bool includeLinked)
        {
            DataTable retVal = null;

            string spName = "spGetEntrantsByShow_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("IncludeLinked", SSSDatabaseInfo.ParameterType.Bool, includeLinked),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Entrants. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetEntrantsByShow_IDAndDog_ID(Guid show_ID, Guid dog_ID, bool includeLinked)
        {
            DataTable retVal = null;

            string spName = "spGetEntrantsByShow_IDAndDog_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
                new SSSDatabaseInfo.DatabaseParameter("IncludeLinked", SSSDatabaseInfo.ParameterType.Bool, includeLinked),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Entrants. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Entrants(Guid? show_ID, bool? catalogue, bool? overnight_Camping, decimal? overpayment,
            decimal? underpayment, bool? offer_Of_Help, string help_Details, bool? withold_Address, bool? send_Running_Order, 
            DateTime? entry_Date, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_tblEntrants";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Catalogue", SSSDatabaseInfo.ParameterType.Bool, catalogue),
                new SSSDatabaseInfo.DatabaseParameter("Overnight_Camping", SSSDatabaseInfo.ParameterType.Bool, overnight_Camping),
                new SSSDatabaseInfo.DatabaseParameter("Overpayment", SSSDatabaseInfo.ParameterType.Decimal, overpayment),
                new SSSDatabaseInfo.DatabaseParameter("Underpayment", SSSDatabaseInfo.ParameterType.Decimal, underpayment),
                new SSSDatabaseInfo.DatabaseParameter("Offer_Of_Help", SSSDatabaseInfo.ParameterType.Bool, offer_Of_Help),
                new SSSDatabaseInfo.DatabaseParameter("Help_Details", SSSDatabaseInfo.ParameterType.String, help_Details),
                new SSSDatabaseInfo.DatabaseParameter("Withold_Address", SSSDatabaseInfo.ParameterType.Bool, withold_Address),
                new SSSDatabaseInfo.DatabaseParameter("Send_Running_Order", SSSDatabaseInfo.ParameterType.Bool, send_Running_Order),
                new SSSDatabaseInfo.DatabaseParameter("Entry_Date", SSSDatabaseInfo.ParameterType.DateTime, entry_Date),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Entrant. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Entrants(Guid original_ID, Guid? show_ID, bool? catalogue, bool? overnight_Camping, decimal? overpayment,
            decimal? underpayment, bool? offer_Of_Help, string help_Details, bool? withold_Address, bool? send_Running_Order, 
            DateTime? entry_Date, bool? deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_tblEntrants";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Catalogue", SSSDatabaseInfo.ParameterType.Bool, catalogue),
                new SSSDatabaseInfo.DatabaseParameter("Overnight_Camping", SSSDatabaseInfo.ParameterType.Bool, overnight_Camping),
                new SSSDatabaseInfo.DatabaseParameter("Overpayment", SSSDatabaseInfo.ParameterType.Decimal, overpayment),
                new SSSDatabaseInfo.DatabaseParameter("Underpayment", SSSDatabaseInfo.ParameterType.Decimal, underpayment),
                new SSSDatabaseInfo.DatabaseParameter("Offer_Of_Help", SSSDatabaseInfo.ParameterType.Bool, offer_Of_Help),
                new SSSDatabaseInfo.DatabaseParameter("Help_Details", SSSDatabaseInfo.ParameterType.String, help_Details),
                new SSSDatabaseInfo.DatabaseParameter("Withold_Address", SSSDatabaseInfo.ParameterType.Bool, withold_Address),
                new SSSDatabaseInfo.DatabaseParameter("Send_Running_Order", SSSDatabaseInfo.ParameterType.Bool, send_Running_Order),
                new SSSDatabaseInfo.DatabaseParameter("Entry_Date", SSSDatabaseInfo.ParameterType.DateTime, entry_Date),
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
                ErrorLog.LogMessage(string.Format("Failed to update Entrant. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
