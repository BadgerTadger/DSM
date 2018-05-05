using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL;

namespace dsm_win
{
    class RunOnce
    {
        //private const string AdminName = "Daren";
        //private const string AdminRole = "System Administrators";
        //private const string AdminPW = "dc67sss";
        private const string AdminEmail = "darencantrell@gmail.com";
        //private const string PWQuestion = "dog";
        //private const string PWAnswer = "Failey";

        private string _connString = "";

        public RunOnce()
        {
            _connString = Utils.ConnectionString();
            Common.ConnString = _connString;
        }

        public void CreateAdmin()
        {
            Guid newUserId = Program.UserID();

            Addresses address = new Addresses(_connString);
            address.Address_1 = "Grasmere";
            address.Address_2 = "Findon Road";
            address.Address_Town = "Findon";
            address.Address_City = string.Empty;
            address.Address_County = "West Sussex";
            address.Address_Postcode = "BN14 0RD";

            Guid? address_ID = (Guid?)address.Insert_Address(newUserId);

            if (address_ID != null)
            {
                People person = new People(_connString);
                person.Person_Forename = "Daren";
                person.Person_Surname = "Cantrell";
                person.Address_ID = address_ID;
                person.Person_Mobile = "07880 883089";
                person.Person_Landline = "01903 877336";
                person.Person_Email = AdminEmail;

                Guid? person_ID = person.Insert_Person(newUserId);

                if (person_ID != null)
                {
                    UserPerson userPerson = new UserPerson(_connString);
                    userPerson.User_ID = newUserId;
                    userPerson.Person_ID = (Guid)person_ID;

                    Guid? user_Person_ID = userPerson.Insert_User_Person(newUserId);
                }
            }
        }

        public bool FoundSystemAdmin()
        {
            UserPerson user = new UserPerson(_connString);
            List<UserPerson> users = user.GetUser_PersonByUser_ID(Program.UserID()); // .GetUser(AdminName);
            if (users != null && users.Count > 0)
            {
                return true;
            }
            return false;
        }
    }
}
