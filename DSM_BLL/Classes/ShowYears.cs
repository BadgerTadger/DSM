using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class ShowYears
    {
        private string _connString = "";

        public DataTable lkpShowYears = null;

        private int _show_Year_ID;
        public int Show_Year_ID
        {
            get { return _show_Year_ID; }
            set { _show_Year_ID = value; }
        }

        private short _showYear;
        public short ShowYear
        {
            get { return _showYear; }
            set { _showYear = value; }
        }

        private string _show_Year;
        public string Show_Year
        {
            get { return _show_Year; }
            set { _show_Year = value; }
        }

        public ShowYears(string connString)
        {
            _connString = connString;

            try
            {
                ShowYearsBL showYears = new ShowYearsBL(_connString);
                lkpShowYears = showYears.GetShow_Years();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public ShowYears(string connString, int show_Year_ID)
        {
            _connString = connString;

            try
            {
                ShowYearsBL showYears = new ShowYearsBL(_connString);
                lkpShowYears = showYears.GetShow_YearByShow_Year_ID(show_Year_ID);
                DataRow row = lkpShowYears.Rows[0];

                _show_Year_ID = show_Year_ID;
                _showYear = Utils.DBNullToShort(row["Show_Year"]);
                _show_Year = _showYear.ToString();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<ShowYears> GetShow_Years()
        {
            List<ShowYears> retVal = new List<ShowYears>();

            try
            {
                ShowYearsBL showYears = new ShowYearsBL(_connString);
                lkpShowYears = showYears.GetShow_Years();

                if (lkpShowYears != null && lkpShowYears.Rows.Count > 0)
                {
                    foreach (DataRow row in lkpShowYears.Rows)
                    {
                        ShowYears showYear = new ShowYears(_connString, Utils.DBNullToInt(row["Show_Year_ID"]));
                        retVal.Add(showYear);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<ShowYears> GetShow_YearByShow_Year(short show_Year)
        {
            List<ShowYears> retVal = new List<ShowYears>();

            try
            {
                ShowYearsBL showYears = new ShowYearsBL(_connString);
                lkpShowYears = showYears.GetShow_YearByShow_Year(show_Year);

                if (lkpShowYears != null && lkpShowYears.Rows.Count > 0)
                {
                    foreach (DataRow row in lkpShowYears.Rows)
                    {
                        ShowYears showYear = new ShowYears(_connString, Utils.DBNullToInt(row["Show_Year_ID"]));
                        retVal.Add(showYear);
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