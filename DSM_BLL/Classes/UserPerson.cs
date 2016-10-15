using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class UserPerson
    {
        private string _connString = "";

        private DataTable lnkUserPerson = null;

        private Guid _user_Person_ID;
        public Guid User_Person_ID
        {
            get { return _user_Person_ID; }
            set { _user_Person_ID = value; }
        }
        private Guid _user_ID;
        public Guid User_ID
        {
            get { return _user_ID; }
            set { _user_ID = value; }
        }

        private Guid _person_ID;
        public Guid Person_ID
        {
            get { return _person_ID; }
            set { _person_ID = value; }
        }

        private bool _deleteUserPerson = false;
        public bool DeleteUserPerson
        {
            get { return _deleteUserPerson; }
            set { _deleteUserPerson = value; }
        }

        public UserPerson(string connString)
        {
            _connString = connString;
        }

        public UserPerson(string connString, Guid user_Person_ID)
        {
            _connString = connString;

            try
            {
                UserPersonBL userPerson = new UserPersonBL(_connString);
                lnkUserPerson = userPerson.GetUser_PersonByUser_Person_ID(user_Person_ID);
                DataRow row = lnkUserPerson.Rows[0];

                _user_Person_ID = user_Person_ID;
                _user_ID = Utils.DBNullToGuid(row["User_ID"]);
                _person_ID = Utils.DBNullToGuid(row["Person_ID"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<UserPerson> GetUser_PersonByUser_ID(Guid user_ID)
        {
            List<UserPerson> retVal = new List<UserPerson>();

            try
            {
                UserPersonBL person = new UserPersonBL(_connString);
                lnkUserPerson = person.GetUser_PersonByUser_ID(user_ID);

                if (lnkUserPerson != null && lnkUserPerson.Rows.Count > 0)
                {
                    foreach (DataRow row in lnkUserPerson.Rows)
                    {
                        UserPerson userPerson = new UserPerson(_connString, Utils.DBNullToGuid(row["User_Person_ID"]));
                        retVal.Add(userPerson);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<UserPerson> GetUser_PersonByPerson_ID(Guid person_ID)
        {
            List<UserPerson> retVal = new List<UserPerson>();

            try
            {
                UserPersonBL person = new UserPersonBL(_connString);
                lnkUserPerson = person.GetUser_PersonByPerson_ID(person_ID);

                if (lnkUserPerson != null && lnkUserPerson.Rows.Count > 0)
                {
                    foreach (DataRow row in lnkUserPerson.Rows)
                    {
                        UserPerson userPerson = new UserPerson(_connString, Utils.DBNullToGuid(row["User_Person_ID"]));
                        retVal.Add(userPerson);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_User_Person(Guid userID)
        {
            Guid? retVal = null;

            try
            {
                UserPersonBL userPerson = new UserPersonBL(_connString);
                retVal = (Guid?)userPerson.Insert_User_Person(_user_ID, _person_ID, userID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_User_Person(Guid original_ID, Guid userID)
        {
            bool retVal = false;

            try
            {
                UserPersonBL userPerson = new UserPersonBL(_connString);
                retVal = userPerson.Update_User_Person(original_ID, User_ID, Person_ID, DeleteUserPerson, userID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}