using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class Shows
    {
        private string _connString = "";

        private DataTable tblShows = null;

        private Guid? _show_ID = null;
        public Guid? Show_ID
        {
            get { return _show_ID; }
            set { _show_ID = value; }
        }

        private Guid? _club_ID = null;
        public Guid? Club_ID
        {
            get { return _club_ID; }
            set { _club_ID = value; }
        }

        private int? _show_Year_ID = null;
        public int? Show_Year_ID
        {
            get { return _show_Year_ID; }
            set { _show_Year_ID = value; }
        }

        private int? _show_Type_ID = null;
        public int? Show_Type_ID
        {
            get { return _show_Type_ID; }
            set { _show_Type_ID = value; }
        }

        private Guid? _venue_ID = null;
        public Guid? Venue_ID
        {
            get { return _venue_ID; }
            set { _venue_ID = value; }
        }

        private DateTime? _show_Opens = null;
        public DateTime? Show_Opens
        {
            get { return _show_Opens; }
            set { _show_Opens = value; }
        }

        private DateTime? _judging_Commences = null;
        public DateTime? Judging_Commences
        {
            get { return _judging_Commences; }
            set { _judging_Commences = value; }
        }

        private string _show_Name = null;
        public string Show_Name
        {
            get { return _show_Name; }
            set { _show_Name = value; }
        }

        private DateTime? _closing_Date = null;
        public DateTime? Closing_Date
        {
            get { return _closing_Date; }
            set { _closing_Date = value; }
        }

        private bool? _entries_Complete = null;
        public bool? Entries_Complete
        {
            get { return _entries_Complete; }
            set { _entries_Complete = value; }
        }

        private bool? _judges_Allocated = null;
        public bool? Judges_Allocated
        {
            get { return _judges_Allocated; }
            set { _judges_Allocated = value; }
        }

        private bool? _split_Classes = null;
        public bool? Split_Classes
        {
            get { return _split_Classes; }
            set { _split_Classes = value; }
        }

        private bool? _running_Orders_Allocated = null;
        public bool? Running_Orders_Allocated
        {
            get { return _running_Orders_Allocated; }
            set { _running_Orders_Allocated = value; }
        }

        private bool? _ring_Numbers_Allocated = null;
        public bool? Ring_Numbers_Allocated
        {
            get { return _ring_Numbers_Allocated; }
            set { _ring_Numbers_Allocated = value; }
        }

        private bool? _linked_Show = false;
        public bool? Linked_Show
        {
            get { return _linked_Show; }
            set { _linked_Show = value; }
        }

        private short? _maxClassesPerDog = null;
        public short? MaxClassesPerDog
        {
            get { return _maxClassesPerDog; }
            set { _maxClassesPerDog = value; }
        }

        private bool _deleteShow = false;
        public bool DeleteShow
        {
            get { return _deleteShow; }
            set { _deleteShow = value; }
        }

        public Shows(string connString)
        {
            _connString = connString;
        }

        public Shows(string connString, Guid show_ID)
        {
            _connString = connString;

            try
            {
                ShowsBL shows = new ShowsBL(_connString);
                tblShows = shows.GetShowByShow_ID(show_ID);
                DataRow row = tblShows.Rows[0];

                _show_ID = show_ID;
                _club_ID = Utils.DBNullToGuid(row["Club_ID"]);
                _show_Year_ID = Utils.DBNullToInt(row["Show_Year_ID"]);
                _show_Type_ID = Utils.DBNullToInt(row["Show_Type_ID"]);
                _venue_ID = Utils.DBNullToGuid(row["Venue_ID"]);
                _show_Opens = Utils.DBNullToDate(row["Show_Opens"]);
                _judging_Commences = Utils.DBNullToDate(row["Judging_Commences"]);
                _show_Name = Utils.DBNullToString(row["Show_Name"]);
                _closing_Date = Utils.DBNullToDate(row["Closing_Date"]);
                _entries_Complete = Utils.DBNullToBool(row["Entries_Complete"]);
                _judges_Allocated = Utils.DBNullToBool(row["Judges_Allocated"]);
                _split_Classes = Utils.DBNullToBool(row["Split_Classes"]);
                _running_Orders_Allocated = Utils.DBNullToBool(row["Running_Orders_Allocated"]);
                _ring_Numbers_Allocated = Utils.DBNullToBool(row["Ring_Numbers_Allocated"]);
                _linked_Show = Utils.DBNullToBool(row["Linked_Show"]);
                _maxClassesPerDog = Utils.DBNullToShort(row["MaxClassesPerDog"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Shows> GetShowsByClub_ID(Guid club_ID)
        {
            List<Shows> retVal = new List<Shows>();

            try
            {
                ShowsBL shows = new ShowsBL(_connString);
                tblShows = shows.GetShowsByClub_ID(club_ID);

                if (tblShows != null && tblShows.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShows.Rows)
                    {
                        Shows show = new Shows(_connString, Utils.DBNullToGuid(row["Show_ID"]));
                        retVal.Add(show);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Shows> GetShowsByClub_ID_And_Show_Year_ID(Guid club_ID, int show_Year_ID)
        {
            List<Shows> retVal = new List<Shows>();

            try
            {
                ShowsBL shows = new ShowsBL(_connString);
                tblShows = shows.GetShowsByClub_ID_And_Show_Year_ID(club_ID, show_Year_ID);

                if (tblShows != null && tblShows.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShows.Rows)
                    {
                        Shows show = new Shows(_connString, Utils.DBNullToGuid(row["Show_ID"]));
                        retVal.Add(show);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Shows> GetShowsByShow_Type_ID(int show_Type_ID)
        {
            List<Shows> retVal = new List<Shows>();

            try
            {
                ShowsBL shows = new ShowsBL(_connString);
                tblShows = shows.GetShowsByShow_Type_ID(show_Type_ID);

                if (tblShows != null && tblShows.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShows.Rows)
                    {
                        Shows show = new Shows(_connString, Utils.DBNullToGuid(row["Show_ID"]));
                        retVal.Add(show);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Shows> GetShowsByShow_Year(short show_Year)
        {
            List<Shows> retVal = new List<Shows>();

            try
            {
                ShowsBL shows = new ShowsBL(_connString);
                tblShows = shows.GetShowsByShow_Year(show_Year);

                if (tblShows != null && tblShows.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShows.Rows)
                    {
                        Shows show = new Shows(_connString, Utils.DBNullToGuid(row["Show_ID"]));
                        retVal.Add(show);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Shows> GetShowsByVenue_ID(Guid venue_ID)
        {
            List<Shows> retVal = new List<Shows>();

            try
            {
                ShowsBL shows = new ShowsBL(_connString);
                tblShows = shows.GetShowsByVenue_ID(venue_ID);

                if (tblShows != null && tblShows.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShows.Rows)
                    {
                        Shows show = new Shows(_connString, Utils.DBNullToGuid(row["Show_ID"]));
                        retVal.Add(show);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Shows> GetShowsLikeShow_Name(string show_Name)
        {
            List<Shows> retVal = new List<Shows>();

            try
            {
                ShowsBL shows = new ShowsBL(_connString);
                tblShows = shows.GetShowsLikeShow_Name(show_Name);

                if (tblShows != null && tblShows.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShows.Rows)
                    {
                        Shows show = new Shows(_connString, Utils.DBNullToGuid(row["Show_ID"]));
                        retVal.Add(show);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Show(Guid user_ID)
        {
            Guid? retVal = null;

            try
            {
                ShowsBL shows = new ShowsBL(_connString);
                retVal = (Guid?)shows.Insert_Shows(_club_ID, _show_Year_ID, _show_Type_ID, _venue_ID, _show_Opens,
                    _judging_Commences, _show_Name, _closing_Date, _maxClassesPerDog, _linked_Show, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Show(Guid show_ID, Guid user_ID)
        {
            bool success = false;

            try
            {
                ShowsBL shows = new ShowsBL(_connString);
                success = shows.Update_Shows(show_ID, _club_ID, _show_Year_ID, _show_Type_ID, _venue_ID, _show_Opens,
                    _judging_Commences, _show_Name, _closing_Date, _entries_Complete, _judges_Allocated, _split_Classes,
                    _running_Orders_Allocated, _ring_Numbers_Allocated, _maxClassesPerDog, _linked_Show, _deleteShow, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return success;
        }
    }
}