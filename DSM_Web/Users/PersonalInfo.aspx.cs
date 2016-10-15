using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Configuration;

public partial class Users_PersonalInfo : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        MessageLabel.Text = string.Empty;
        GetCommon();

        if (!Page.IsPostBack)
        {
            Guid person_ID;
            if (!string.IsNullOrEmpty(User_Person_ID))
            {
                divUpdateDetails.Visible = false;
            }
            else
            {
                MembershipUser userInfo = Membership.GetUser();
                Guid user_ID = (Guid)userInfo.ProviderUserKey;
                UserPerson userPerson = new UserPerson(_connString);
                List<UserPerson> lnkUserPerson;
                lnkUserPerson = userPerson.GetUser_PersonByUser_ID(user_ID);
                if (lnkUserPerson.Count > 0)
                {
                    Guid? user_Person_ID = (Guid?)lnkUserPerson[0].User_Person_ID;
                    Guid? newPerson_ID = (Guid?)lnkUserPerson[0].Person_ID;
                    if (user_Person_ID != null)
                    {
                        User_Person_ID = user_Person_ID.ToString();
                        Common.User_Person_ID = User_Person_ID;
                    }
                    if (newPerson_ID != null)
                    {
                        Person_ID = newPerson_ID.ToString();
                        Common.New_User_ID = Person_ID;
                    }
                    divUpdateDetails.Visible = false;
                }
            }
            if (!string.IsNullOrEmpty(Person_ID))
            {
                person_ID = new Guid(Person_ID);
                PopulatePerson(person_ID);
            }
            else
            {
                string returnChars = Common.AppendReturnChars(Request.QueryString, "upi");
                Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=nu");
            }
        }
    }
    private string _user_Person_ID;
    public string User_Person_ID
    {
        get { return _user_Person_ID; }
        set { _user_Person_ID = value; }
    }

    private string _person_ID;
    public string Person_ID
    {
        get { return _person_ID; }
        set { _person_ID = value; }
    }
    private void StoreCommon()
    {
        Common.New_User_ID = Person_ID;
        Common.User_Person_ID = User_Person_ID;
    }
    private void GetCommon()
    {
        Person_ID = Common.New_User_ID;
        User_Person_ID = Common.User_Person_ID;
    }
    private void PopulatePerson(Guid person_ID)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;
        txtUsername.Text = userInfo.UserName;
        People person = new People(_connString, person_ID);
        txtUser.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
    }
    protected void btnGetUser_Click(object sender, EventArgs e)
    {
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "upi");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=nu");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(User_Person_ID))
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;
            Guid person_ID = new Guid(Person_ID);

            Guid user_Person_ID = new Guid(User_Person_ID);
            UserPerson userPerson = new UserPerson(_connString, user_Person_ID);
            if (userPerson.Person_ID.ToString() != Person_ID)
            {
                userPerson.User_ID = user_ID;
                userPerson.Person_ID = person_ID;
                bool success = userPerson.Update_User_Person(user_Person_ID, user_ID);
                if (success)
                    MessageLabel.Text = "Updated Successfully.";
            }
            else
            {
                MessageLabel.Text = "No changes made. - Update cancelled.";
            }
        }
        else
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;
            Guid person_ID = new Guid(Person_ID);


            UserPerson userPerson = new UserPerson(_connString);
            userPerson.User_ID = user_ID;
            userPerson.Person_ID = person_ID;
            Guid? user_Person_ID = userPerson.Insert_User_Person(user_ID);
            if (user_Person_ID != null)
            {
                User_Person_ID = user_Person_ID.ToString();
                MessageLabel.Text = "Added Successfully.";
                StoreCommon();
                divUpdateDetails.Visible = false;
            }
        }
    }
}