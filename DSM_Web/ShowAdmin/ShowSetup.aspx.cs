using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Text;
using BLL;
using System.Configuration;

public partial class ShowAdmin_ShowSetup : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        MessageLabel.Text = string.Empty;
        ReadCommon();
        ShowCommittee();

        if (!string.IsNullOrEmpty(Club_ID))
        {
            //PopulateClub(Club_ID);
            PopulateShowGridView(Club_ID);
            divGetClub.Visible = false;
            divClubDetails.Visible = true;
            divShowDetails.Visible = true;
            divGetVenue.Visible = true;
            divShowList.Visible = true;
            divClassList.Visible = true;
            divAddShow.Visible = true;
            divReset.Visible = true;
        }
        else
        {
            divGetClub.Visible = true;
            divClubDetails.Visible = false;
            divShowDetails.Visible = false;
            divGetVenue.Visible = false;
            divAddGuarantors.Visible = false;
            divShowList.Visible = false;
            divClassList.Visible = false;
            divAddShow.Visible = false;
            divReset.Visible = false;
        }
        if (!string.IsNullOrEmpty(Show_ID))
        {
            //PopulateShow(Show_ID);
            divAddShow.Visible = false;
            divUpdateShow.Visible = true;
            divAddGuarantors.Visible = true;
            divAddClasses.Visible = true;
            PopulateClassGridview(Show_ID);
        }
        else
        {
            divUpdateShow.Visible = false;
            divAddGuarantors.Visible = false;
            divAddClasses.Visible = false;
        }
        if (!string.IsNullOrEmpty(Venue_ID))
        {
            //PopulateVenue(Venue_ID);
            divGetVenue.Visible = false;
            divVenueDetails.Visible = true;
        }
        else
        {
            if (!string.IsNullOrEmpty(Club_ID))
                divGetVenue.Visible = true;
            divVenueDetails.Visible = false;
        }
        if (!string.IsNullOrEmpty(Guarantor_ID))
        {
            divAddGuarantors.Visible = false;
            divGuarantorList.Visible = true;
        }
        else
        {
            if(!string.IsNullOrEmpty(Club_ID))
                divAddGuarantors.Visible = true;
            divGuarantorList.Visible = false;
        }
        if (!Page.IsPostBack)
        {
            PopulateListBoxes();
            if (!string.IsNullOrEmpty(Club_ID))
            {
                PopulateClub(Club_ID);
            }
            if (!string.IsNullOrEmpty(Show_ID))
            {
                PopulateShow(Show_ID);
            }
            if (!string.IsNullOrEmpty(Venue_ID))
            {
                PopulateVenue(Venue_ID);
            }
            if (!string.IsNullOrEmpty(Guarantor_ID) && !string.IsNullOrEmpty(Show_ID))
            {
                PopulateGuarantors(Show_ID, Guarantor_ID);
            }
            PopulateForm();
        }

    }

    private string _show_ID;
    public string Show_ID
    {
        get { return _show_ID; }
        set { _show_ID = value; }
    }

    private string _club_ID;
    public string Club_ID
    {
        get { return _club_ID; }
        set { _club_ID = value; }
    }

    private string _show_Name;
    public string Show_Name
    {
        get { return _show_Name; }
        set { _show_Name = value; }
    }

    private string _show_Year_ID;
    public string Show_Year_ID
    {
        get { return _show_Year_ID; }
        set { _show_Year_ID = value; }
    }

    private string _show_Type_ID;
    public string Show_Type_ID
    {
        get { return _show_Type_ID; }
        set { _show_Type_ID = value; }
    }

    private string _venue_ID;
    public string Venue_ID
    {
        get { return _venue_ID; }
        set { _venue_ID = value; }
    }

    private string _show_Opens;
    public string Show_Opens
    {
        get { return _show_Opens; }
        set { _show_Opens = value; }
    }

    private string _judging_Commences;
    public string Judging_Commences
    {
        get { return _judging_Commences; }
        set { _judging_Commences = value; }
    }

    private string _closing_Date;
    public string Closing_Date
    {
        get { return _closing_Date; }
        set { _closing_Date = value; }
    }

    private string _guarantor_ID;
    public string Guarantor_ID
    {
        get { return _guarantor_ID; }
        set { _guarantor_ID = value; }
    }

    private string _chairman_ID;
    public string Chairman_ID
    {
        get { return _chairman_ID; }
        set { _chairman_ID = value; }
    }

    private string _secretary_ID;
    public string Secretary_ID
    {
        get { return _secretary_ID; }
        set { _secretary_ID = value; }
    }

    private string _treasurer_ID;
    public string Treasurer_ID
    {
        get { return _treasurer_ID; }
        set { _treasurer_ID = value; }
    }

    private string _committee1_ID;
    public string Committee1_ID
    {
        get { return _committee1_ID; }
        set { _committee1_ID = value; }
    }

    private string _committee2_ID;
    public string Committee2_ID
    {
        get { return _committee2_ID; }
        set { _committee2_ID = value; }
    }

    private string _committee3_ID;
    public string Committee3_ID
    {
        get { return _committee3_ID; }
        set { _committee3_ID = value; }
    }

    private string _maxClassesPerDog;
    public string MaxClassesPerDog
    {
        get { return _maxClassesPerDog; }
        set { _maxClassesPerDog = value; }
    }

    protected void btnGetClub_Click(object sender, EventArgs e)
    {
        Common.Reset();
        ClearEntryFields();
        string returnChars = Common.AppendReturnChars(Request.QueryString, "sus");
        Server.Transfer("~/ShowAdmin/ClubSetup.aspx?" + returnChars);
    }

    private void PopulateListBoxes()
    {
        ShowTypes showTypes = new ShowTypes(_connString);
        List<ShowTypes> lkpShowTypes;
        lkpShowTypes = showTypes.GetShow_Types();
        lstShowTypes.DataSource = lkpShowTypes;
        lstShowTypes.DataBind();

        ShowYears showYears = new ShowYears(_connString);
        List<ShowYears> lkpShowYears;
        lkpShowYears = showYears.GetShow_Years();
        lstShowYears.DataSource = lkpShowYears;
        lstShowYears.DataBind();
    }

    private void PopulateShow(string show_ID)
    {
        Guid newShow_ID = new Guid(show_ID);
        Shows show = new Shows(_connString, newShow_ID);
        Show_Year_ID = show.Show_Year_ID.ToString();
        lstShowYears.SelectedValue = Show_Year_ID;
        Show_Type_ID = show.Show_Type_ID.ToString();
        lstShowTypes.SelectedValue = Show_Type_ID;
        Show_Name = show.Show_Name;
        txtShowName.Text = Show_Name;
        string format = "yyy-MM-dd hh:mm";
        Show_Opens = DateTime.Parse(show.Show_Opens.ToString()).ToString(format);
        txtShowDateTime.Text = Show_Opens;
        Judging_Commences = DateTime.Parse(show.Judging_Commences.ToString()).ToString(format);
        txtJudgingDateTime.Text = Judging_Commences;
        if (show.Closing_Date != null)
        {
            format = "yyy-MM-dd";
            Closing_Date = DateTime.Parse(show.Closing_Date.ToString()).ToString(format);
            txtCloseDateTime.Text = Closing_Date;
        }
        MaxClassesPerDog = show.MaxClassesPerDog.ToString();
        txtMaxClassesPerDog.Text = MaxClassesPerDog;
        divAddShow.Visible = false;
        divUpdateShow.Visible = true;
        divAddClasses.Visible = true;
        //StoreCommon();
    }

    private void PopulateClub(string club_ID)
    {
        Guid newClub_ID = new Guid(club_ID);
        Clubs club = new Clubs(_connString, newClub_ID);

        txtClubLongName.Text = club.Club_Long_Name;
        divGetClub.Visible = false;
        divClubDetails.Visible = true;
    }

    private void PopulateVenue(string venue_ID)
    {
        Guid newVenue_ID = new Guid(venue_ID);
        Venues venue = new Venues(_connString, newVenue_ID);

        txtVenueName.Text = venue.Venue_Name;
        divGetVenue.Visible = false;
        divVenueDetails.Visible = true;
    }
    protected void btnGetVenue_Click(object sender, EventArgs e)
    {
        ReadFormFields();
        StoreCommon();
        string returnChars = Common.AppendReturnChars(Request.QueryString, "sus");
        Server.Transfer("~/ShowAdmin/VenueSetup.aspx?" + returnChars);
    }

    protected void btnAddShow_Click(object sender, EventArgs e)
    {
        ReadFormFields();
        StoreCommon();
        if(ValidateShow())
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            if (!string.IsNullOrEmpty(Club_ID))
            {
                Guid club_ID = new Guid(Club_ID);
                Guid venue_ID = new Guid(Venue_ID);

                Shows show = new Shows(_connString);
                show.Club_ID = club_ID;
                show.Show_Year_ID = Convert.ToInt32(lstShowYears.SelectedValue);
                show.Show_Type_ID = Convert.ToInt32(lstShowTypes.SelectedValue);
                show.Venue_ID = venue_ID;
                show.Show_Name = txtShowName.Text;
                show.Show_Opens = DateTime.Parse(Request.Form[txtShowDateTime.UniqueID]);
                show.Judging_Commences = DateTime.Parse(Request.Form[txtJudgingDateTime.UniqueID]);
                show.Closing_Date = DateTime.Parse(Request.Form[txtCloseDateTime.UniqueID]);
                short res;
                if (short.TryParse(txtMaxClassesPerDog.Text, out res))
                    show.MaxClassesPerDog = res;

                Guid? show_ID = show.Insert_Show(user_ID);

                if (show_ID != null)
                {
                    Show_ID = show_ID.ToString();
                    Common.Show_ID = Show_ID;
                    MessageLabel.Text = "The show was added successfully";
                    //ClearEntryFields();
                    PopulateShowGridView(Club_ID);
                    if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                    {
                        DivReturn.Visible = true;
                        divAddClasses.Visible = true;
                    }
                }
            }
        }
    }

    protected void btnUpdateShow_Click(object sender, EventArgs e)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        ReadFormFields();
        if (!string.IsNullOrEmpty(Show_ID))
        {
            Guid show_ID = new Guid(Show_ID);
            Guid club_ID = new Guid(Club_ID);
            Guid venue_ID = new Guid(Venue_ID);

            if (ValidateShow())
            {
                Shows show = new Shows(_connString, show_ID);
                if (HasChanges(show))
                {
                    show.Club_ID = club_ID;
                    show.Show_Year_ID = Convert.ToInt32(lstShowYears.SelectedValue);
                    show.Show_Type_ID = Convert.ToInt32(lstShowTypes.SelectedValue);
                    show.Venue_ID = venue_ID;
                    show.Show_Name = txtShowName.Text;
                    show.Show_Opens = DateTime.Parse(Request.Form[txtShowDateTime.UniqueID]);
                    show.Judging_Commences = DateTime.Parse(Request.Form[txtJudgingDateTime.UniqueID]);
                    show.Closing_Date = DateTime.Parse(Request.Form[txtCloseDateTime.UniqueID]);
                    short res;
                    if (short.TryParse(txtMaxClassesPerDog.Text, out res))
                        show.MaxClassesPerDog = res;

                    if (show.Update_Show(show_ID, user_ID))
                    {
                        MessageLabel.Text = "The show was updated successfully";
                        PopulateShowGridView(Club_ID);
                        if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                        {
                            DivReturn.Visible = true;
                            divAddClasses.Visible = true;
                        }
                    }
                }
                else
                {
                    MessageLabel.Text = "Update cancelled as no changes have been made.";
                }
            }
        }
    }
    private bool HasChanges(Shows show)
    {
        bool Changed = false;

        if (show.Show_Year_ID.ToString() != lstShowYears.SelectedValue)
            Changed = true;
        if (show.Show_Type_ID.ToString() != lstShowTypes.SelectedValue)
            Changed = true;
        if (show.Venue_ID.ToString() != Venue_ID)
            Changed = true;
        if (show.Show_Opens != DateTime.Parse(Request.Form[txtShowDateTime.UniqueID]))
            Changed = true;
        if (show.Judging_Commences != DateTime.Parse(Request.Form[txtJudgingDateTime.UniqueID]))
            Changed = true;
        if (show.Closing_Date != DateTime.Parse(Request.Form[txtCloseDateTime.UniqueID]))
            Changed = true;
        short res;
        if (short.TryParse(MaxClassesPerDog, out res))
        {
            if (show.MaxClassesPerDog != short.Parse(MaxClassesPerDog))
                Changed = true;
        }
        else
        {
            if (res == 0)
                Changed = true;
        }

        return Changed;
    }
    private bool ValidateShow()
    {
        short outNo;
        bool valid = true;

        if (string.IsNullOrEmpty(Club_ID))
        {
            MessageLabel.Text = "You must specify the Club.";
            valid = false;
        }
        else if (string.IsNullOrEmpty(Venue_ID))
        {
            MessageLabel.Text = "You must specify the Venue.";
            valid = false;
        }
        else if (short.Parse(Show_Type_ID) == Constants.NONE)
        {
            MessageLabel.Text = "You must select the Show Type.";
            valid = false;
        }
        else if (string.IsNullOrEmpty(Show_Name))
        {
            MessageLabel.Text = "You must specify the Show Name.";
            valid = false;
        }
        else if (string.IsNullOrEmpty(Show_Opens))
        {
            MessageLabel.Text = "You must specify the Show Opening Date and Time.";
            valid = false;
        }
        else if (string.IsNullOrEmpty(Judging_Commences))
        {
            MessageLabel.Text = "You must specify the Time that Judging Commences.";
            valid = false;
        }
        else if (string.IsNullOrEmpty(Closing_Date))
        {
            MessageLabel.Text = "You must specify the Entry Closing Date.";
            valid = false;
        }
        else if (string.IsNullOrEmpty(MaxClassesPerDog))
        {
            MessageLabel.Text = "You must specify the maximum number of classes a dog can enter";
            valid = false;
        }
        else if (!short.TryParse(MaxClassesPerDog, out outNo))
        {
            MessageLabel.Text = "The value for Maximun Number of Classes per Dog is not valid.";
            valid = false;
        }

        return valid;
    }

    private void ClearEntryFields()
    {
        //Common.Show_ID = null;
        //Common.Show_Name = null;
        //Common.Show_Opens = null;
        //Common.Judging_Commences = null;
        //Common.Closing_Date = null;
        //Common.Venue_ID = null;
        //Common.Guarantor_ID = null;
        Club_ID = null;
        Show_ID = null;
        Show_Name = null;
        Show_Opens = null;
        Judging_Commences = null;
        Closing_Date = null;
        Venue_ID = null;
        Guarantor_ID = null;
        txtClubLongName.Text = string.Empty;
        lstShowYears.SelectedValue = "1";
        lstShowTypes.SelectedValue = "1";
        txtVenueName.Text = string.Empty;
        txtShowName.Text = string.Empty;
        txtShowDateTime.Text = string.Empty;
        txtJudgingDateTime.Text = string.Empty;
        txtCloseDateTime.Text = string.Empty;
        txtMaxClassesPerDog.Text = string.Empty;
        StoreCommon();
        PopulateForm();
    }

    private void ReadFormFields()
    {
        Show_Year_ID = lstShowYears.SelectedValue;
        Show_Type_ID = lstShowTypes.SelectedValue;
        Show_Name = txtShowName.Text;
        Show_Opens = Request.Form[txtShowDateTime.UniqueID];
        Judging_Commences = Request.Form[txtJudgingDateTime.UniqueID];
        Closing_Date = Request.Form[txtCloseDateTime.UniqueID];
        MaxClassesPerDog = txtMaxClassesPerDog.Text;
    }

    private void PopulateForm()
    {
        lstShowYears.SelectedValue = Show_Year_ID;
        lstShowTypes.SelectedValue = Show_Type_ID;
        txtShowName.Text = Show_Name;
        txtShowDateTime.Text = Show_Opens;
        txtJudgingDateTime.Text = Judging_Commences;
        txtCloseDateTime.Text = Closing_Date;
        txtMaxClassesPerDog.Text = MaxClassesPerDog;
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        ClearEntryFields();
        Venue_ID = null;
        Response.Redirect(Request.ServerVariables["URL"]);
    }
    protected void btnAddClasses_Click(object sender, EventArgs e)
    {
        ReadFormFields();
        StoreCommon();
        string returnChars = Common.AppendReturnChars(Request.QueryString, "sus");
        Server.Transfer("~/ShowAdmin/AddClasses.aspx?" + returnChars);
    }

    private void PopulateShowGridView(string club_ID)
    {
        Guid Club_ID = new Guid(club_ID);
        Shows show = new Shows(_connString);
        List<Shows> tblShows = show.GetShowsByClub_ID(Club_ID);
        ShowGridView.DataSource = tblShows;
        ShowGridView.DataBind();
    }

    protected void ShowGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        divAddShow.Visible = false;

        GridViewRow row = ShowGridView.SelectedRow;
        string s_id = ShowGridView.DataKeys[row.RowIndex]["Show_ID"].ToString();
        string c_id = ShowGridView.DataKeys[row.RowIndex]["Club_ID"].ToString();
        string v_id = ShowGridView.DataKeys[row.RowIndex]["Venue_ID"].ToString();
        Show_ID = s_id;
        Common.Show_ID = Show_ID;
        Club_ID = c_id;
        Common.Club_ID = Club_ID;
        Venue_ID = v_id;
        Common.Venue_ID = Venue_ID;

        PopulateClub(Club_ID);
        PopulateShowGridView(Club_ID);
        PopulateVenue(Venue_ID);
        PopulateShow(Show_ID);
        PopulateClassGridview(Show_ID);
        PopulateGuarantors(Show_ID, null);
        PopulateForm();

        DivReturn.Visible = true;
    }

    private void PopulateClassGridview(string show_ID)
    {
        bool valid = false;

        if (!string.IsNullOrEmpty(show_ID))
        {
            valid = true;
            if (valid)
            {
                if (!string.IsNullOrEmpty(show_ID))
                {
                    Guid newShow_ID = new Guid(show_ID);
                    ShowEntryClasses showEntryClasses = new ShowEntryClasses(_connString);
                    List<ShowEntryClasses> tblShowEntryClasses;
                    tblShowEntryClasses = showEntryClasses.GetShow_Entry_ClassesByShow_ID(newShow_ID);
                    ClassGridView.DataSource = tblShowEntryClasses;
                    ClassGridView.DataBind();
                }
            }
            divClassList.Visible = valid;
        }
    }

    private void StoreCommon()
    {
        Common.Club_ID = Club_ID;
        Common.Venue_ID = Venue_ID;
        Common.Show_ID = Show_ID;
        Common.Show_Year_ID = Show_Year_ID;
        Common.Show_Type_ID = Show_Type_ID;
        Common.Show_Name = Show_Name;
        Common.Show_Opens = Show_Opens;
        Common.Judging_Commences = Judging_Commences;
        Common.Closing_Date = Closing_Date;
        Common.Chairman_ID = Chairman_ID;
        Common.Treasurer_ID = Treasurer_ID;
        Common.Secretary_ID = Secretary_ID;
        Common.Committee1_ID = Committee1_ID;
        Common.Committee2_ID = Committee2_ID;
        Common.Committee3_ID = Committee3_ID;
        Common.Guarantor_ID = Guarantor_ID;
        Common.MaxClassesPerDog = MaxClassesPerDog;
    }
    private void ReadCommon()
    {
        Club_ID = Common.Club_ID;
        Venue_ID = Common.Venue_ID;
        Show_ID = Common.Show_ID;
        Show_Name = Common.Show_Name;
        Show_Year_ID = Common.Show_Year_ID;
        Show_Type_ID = Common.Show_Type_ID;
        Show_Opens = Common.Show_Opens;
        Judging_Commences = Common.Judging_Commences;
        Closing_Date = Common.Closing_Date;
        Chairman_ID = Common.Chairman_ID;
        Secretary_ID = Common.Secretary_ID;
        Treasurer_ID = Common.Treasurer_ID;
        Committee1_ID = Common.Committee1_ID;
        Committee2_ID = Common.Committee2_ID;
        Committee3_ID = Common.Committee3_ID;
        Guarantor_ID = Common.Guarantor_ID;
        MaxClassesPerDog = Common.MaxClassesPerDog;
    }

    protected void PopulateChairman()
    {
        if (!string.IsNullOrEmpty(Chairman_ID))
        {
            Guid person_ID = new Guid(Chairman_ID);
            People person = new People(_connString, person_ID);
            txtChairman.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
        }
    }

    protected void PopulateSecretary()
    {
        if (!string.IsNullOrEmpty(Secretary_ID))
        {
            Guid person_ID = new Guid(Secretary_ID);
            People person = new People(_connString, person_ID);
            txtSecretary.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
        }
    }

    protected void PopulateTreasurer()
    {
        if (!string.IsNullOrEmpty(Treasurer_ID))
        {
            Guid person_ID = new Guid(Treasurer_ID);
            People person = new People(_connString, person_ID);
            txtTreasurer.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
        }
    }

    protected void PopulateCommittee1()
    {
        if (!string.IsNullOrEmpty(Committee1_ID))
        {
            Guid person_ID = new Guid(Committee1_ID);
            People person = new People(_connString, person_ID);
            txtCommittee1.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
        }
    }

    protected void PopulateCommittee2()
    {
        if (!string.IsNullOrEmpty(Committee2_ID))
        {
            Guid person_ID = new Guid(Committee2_ID);
            People person = new People(_connString, person_ID);
            txtCommittee2.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
        }
    }

    protected void PopulateCommittee3()
    {
        if (!string.IsNullOrEmpty(Committee3_ID))
        {
            Guid person_ID = new Guid(Committee3_ID);
            People person = new People(_connString, person_ID);
            txtCommittee3.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
        }
    }

    private void PopulateGuarantors(string show_ID, string guarantor_ID)
    {
        Guid newShow_ID = new Guid(show_ID);
        Shows show = new Shows(_connString, newShow_ID);
        List<Guarantors> tblGuarantors = null;
        if (!string.IsNullOrEmpty(guarantor_ID))
        {
            Guid newGuarantor_ID = new Guid(guarantor_ID);
            Guarantors guarantor = new Guarantors(_connString, newGuarantor_ID);
            tblGuarantors = guarantor.GetGuarantorsByGuarantor_ID(newGuarantor_ID);
        }
        else
        {
            Guarantors guarantor = new Guarantors(_connString);
            tblGuarantors = guarantor.GetGuarantorsByShow_ID(newShow_ID);
        }
        if (tblGuarantors.Count > 0)
        {
            Guarantor_ID = tblGuarantors[0].Guarantor_ID.ToString();
            Common.Guarantor_ID = Guarantor_ID;
            Chairman_ID = tblGuarantors[0].Chairman_Person_ID.ToString();
            Common.Chairman_ID = Chairman_ID;
            PopulateChairman();
            Secretary_ID = tblGuarantors[0].Secretary_Person_ID.ToString();
            Common.Secretary_ID = Secretary_ID;
            PopulateSecretary();
            Treasurer_ID = tblGuarantors[0].Treasurer_Person_ID.ToString();
            Common.Treasurer_ID = Treasurer_ID;
            PopulateTreasurer();
            if (show.Show_Type_ID == Constants.CHAMPIONSHIP)
            {

                if (!tblGuarantors[0].IsCommittee1_Person_IDNull)
                {
                    Committee1_ID = tblGuarantors[0].Committee1_Person_ID.ToString();
                    Common.Committee1_ID = Committee1_ID;
                    PopulateCommittee1();
                }
                if (!tblGuarantors[0].IsCommittee2_Person_IDNull)
                {
                    Committee2_ID = tblGuarantors[0].Committee2_Person_ID.ToString();
                    Common.Committee2_ID = Committee2_ID;
                    PopulateCommittee2();
                }
                if (!tblGuarantors[0].IsCommittee3_Person_IDNull)
                {
                    Committee3_ID = tblGuarantors[0].Committee3_Person_ID.ToString();
                    Common.Committee3_ID = Committee3_ID;
                    PopulateCommittee3();
                }
            }
            divAddGuarantors.Visible = false;
            divGuarantorList.Visible = true;
            ShowCommittee();
            Common.GuarantorsPopulated = true;
        }
    }

    protected void ClassGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        string sec_id = ClassGridView.DataKeys[e.RowIndex]["Show_Entry_Class_ID"].ToString();
        Guid Show_Entry_Class_ID = new Guid(sec_id);
        ShowEntryClasses showEntryClasses = new ShowEntryClasses(_connString);
        showEntryClasses.DeleteShowEntryClass = true;
        if (showEntryClasses.Update_Show_Entry_Class(Show_Entry_Class_ID, user_ID))
        {
            PopulateClassGridview(Show_ID);
        }
    }

    private void ShowCommittee()
    {
        if (!string.IsNullOrEmpty(Show_ID))
        {
            Guid show_ID = new Guid(Show_ID);
            Shows show = new Shows(_connString, show_ID);
            if (show.Show_Type_ID == Constants.CHAMPIONSHIP)
            {
                TableRowC1.Visible = true;
                TableRowC2.Visible = true;
                TableRowC3.Visible = true;
            }
            else
            {
                TableRowC1.Visible = false;
                TableRowC2.Visible = false;
                TableRowC3.Visible = false;
            }
        }
    }

    protected void btnAddGuarantors_Click(object sender, EventArgs e)
    {
        ReadFormFields();
        StoreCommon();
        string returnChars = Common.AppendReturnChars(Request.QueryString, "sus");
        Server.Transfer("~/ShowAdmin/Guarantors.aspx?" + returnChars);
    }
}