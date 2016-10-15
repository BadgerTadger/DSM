using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Configuration;

namespace SSSDogShowManager
{
    public partial class RunOnce : System.Web.UI.Page
    {
        private const string AdminName = "Daren";
        private const string AdminRole = "System Administrators";
        private const string AdminPW = "dc67sss";
        private const string AdminEmail = "darencantrell@gmail.com";
        private const string PWQuestion = "dog";
        private const string PWAnswer = "Failey";

        private string _connString = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
            Common.ConnString = _connString;

            if (!FoundSystemAdmin())
            {
                MembershipCreateStatus outstatus;
                MembershipUser newUser = Membership.CreateUser(AdminName, AdminPW, AdminEmail, PWQuestion, PWAnswer, true, out outstatus);
                if (!Roles.RoleExists(AdminRole))
                {
                    Roles.CreateRole(AdminRole);
                }
                Roles.AddUserToRole(AdminName, AdminRole);

                string strUser_ID = newUser.ProviderUserKey.ToString();
                Guid newUserId = new Guid(strUser_ID);
                //Guid newUserId = (Guid)newUser.ProviderUserKey;

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
                RunOnceMessage.Text = string.Format("System Admin setup correctly {0}", "");
            }
            else
                RunOnceMessage.Text = string.Format("System Admin already setup {0}", "");
        }

        private bool FoundSystemAdmin()
        {
            MembershipUser user = Membership.GetUser(AdminName);
            if (user != null)
                return true;

            return false;
        }
    }
}