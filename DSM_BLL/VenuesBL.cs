using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class VenuesBL
    {
        string _connString = "";

        public VenuesBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetVenues()
        {
            DataTable retVal = null;

            string spName = "spGetVenues";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Venues. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetVenueByVenue_ID(Guid venue_ID)
        {
            DataTable retVal = null;

            string spName = "spGetVenueByVenue_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Venue. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetVenueByAddress_ID(Guid address_ID)
        {
            DataTable retVal = null;

            string spName = "spGetVenueByAddress_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Address_ID", SSSDatabaseInfo.ParameterType.Guid, address_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Venues. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetVenuesLikeVenue_Name(string venue_Name)
        {
            DataTable retVal = null;

            string spName = "spGetVenuesLikeVenue_Name";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Venue_Name", SSSDatabaseInfo.ParameterType.String, venue_Name),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Venues. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Venues(string venue_Name, Guid? address_ID, Guid? venue_Contact, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_tblVenues";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Venue_Name", SSSDatabaseInfo.ParameterType.String, venue_Name),
                new SSSDatabaseInfo.DatabaseParameter("Address_ID", SSSDatabaseInfo.ParameterType.Guid, address_ID),
                new SSSDatabaseInfo.DatabaseParameter("Venue_Contact", SSSDatabaseInfo.ParameterType.Guid, venue_Contact),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Venue. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Venues(Guid original_ID, string venue_Name, Guid? address_ID, Guid? venue_Contact, bool? deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_tblVenues";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Venue_Name", SSSDatabaseInfo.ParameterType.String, venue_Name),
                new SSSDatabaseInfo.DatabaseParameter("Address_ID", SSSDatabaseInfo.ParameterType.Guid, address_ID),
                new SSSDatabaseInfo.DatabaseParameter("Venue_Contact", SSSDatabaseInfo.ParameterType.Guid, venue_Contact),
                new SSSDatabaseInfo.DatabaseParameter("Deleted", SSSDatabaseInfo.ParameterType.Bool, deleted),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch(Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to update Venue. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
