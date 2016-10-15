using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class ShowHelpers
    {
        private string _connString = "";

        private DataTable tblShowHelpers = null;

        private Guid _show_Helper_ID;
        public Guid Show_Helper_ID
        {
            get { return _show_Helper_ID; }
            set { _show_Helper_ID = value; }
        }

        private Guid? _show_ID = null;
        public Guid? Show_ID
        {
            get { return _show_ID; }
            set { _show_ID = value; }
        }

        private Guid? _person_ID = null;
        public Guid? Person_ID
        {
            get { return _person_ID; }
            set { _person_ID = value; }
        }

        private int? _show_Role_ID = null;
        public int? Show_Role_ID
        {
            get { return _show_Role_ID; }
            set { _show_Role_ID = value; }
        }

        private bool? _deleteShowHelper = false;
        public bool? DeleteShowHelper
        {
            get { return _deleteShowHelper; }
            set { _deleteShowHelper = value; }
        }

        public ShowHelpers(string connString)
        {
            _connString = connString;
        }

        public ShowHelpers(string connString, Guid show_Helper_ID)
        {
            _connString = connString;

            try
            {
                ShowHelpersBL showhelpers = new ShowHelpersBL(_connString);
                tblShowHelpers = showhelpers.GetShow_HelpersByShow_Helper_ID(show_Helper_ID);
                DataRow row = tblShowHelpers.Rows[0];

                _show_Helper_ID = show_Helper_ID;
                _show_ID = Utils.DBNullToGuid(row["Show_ID"]);
                _person_ID = Utils.DBNullToGuid(row["Person_ID"]);
                _show_Role_ID = Utils.DBNullToInt(row["Show_Role_ID"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<ShowHelpers> GetShow_HelpersByShow_ID(Guid show_ID)
        {
            List<ShowHelpers> retVal = new List<ShowHelpers>();

            try
            {
                ShowHelpersBL showhelpers = new ShowHelpersBL(_connString);
                tblShowHelpers = showhelpers.GetShow_HelpersByShow_ID(show_ID);

                if (tblShowHelpers != null && tblShowHelpers.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShowHelpers.Rows)
                    {
                        ShowHelpers showHelper = new ShowHelpers(_connString, Utils.DBNullToGuid(row["Show_Helper_ID"]));
                        retVal.Add(showHelper);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Show_Helper(Guid user_ID)
        {
            Guid? retVal = null;

            try
            {
                ShowHelpersBL showhelpers = new ShowHelpersBL(_connString);
                retVal = (Guid?)showhelpers.Insert_Show_Helpers(_show_ID, _person_ID, _show_Role_ID, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Show_Helper(Guid show_Helper_ID, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                ShowHelpersBL showhelpers = new ShowHelpersBL(_connString);
                retVal = showhelpers.Update_Show_Helpers(show_Helper_ID, _show_ID, _person_ID, _show_Role_ID, _deleteShowHelper, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}