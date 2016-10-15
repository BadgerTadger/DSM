using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Configuration;

public partial class ShowAdmin_ClubSetup : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        MessageLabel.Text = string.Empty;

        if (!string.IsNullOrEmpty(Common.Club_Contact_ID))
        {
            Club_Contact_ID = Common.Club_Contact_ID;
            PopulateClubContact(Club_Contact_ID);
            divGetPerson.Visible = false;
            divPersonDetails.Visible = true;
            divNewClub.Visible = true;
        }
        else
        {
            divAddClub.Visible = false;
            divPersonDetails.Visible = false;
            divNewClub.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Club_ID))
        {
            Club_ID = Common.Club_ID;
            divAddClub.Visible = false;
            divUpdateClub.Visible = true;
        }
        else
        {
            divAddClub.Visible = true;
            divUpdateClub.Visible = false;
        }
        if (!Page.IsPostBack)
        {
            DivReturn.Visible = false;


            if (!string.IsNullOrEmpty(Club_ID))
            {
                PopulateClub();
                divAddClub.Visible = false;
                divUpdateClub.Visible = true;
                DivReturn.Visible = true;
            }

            PopulateClubGridView();

            if (!string.IsNullOrEmpty(Common.Club_Long_Name))
            {
                txtClubLongName.Text = Common.Club_Long_Name;
            }
            if (!string.IsNullOrEmpty(Common.Club_Short_Name))
            {
                txtClubShortName.Text = Common.Club_Short_Name;
            }

            string returnChars = Request.QueryString["return"];
            btnReturn.PostBackUrl = Common.ReturnPath(Request.QueryString, returnChars, null);
        }
        if (!string.IsNullOrEmpty(Club_Contact_ID))
        {
            PopulateClubContact(Club_Contact_ID);
        }
    }

    protected void btnGetPerson_Click(object sender, EventArgs e)
    {        
        Common.Club_Long_Name = txtClubLongName.Text;
        Common.Club_Short_Name = txtClubShortName.Text;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "suc");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=cc");
    }

    protected void btnAddClub_Click(object sender, EventArgs e)
    {
        if (ValidateClub())
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            Club_Contact_ID = Common.Club_Contact_ID;

            if (!string.IsNullOrEmpty(Club_Contact_ID))
            {
                Guid person_ID = new Guid(Club_Contact_ID);

                Clubs club = new Clubs(_connString);
                club.Club_Long_Name = txtClubLongName.Text;
                club.Club_Short_Name = txtClubShortName.Text;
                club.Club_Contact = person_ID;

                Guid? club_ID = club.Insert_Club(user_ID);

                if (club_ID != null)
                {
                    Club_ID = club_ID.ToString();
                    Common.Club_ID = Club_ID;
                    PopulateClub();
                    MessageLabel.Text = string.Format("{0} was added successfully", club.Club_Long_Name);
                    divGetPerson.Visible = false;
                    divPersonDetails.Visible = true;
                    divAddClub.Visible = false;
                    divUpdateClub.Visible = true;
                    divNewClub.Visible = true;
                    if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                        DivReturn.Visible = true;
                }
            }
            PopulateClubGridView();
            Common.Club_Contact_ID = null;
        }
    }

    protected void btnUpdateClub_Click(object sender, EventArgs e)
    {
        if (ValidateClub())
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            Club_Contact_ID = Common.Club_Contact_ID;

            if (!string.IsNullOrEmpty(Club_Contact_ID))
            {
                if (HasChanges())
                {
                    Guid club_ID = new Guid(Club_ID);
                    Guid person_ID = new Guid(Club_Contact_ID);

                    Clubs club = new Clubs(_connString, club_ID);
                    club.Club_Long_Name = txtClubLongName.Text;
                    club.Club_Short_Name = txtClubShortName.Text;
                    club.Club_Contact = person_ID;
                    club.DeleteClub = false;
                    bool valid = club.Update_Club(club_ID, user_ID);

                    if (valid)
                    {
                        Club_ID = club_ID.ToString();
                        Common.Club_ID = Club_ID;
                        MessageLabel.Text = string.Format("{0} was updated successfully", club.Club_Long_Name);
                        //ClearEntryFields();
                        if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                            DivReturn.Visible = true;
                    }
                }
                else
                {
                    MessageLabel.Text = "Update cancelled as no changes have been made.";
                }
            }
            PopulateClubGridView();
            Common.Club_Contact_ID = null;
        }
    }
    private bool HasChanges()
    {
        bool Changed=false;

        Guid club_ID = new Guid(Club_ID);
        Guid person_ID = new Guid(Club_Contact_ID);

        Clubs club = new Clubs(_connString, club_ID);
        if(club.Club_Long_Name != txtClubLongName.Text)
            Changed=true;
        if(club.Club_Short_Name != txtClubShortName.Text)
            Changed=true;
        if(club.Club_Contact != person_ID)
            Changed=true;

        return Changed;
    }
    private bool ValidateClub()
    {
        bool valid = true;
        string strClubLongName = txtClubLongName.Text;
        string strClubShortName = txtClubShortName.Text;

        if (string.IsNullOrEmpty(strClubLongName))
        {
            MessageLabel.Text = "You must enter the Club Full Name";
            valid = false;
        }
        else if(string.IsNullOrEmpty(Common.Club_Contact_ID))
        {
            MessageLabel.Text="You must add a Contact";
            valid = false;
        }
        return valid;
    }

    protected void btnClubSearch_Click(object sender, EventArgs e)
    {
        string searchValue = txtClubFilter.Text;
        Clubs club = new Clubs(_connString);
        List<Clubs> tblClubs = null;

        if (ClubSearchType.SelectedValue == "c")
            searchValue = string.Format("%{0}", searchValue);

        switch (ClubFilterBy.SelectedValue)
        {
            case "Club_Long_Name":
                tblClubs = club.GetClubsLikeClub_Long_Name(searchValue);
                break;
            case "Club_Short_Name":
                tblClubs = club.GetClubsLikeClub_Short_Name(searchValue);
                break;
            default:
                tblClubs = club.GetClubs();
                break;
        }

        ClubGridView.DataSource = tblClubs;
        ClubGridView.DataBind();
        txtClubFilter.Text = string.Empty;
        ClubFilterBy.SelectedIndex = -1;
        ClubSearchType.SelectedIndex = -1;
    }

    protected void ClubGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = ClubGridView.SelectedRow;
        string c_id = ClubGridView.DataKeys[row.RowIndex]["Club_ID"].ToString();
        string cc_id = ClubGridView.DataKeys[row.RowIndex]["Club_Contact"].ToString();

        Club_ID = c_id;
        Common.Club_ID = Club_ID;
        Club_Contact_ID = cc_id;
        Common.Club_Contact_ID = Club_Contact_ID;

        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        PopulateClub();
        //Guid club_ID = new Guid(Club_ID);
        //Clubs club = new Clubs(club_ID);
        //Guid person_ID = new Guid(Club_Contact_ID);
        //People person = new People(person_ID);
        //txtClubLongName.Text=club.Club_Long_Name;
        //txtClubShortName.Text=club.Club_Short_Name;
        //txtForename.Text = person.Person_Forename;
        //txtSurname.Text = person.Person_Surname;
        //txtMobile.Text = person.Person_Mobile;
        //txtLandline.Text = person.Person_Landline;
        //txtEmail.Text = person.Person_Email;

        DivReturn.Visible = true;
        divGetPerson.Visible = false;
        divPersonDetails.Visible = true;
        divAddClub.Visible = false;
        divUpdateClub.Visible = true;
        divNewClub.Visible = true;
    }

    private string _club_ID;
    public string Club_ID
    {
        get { return _club_ID; }
        set { _club_ID = value; }
    }

    private string _club_Contact_ID;
    public string Club_Contact_ID
    {
        get { return _club_Contact_ID; }
        set { _club_Contact_ID = value; }
    }

    private void PopulateClub()
    {
        Guid club_ID = new Guid(Club_ID);
        Clubs club = new Clubs(_connString, club_ID);
        txtClubLongName.Text = club.Club_Long_Name;
        txtClubShortName.Text = club.Club_Short_Name;
        PopulateClubContact(club.Club_Contact.ToString());
    }

    private void PopulateClubContact(string person_ID)
    {
        Guid Person_ID = new Guid(person_ID);
        People person = new People(_connString, Person_ID);

        txtTitle.Text = person.Person_Title;
        txtForename.Text = person.Person_Forename;
        txtSurname.Text = person.Person_Surname;
        txtMobile.Text = person.Person_Mobile;
        txtLandline.Text = person.Person_Landline;
        txtEmail.Text = person.Person_Email;
    }

    private void PopulateClubGridView()
    {
        Clubs club = new Clubs(_connString);
        List<Clubs> tblClubs = club.GetClubs();
        ClubGridView.DataSource = tblClubs;
        ClubGridView.DataBind();
    }

    private void ClearEntryFields()
    {
        Common.Reset();
        txtClubLongName.Text = string.Empty;
        txtClubShortName.Text = string.Empty;
        txtTitle.Text = string.Empty;
        txtForename.Text = string.Empty;
        txtSurname.Text = string.Empty;
        txtMobile.Text = string.Empty;
        txtLandline.Text = string.Empty;
        txtEmail.Text = string.Empty;
        divAddClub.Visible = true;
        divGetPerson.Visible = true;
        divPersonDetails.Visible = false;
        divNewClub.Visible = false;
        divUpdateClub.Visible = false;
        DivReturn.Visible = false;
    }

    protected void btnNewClub_Click(object sender, EventArgs e)
    {
        ClearEntryFields();
    }
}