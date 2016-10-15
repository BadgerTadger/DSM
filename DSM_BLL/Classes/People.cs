using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class People
    {
        private string _connString = "";

        private DataTable tblPeople = null;

        private Guid _person_ID;
        public Guid Person_ID
        {
            get { return _person_ID; }
            set { _person_ID = value; }
        }

        private string _person_Title = null;
        public string Person_Title
        {
            get { return _person_Title; }
            set { _person_Title = value; }
        }

        private string _person_Surname = null;
        public string Person_Surname
        {
            get { return _person_Surname; }
            set { _person_Surname = value; }
        }

        private string _person_Forename = null;
        public string Person_Forename
        {
            get { return _person_Forename; }
            set { _person_Forename = value; }
        }

        private Guid? _address_ID = null;
        public Guid? Address_ID
        {
            get { return _address_ID; }
            set { _address_ID = value; }
        }

        private string _person_Mobile = null;
        public string Person_Mobile
        {
            get { return _person_Mobile; }
            set { _person_Mobile = value; }
        }

        private string _person_Landline = null;
        public string Person_Landline
        {
            get { return _person_Landline; }
            set { _person_Landline = value; }
        }

        private string _person_Email = null;
        public string Person_Email
        {
            get { return _person_Email; }
            set { _person_Email = value; }
        }

        private long _person_OE_Owner_ID = 0;
        public long Person_OE_Owner_ID
        {
            get { return _person_OE_Owner_ID; }
            set { _person_OE_Owner_ID = value; }
        }
        
        private string _person_FullName;
        public string Person_FullName
        {
            get
            {
                string title = null;
                string forename = null;
                string surname = null;
                if (!string.IsNullOrEmpty(Person_Title))
                {
                    title = Person_Title + " ";
                }
                if (!string.IsNullOrEmpty(Person_Forename))
                {
                    forename = Person_Forename + " ";
                }
                if (!string.IsNullOrEmpty(Person_Surname))
                {
                    surname = Person_Surname;
                }
                _person_FullName = string.Format("{0}{1}{2}", title, forename, surname);
                return _person_FullName;
            }
        }

        private bool _deletePerson = false;
        public bool DeletePerson
        {
            get { return _deletePerson; }
            set { _deletePerson = value; }
        }

        public People(string connString)
        {
            _connString = connString;
        }

        public People(string connString, Guid person_ID)
        {
            _connString = connString;

            try
            {
                PeopleBL people = new PeopleBL(_connString);
                tblPeople = people.GetPersonByPerson_ID(person_ID);
                DataRow row = tblPeople.Rows[0];

                _person_ID = person_ID;
                _person_Title = Utils.DBNullToString(row["Person_Title"]);
                _person_Surname = Utils.DBNullToString(row["Person_Surname"]);
                _person_Forename = Utils.DBNullToString(row["Person_Forename"]);
                _address_ID = Utils.DBNullToGuid(row["Address_ID"]);
                _person_Mobile = Utils.DBNullToString(row["Person_Mobile"]);
                _person_Landline = Utils.DBNullToString(row["Person_Landline"]);
                _person_Email = Utils.DBNullToString(row["Person_Email"]);
                _person_OE_Owner_ID = Utils.DBNullToLong(row["Person_OE_Owner_ID"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<People> GetPeople()
        {
            List<People> retVal = new List<People>();

            try
            {
                PeopleBL people = new PeopleBL(_connString);
                tblPeople = people.GetPeople();

                if (tblPeople != null && tblPeople.Rows.Count > 0)
                {
                    foreach (DataRow row in tblPeople.Rows)
                    {
                        People person = new People(_connString, Utils.DBNullToGuid(row["Person_ID"]));
                        retVal.Add(person);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<People> GetPeopleByAddress_ID(Guid address_ID)
        {
            List<People> retVal = new List<People>();

            try
            {
                PeopleBL people = new PeopleBL(_connString);
                tblPeople = people.GetPeopleByAddress_ID(address_ID);

                if (tblPeople != null && tblPeople.Rows.Count > 0)
                {
                    foreach (DataRow row in tblPeople.Rows)
                    {
                        People person = new People(_connString, Utils.DBNullToGuid(row["Person_ID"]));
                        retVal.Add(person);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<People> GetPeopleByPerson_Forename(string person_Forename)
        {
            List<People> retVal = new List<People>();

            try
            {
                PeopleBL people = new PeopleBL(_connString);
                tblPeople = people.GetPeopleByPerson_Forename(person_Forename);

                if (tblPeople != null && tblPeople.Rows.Count > 0)
                {
                    foreach (DataRow row in tblPeople.Rows)
                    {
                        People person = new People(_connString, Utils.DBNullToGuid(row["Person_ID"]));
                        retVal.Add(person);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<People> GetPeopleByPerson_Surname(string person_Surname)
        {
            List<People> retVal = new List<People>();

            try
            {
                PeopleBL people = new PeopleBL(_connString);
                tblPeople = people.GetPeopleByPerson_Surname(person_Surname);

                if (tblPeople != null && tblPeople.Rows.Count > 0)
                {
                    foreach (DataRow row in tblPeople.Rows)
                    {
                        People person = new People(_connString, Utils.DBNullToGuid(row["Person_ID"]));
                        retVal.Add(person);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<People> GetPeopleBySurnameForenameEmail(string person_Surname, string person_Forename, string person_Email)
        {
            List<People> retVal = new List<People>();

            try
            {
                PeopleBL people = new PeopleBL(_connString);
                tblPeople = people.GetPeopleBySurnameForenameEmail(person_Surname, person_Forename, person_Email);

                if (tblPeople != null && tblPeople.Rows.Count > 0)
                {
                    foreach (DataRow row in tblPeople.Rows)
                    {
                        People person = new People(_connString, Utils.DBNullToGuid(row["Person_ID"]));
                        retVal.Add(person);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Title> GetTitleList()
        {
            List<Title> titleList = new List<Title>();

            try
            {
                PeopleBL people = new PeopleBL(_connString);
                DataTable tblTitle = new DataTable();

                tblTitle = people.GetTitleList();

                if(tblTitle != null && tblTitle.Rows.Count > 0)
                {
                    titleList.Add(new Title() { Name = "", Value = "" });
                    foreach (DataRow row in tblTitle.Rows)
                    {
                        titleList.Add(new Title() { Name = Utils.DBNullToString(row["Person_Title"]), Value = Utils.DBNullToString(row["Person_Title"]) });
                    }
                }
            }
            catch (Exception ex)
            {                
                throw ex;
            }

            return titleList;
        }

        public Guid? Insert_Person(Guid user_ID)
        {
            Guid? retVal = null;
            try
            {
                PeopleBL people = new PeopleBL(_connString);
                retVal = people.Insert_People(_person_Title, _person_Surname, _person_Forename, _address_ID, _person_Mobile,
                    _person_Landline, _person_Email, user_ID, _person_OE_Owner_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Person(Guid person_ID, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                PeopleBL people = new PeopleBL(_connString);
                retVal = people.Update_People(person_ID, _person_Title, _person_Surname, _person_Forename, _address_ID, _person_Mobile,
                    _person_Landline, _person_Email, _deletePerson, user_ID, _person_OE_Owner_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }

    public class Title
    {
        public string Name { get; set; }
        public string Value { get; set; }
    }
}