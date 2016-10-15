using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using DSM_DATA;


namespace BLL
{
    public class Clubs
    {
        string _connString = "";

        private DataTable tblClubs = null;

        private Guid _club_ID;
        public Guid Club_ID
        {
            get { return _club_ID; }
            set { _club_ID = value; }
        }
        private string _club_Long_Name = null;
        public string Club_Long_Name
        {
            get { return _club_Long_Name; }
            set { _club_Long_Name = value; }
        }

        private string _club_Short_Name = null;
        public string Club_Short_Name
        {
            get { return _club_Short_Name; }
            set { _club_Short_Name = value; }
        }

        private Guid? _club_Contact = null;
        public Guid? Club_Contact
        {
            get { return _club_Contact; }
            set { _club_Contact = value; }
        }

        private bool _deleteClub = false;
        public bool DeleteClub
        {
            get { return _deleteClub; }
            set { _deleteClub = value; }
        }

        public Clubs(string connString)
        {
            _connString = connString;
        }

        public Clubs(string connString, Guid club_ID)
        {
            _connString = connString;

            try
            {
                ClubsBL clubs = new ClubsBL(_connString);
                tblClubs = clubs.GetClubByClub_ID(club_ID);
                DataRow row = tblClubs.Rows[0];

                _club_ID = club_ID;
                _club_Long_Name = Utils.DBNullToString(row["Club_Long_Name"]);
                _club_Short_Name = Utils.DBNullToString(row["Club_Short_Name"]);
                _club_Contact = Utils.DBNullToGuid(row["Club_Contact"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Clubs> GetClubs()
        {
            List<Clubs> retVal = new List<Clubs>();

            try
            {
                ClubsBL clubs = new ClubsBL(_connString);
                tblClubs = clubs.GetClubs();

                if (tblClubs != null && tblClubs.Rows.Count > 0)
                {
                    foreach (DataRow row in tblClubs.Rows)
                    {
                        Clubs club = new Clubs(_connString, Utils.DBNullToGuid(row["Club_ID"]));
                        retVal.Add(club);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Clubs> GetClubsLikeClub_Long_Name(string club_Long_Name)
        {
            List<Clubs> retVal = new List<Clubs>();

            try
            {
                ClubsBL clubs = new ClubsBL(_connString);
                tblClubs = clubs.GetClubsLikeClub_Long_Name(club_Long_Name);

                if (tblClubs != null && tblClubs.Rows.Count > 0)
                {
                    foreach (DataRow row in tblClubs.Rows)
                    {
                        Clubs club = new Clubs(_connString, Utils.DBNullToGuid(row["Club_ID"]));
                        retVal.Add(club);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Clubs> GetClubsLikeClub_Short_Name(string club_Short_Name)
        {
            List<Clubs> retVal = new List<Clubs>();

            try
            {
                ClubsBL clubs = new ClubsBL(_connString);
                tblClubs = clubs.GetClubsLikeClub_Long_Name(club_Short_Name);

                if (tblClubs != null && tblClubs.Rows.Count > 0)
                {
                    foreach (DataRow row in tblClubs.Rows)
                    {
                        Clubs club = new Clubs(_connString, Utils.DBNullToGuid(row["Club_ID"]));
                        retVal.Add(club);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Club(Guid user_ID)
        {
            Guid? retVal = null;

            try
            {
                ClubsBL clubs = new ClubsBL(_connString);
                retVal = clubs.Insert_Clubs(_club_Long_Name, _club_Short_Name, _club_Contact, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Club(Guid club_ID, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                ClubsBL clubs = new ClubsBL(_connString);
                retVal = clubs.Update_Clubs(club_ID, _club_Long_Name, _club_Short_Name, _club_Contact, _deleteClub, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}