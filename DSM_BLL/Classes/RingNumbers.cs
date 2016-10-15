using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class RingNumbers
    {
        private string _connString = "";

        private DataTable tblRing_Numbers = null;

        private short _ring_No;
        public short Ring_No
        {
            get { return _ring_No; }
            set { _ring_No = value; }
        }
        private Guid _dog_ID;
        public Guid Dog_ID
        {
            get { return _dog_ID; }
            set { _dog_ID = value; }
        }
        private string _dog_KC_Name = null;
        public string Dog_KC_Name
        {
            get { return _dog_KC_Name; }
            set { _dog_KC_Name = value; }
        }
        private string _person_Forname = null;
        public string Person_Forename
        {
            get { return _person_Forname; }
            set { _person_Forname = value; }
        }
        private string _person_Surname = null;
        public string Person_Surname
        {
            get { return _person_Surname; }
            set { _person_Surname = value; }
        }

        public RingNumbers(string connString)
        {
            _connString = connString;
        }

        public List<RingNumbers> GetRing_Numbers()
        {
            List<RingNumbers> retVal = new List<RingNumbers>();

            try
            {
                RingNumbersBL ringNumbers = new RingNumbersBL(_connString);
                tblRing_Numbers = ringNumbers.GetRing_Numbers();

                if (tblRing_Numbers != null && tblRing_Numbers.Rows.Count > 0)
                {
                    foreach (DataRow row in tblRing_Numbers.Rows)
                    {
                        RingNumbers ringNumber = new RingNumbers(_connString);
                        ringNumber.Ring_No = Utils.DBNullToShort(row["Ring_No"]);
                        ringNumber.Dog_ID = Utils.DBNullToGuid(row["Dog_ID"]);
                        ringNumber.Dog_KC_Name = Utils.DBNullToString(row["Dog_KC_Name"]);
                        ringNumber.Person_Forename = Utils.DBNullToString(row["Person_Forename"]);
                        ringNumber.Person_Surname = Utils.DBNullToString(row["Person_Surname"]);
                        retVal.Add(ringNumber);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool PopulateRing_Numbers(Guid show_ID)
        {
            bool retVal = false;

            try
            {
                RingNumbersBL ringNumbers = new RingNumbersBL(_connString);
                retVal = ringNumbers.PopulateRing_Numbers(show_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}
