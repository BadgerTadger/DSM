using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class ShowTypes
    {
        private string _connString = "";

        public DataTable lkpShowTypes = null;

        private int _show_Type_ID;
        public int Show_Type_ID
        {
            get { return _show_Type_ID; }
            set { _show_Type_ID = value; }
        }
        private string _description = null;
        public string Description
        {
            get { return _description; }
            set { _description = value; }
        }

        public ShowTypes(string connString)
        {
            _connString = connString;

            try
            {
                ShowTypesBL showTypes = new ShowTypesBL(connString);
                lkpShowTypes = showTypes.GetShow_Types();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public ShowTypes(string connString, int show_Type_ID)
        {
            _connString = connString;

            try
            {
                ShowTypesBL showTypes = new ShowTypesBL(_connString);
                lkpShowTypes = showTypes.GetShow_TypesByShow_Type_ID(show_Type_ID);
                DataRow row = lkpShowTypes.Rows[0];

                _show_Type_ID = show_Type_ID;
                _description = Utils.DBNullToString(row["Show_Type_Description"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<ShowTypes> GetShow_Types()
        {
            List<ShowTypes> retVal = new List<ShowTypes>();

            try
            {
                ShowTypesBL showTypes = new ShowTypesBL(_connString);
                lkpShowTypes = showTypes.GetShow_Types();

                if (lkpShowTypes != null && lkpShowTypes.Rows.Count > 0)
                {
                    foreach (DataRow row in lkpShowTypes.Rows)
                    {
                        ShowTypes showType = new ShowTypes(_connString, Utils.DBNullToInt(row["Show_Type_ID"]));
                        retVal.Add(showType);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}