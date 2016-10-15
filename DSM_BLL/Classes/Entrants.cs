using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class Entrants
    {
        private string _connString = "";

        private DataTable tblEntrants = null;

        private Guid? _entrant_ID = null;
        public Guid? Entrant_ID
        {
            get { return _entrant_ID; }
            set { _entrant_ID = value; }
        }

        private Guid? _show_ID = null;
        public Guid? Show_ID
        {
            get { return _show_ID; }
            set { _show_ID = value; }
        }

        private bool? _catalogue = null;
        public bool? Catalogue
        {
            get { return _catalogue; }
            set { _catalogue = value; }
        }

        private bool? _overnight_Camping = null;
        public bool? Overnight_Camping
        {
            get { return _overnight_Camping; }
            set { _overnight_Camping = value; }
        }

        private decimal? _overpayment = null;
        public decimal? Overpayment
        {
            get { return _overpayment; }
            set { _overpayment = value; }
        }

        private decimal? _underpayment = null;
        public decimal? Underpayment
        {
            get { return _underpayment; }
            set { _underpayment = value; }
        }

        private bool? _offer_Of_Help = null;
        public bool? Offer_Of_Help
        {
            get { return _offer_Of_Help; }
            set { _offer_Of_Help = value; }
        }

        private string _help_Details = null;
        public string Help_Details
        {
            get { return _help_Details; }
            set { _help_Details = value; }
        }

        private bool? _withold_Address = null;
        public bool? Withold_Address
        {
            get { return _withold_Address; }
            set { _withold_Address = value; }
        }

        private bool? _send_Running_Order = null;
        public bool? Send_Running_Order
        {
            get { return _send_Running_Order; }
            set { _send_Running_Order = value; }
        }
        private DateTime? _entry_Date = null;
        public DateTime? Entry_Date
        {
            get { return _entry_Date; }
            set { _entry_Date = value; }
        }
        private bool? _deleteEntrant = null;
        public bool? DeleteEntrant
        {
            get { return _deleteEntrant; }
            set { _deleteEntrant = value; }
        }

        public Entrants(string connString)
        {
            _connString = connString;
        }

        public Entrants(string connString, Guid entrant_ID)
        {
            _connString = connString;

            try
            {
                EntrantsBL entrants = new EntrantsBL(_connString);
                tblEntrants = entrants.GetEntrantsByEntrant_ID(entrant_ID);
                DataRow row = tblEntrants.Rows[0];

                _entrant_ID = entrant_ID;
                _show_ID = Utils.DBNullToGuid(row["Show_ID"]);
                _catalogue = Utils.DBNullToBool(row["Catalogue"]);
                _overnight_Camping = Utils.DBNullToBool(row["Overnight_Camping"]);
                _overpayment = Utils.DBNullToDec(row["Overpayment"]);
                _underpayment = Utils.DBNullToDec(row["Underpayment"]);
                _offer_Of_Help = Utils.DBNullToBool(row["Offer_Of_Help"]);
                _help_Details = Utils.DBNullToString(row["Help_Details"]);
                _withold_Address = Utils.DBNullToBool(row["Withold_Address"]);
                _send_Running_Order = Utils.DBNullToBool(row["Send_Running_Order"]);
                _entry_Date = Utils.DBNullToDate(row["Entry_Date"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Entrants> GetEntrantsByShow_ID(Guid show_ID, bool includeLinked)
        {
            List<Entrants> retVal = new List<Entrants>();

            try
            {
                EntrantsBL entrants = new EntrantsBL(_connString);
                tblEntrants = entrants.GetEntrantsByShow_ID(show_ID, includeLinked);

                if (tblEntrants != null && tblEntrants.Rows.Count > 0)
                {
                    foreach (DataRow row in tblEntrants.Rows)
                    {
                        Entrants entrant = new Entrants(_connString, Utils.DBNullToGuid(row["Entrant_ID"]));
                        retVal.Add(entrant);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Entrants> GetEntrantsByShow_IDAndDog_ID(Guid show_ID, Guid dog_ID, bool includeLinked)
        {
            List<Entrants> retVal = new List<Entrants>();

            try
            {
                EntrantsBL entrants = new EntrantsBL(_connString);
                tblEntrants = entrants.GetEntrantsByShow_IDAndDog_ID(show_ID, dog_ID, includeLinked);

                if (tblEntrants != null && tblEntrants.Rows.Count > 0)
                {
                    foreach (DataRow row in tblEntrants.Rows)
                    {
                        Entrants entrant = new Entrants(_connString, Utils.DBNullToGuid(row["Entrant_ID"]));
                        retVal.Add(entrant);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Entrant(Guid user_ID)
        {
            Guid? retVal = null;

            try
            {
                EntrantsBL entrants = new EntrantsBL(_connString);
                retVal = entrants.Insert_Entrants(_show_ID, _catalogue, _overnight_Camping, _overpayment,
                    _underpayment, _offer_Of_Help, _help_Details, _withold_Address, _send_Running_Order, _entry_Date, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Entrant(Guid entrant_ID, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                EntrantsBL entrants = new EntrantsBL(_connString);
                retVal = entrants.Update_Entrants(entrant_ID, _show_ID, _catalogue, _overnight_Camping, _overpayment,
                    _underpayment, _offer_Of_Help, _help_Details, _withold_Address, _send_Running_Order, _entry_Date, _deleteEntrant, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}