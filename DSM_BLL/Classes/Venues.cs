using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using DSM_DATA;


namespace BLL
{
    public class Venues
    {
        private string _connString = null;

        private DataTable tblVenues = null;

        private Guid _venue_ID;
        public Guid Venue_ID
        {
            get { return _venue_ID; }
            set { _venue_ID = value; }
        }
        private string _venue_Name = null;
        public string Venue_Name
        {
            get { return _venue_Name; }
            set { _venue_Name = value; }
        }

        private Guid? _address_ID = null;
        public Guid? Address_ID
        {
            get { return _address_ID; }
            set { _address_ID = value; }
        }

        private Guid? _venue_Contact = null;
        public Guid? Venue_Contact
        {
            get { return _venue_Contact; }
            set { _venue_Contact = value; }
        }

        private bool _deleteVenue = false;
        public bool DeleteVenue
        {
            get { return _deleteVenue; }
            set { _deleteVenue = value; }
        }

        public Venues(string connString)
        {
            _connString = connString;
        }

        public Venues(string connString, Guid venue_ID)
        {
            _connString = connString;

            try
            {
                VenuesBL venueBL = new VenuesBL(_connString);
                tblVenues = venueBL.GetVenueByVenue_ID(venue_ID);
                DataRow row = tblVenues.Rows[0];

                Venue_ID = venue_ID;
                Venue_Name = Utils.DBNullToString(row["Venue_Name"]);
                Address_ID = Utils.DBNullToGuid(row["Address_ID"]);
                Venue_Contact = Utils.DBNullToGuid(row["Venue_Contact"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Venues> GetVenues()
        {
            List<Venues> retVal = new List<Venues>();

            try
            {
                VenuesBL venueBL = new VenuesBL(_connString);
                tblVenues = venueBL.GetVenues();

                if (tblVenues != null && tblVenues.Rows.Count > 0)
                {
                    foreach (DataRow row in tblVenues.Rows)
                    {
                        Venues venue = new Venues(_connString, Utils.DBNullToGuid(row["Venue_ID"]));
                        retVal.Add(venue);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Venues> GetVenuesByAddress_ID(Guid address_ID)
        {
            List<Venues> retVal = new List<Venues>();

            try
            {
                VenuesBL venueBL = new VenuesBL(_connString);
                tblVenues = venueBL.GetVenueByAddress_ID(address_ID);

                if (tblVenues != null && tblVenues.Rows.Count > 0)
                {
                    foreach (DataRow row in tblVenues.Rows)
                    {
                        Venues venue = new Venues(_connString, Utils.DBNullToGuid(row["Venue_ID"]));
                        retVal.Add(venue);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Venues> GetVenuesLikeVenue_Name(string venue_Name)
        {
            List<Venues> retVal = new List<Venues>();

            try
            {
                VenuesBL venues = new VenuesBL(_connString);
                tblVenues = venues.GetVenuesLikeVenue_Name(venue_Name);

                if (tblVenues != null && tblVenues.Rows.Count > 0)
                {
                    foreach (DataRow row in tblVenues.Rows)
                    {
                        Venues venue = new Venues(_connString, Utils.DBNullToGuid(row["Venue_ID"]));
                        retVal.Add(venue);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Venue(Guid user_ID)
        {
            Guid? retVal = null;

            try
            {
                VenuesBL venues = new VenuesBL(_connString);
                retVal = venues.Insert_Venues(_venue_Name, _address_ID, _venue_Contact, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Venue(Guid venue_ID, Guid user_ID)
        {
            bool retVal = false;
            try
            {
                VenuesBL venues = new VenuesBL(_connString);
                retVal = venues.Update_Venues(venue_ID, _venue_Name, _address_ID, _venue_Contact, _deleteVenue, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}