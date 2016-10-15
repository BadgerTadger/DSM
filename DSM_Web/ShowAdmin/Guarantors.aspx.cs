using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Configuration;

public partial class ShowAdmin_Guarantors : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        ResetMessages();
        ReadCommon();
        ShowCommittee();

        if (!string.IsNullOrEmpty(Club_ID))
            PopulateClub(Club_ID);
        if (!string.IsNullOrEmpty(Show_ID))
        {
            PopulateShow(Show_ID);
            GetGuarantor_IDForShow(Show_ID);
            if (!string.IsNullOrEmpty(Guarantor_ID))
            {
                if (!Common.GuarantorsPopulated)
                {
                    PopulateGuarantors(Show_ID, Guarantor_ID);
                }
                else
                {
                    PopulateChairman();
                    PopulateSecretary();
                    PopulateTreasurer();
                    if (Int32.Parse(Common.Show_Type_ID) == Constants.CHAMPIONSHIP)
                    {
                        PopulateCommittee1();
                        PopulateCommittee2();
                        PopulateCommittee3();
                    }
                }
                divAddGuarantors.Visible = false;
                divUpdateGuarantors.Visible = true;
            }
            else
            {
                PopulateGuarantors(Show_ID, null);
                divAddGuarantors.Visible = true;
                divUpdateGuarantors.Visible = false;
            }
        }

        if (!Page.IsPostBack)
        {
            string returnChars = Request.QueryString["return"];
            btnReturn.PostBackUrl = Common.ReturnPath(Request.QueryString, returnChars, null);
        }
    }

    private string _guarantor_ID;
    public string Guarantor_ID
    {
        get { return _guarantor_ID; }
        set { _guarantor_ID = value; }
    }

    private string _club_ID;
    public string Club_ID
    {
        get { return _club_ID; }
        set { _club_ID = value; }
    }

    private string _show_ID;
    public string Show_ID
    {
        get { return _show_ID; }
        set { _show_ID = value; }
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

    protected void btnGetClub_Click(object sender, EventArgs e)
    {
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/ClubSetup.aspx?" + returnChars);
    }

    protected void btnGetShow_Click(object sender, EventArgs e)
    {
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/ShowSetup.aspx?" + returnChars);
    }

    protected void btnAddChairman_Click(object sender, EventArgs e)
    {
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=c");
    }

    protected void btnChangeChairman_Click(object sender, EventArgs e)
    {
        StoreCommon();
        Common.Person_ID = Chairman_ID;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=c");
    }

    protected void btnAddTreasurer_Click(object sender, EventArgs e)
    {
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=t");
    }

    protected void btnChangeTreasurer_Click(object sender, EventArgs e)
    {
        StoreCommon();
        Common.Person_ID = Treasurer_ID;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=t");        
    }

    protected void btnAddSecretary_Click(object sender, EventArgs e)
    {
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=s");
    }

    protected void btnChangeSecretary_Click(object sender, EventArgs e)
    {
        StoreCommon();
        Common.Person_ID = Secretary_ID;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=s");
    }

    protected void btnAddCommittee1_Click(object sender, EventArgs e)
    {
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=c1");
    }

    protected void btnChangeCommittee1_Click(object sender, EventArgs e)
    {
        StoreCommon();
        Common.Person_ID = Committee1_ID;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=c1");
    }

    protected void btnAddCommittee2_Click(object sender, EventArgs e)
    {
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=c2");
    }

    protected void btnChangeCommittee2_Click(object sender, EventArgs e)
    {
        StoreCommon();
        Common.Person_ID = Committee2_ID;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=c2");
    }

    protected void btnAddCommittee3_Click(object sender, EventArgs e)
    {
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=c3");
    }

    protected void btnChangeCommittee3_Click(object sender, EventArgs e)
    {
        StoreCommon();
        Common.Person_ID = Committee3_ID;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sag");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=c3");
    }

    private void PopulateClub(string club_ID)
    {
        Guid Club_ID = new Guid(club_ID);
        Clubs club = new Clubs(_connString, Club_ID);

        txtClubLongName.Text = club.Club_Long_Name;
        divGetClub.Visible = false;
        divClubDetails.Visible = true;
    }

    private void PopulateShow(string show_ID)
    {
        Guid Show_ID = new Guid(show_ID);
        Shows show = new Shows(_connString, Show_ID);

        txtShowName.Text = show.Show_Name;
        Common.Show_Type_ID = show.Show_Type_ID.ToString();
        divGetShow.Visible = false;
        divShowDetails.Visible = true;
    }

    private void GetGuarantor_IDForShow(string show_ID)
    {
        List<Guarantors> tblGuarantors = null;
        Guid newShow_ID = new Guid(show_ID);
        Guarantors guarantor = new Guarantors(_connString);
        tblGuarantors = guarantor.GetGuarantorsByShow_ID(newShow_ID);
        if (tblGuarantors.Count > 0)
        {
            Guarantor_ID = tblGuarantors[0].Guarantor_ID.ToString();
            Common.Guarantor_ID = Guarantor_ID;
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
            Common.GuarantorsPopulated = true;
        }
    }

    protected void PopulateChairman()
    {
        Chairman_ID = Common.Chairman_ID;
        if (!string.IsNullOrEmpty(Chairman_ID))
        {
            Guid person_ID = new Guid(Chairman_ID);
            People person = new People(_connString, person_ID);
            txtChairman.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
            btnAddChairman.Visible = false;
            btnChangeChairman.Visible = true;
        }
    }

    protected void PopulateSecretary()
    {
        Secretary_ID = Common.Secretary_ID;
        if (!string.IsNullOrEmpty(Secretary_ID))
        {
            Guid person_ID = new Guid(Secretary_ID);
            People person = new People(_connString, person_ID);
            txtSecretary.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
            btnAddSecretary.Visible = false;
            btnChangeSecretary.Visible = true;
        }
    }

    protected void PopulateTreasurer()
    {
        Treasurer_ID = Common.Treasurer_ID;
        if (!string.IsNullOrEmpty(Treasurer_ID))
        {
            Guid person_ID = new Guid(Treasurer_ID);
            People person = new People(_connString, person_ID);
            txtTreasurer.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
            btnAddTreasurer.Visible = false;
            btnChangeTreasurer.Visible = true;
        }
    }

    protected void PopulateCommittee1()
    {
        Committee1_ID = Common.Committee1_ID;
        if (!string.IsNullOrEmpty(Committee1_ID))
        {
            Guid person_ID = new Guid(Committee1_ID);
            People person = new People(_connString, person_ID);
            txtCommittee1.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
            btnAddCommittee1.Visible = false;
            btnChangeCommittee1.Visible = true;
        }
    }

    protected void PopulateCommittee2()
    {
        Committee2_ID = Common.Committee2_ID;
        if (!string.IsNullOrEmpty(Committee2_ID))
        {
            Guid person_ID = new Guid(Committee2_ID);
            People person = new People(_connString, person_ID);
            txtCommittee2.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
            btnAddCommittee2.Visible = false;
            btnChangeCommittee2.Visible = true;
        }
    }

    protected void PopulateCommittee3()
    {
        Committee3_ID = Common.Committee3_ID;
        if (!string.IsNullOrEmpty(Committee3_ID))
        {
            Guid person_ID = new Guid(Committee3_ID);
            People person = new People(_connString, person_ID);
            txtCommittee3.Text = string.Format("{0} {1}", person.Person_Forename, person.Person_Surname);
            btnAddCommittee3.Visible = false;
            btnChangeCommittee3.Visible = true;
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        Common.Reset();
        Club_ID = null;
        Show_ID = null;
        //Class_Name_ID = null;
        Response.Redirect(Request.ServerVariables["URL"]);
    }
    private void StoreCommon()
    {
        if (!string.IsNullOrEmpty(Club_ID))
        {
            Common.Club_ID = Club_ID;
        }
        if (!string.IsNullOrEmpty(Show_ID))
        {
            Common.Show_ID = Show_ID;
        }
        if (!string.IsNullOrEmpty(Chairman_ID))
        {
            Common.Chairman_ID = Chairman_ID;
        }
        if (!string.IsNullOrEmpty(Treasurer_ID))
        {
            Common.Treasurer_ID = Treasurer_ID;
        }
        if (!string.IsNullOrEmpty(Secretary_ID))
        {
            Common.Secretary_ID = Secretary_ID;
        }
        if (!string.IsNullOrEmpty(Committee1_ID))
        {
            Common.Committee1_ID = Committee1_ID;
        }
        if (!string.IsNullOrEmpty(Committee2_ID))
        {
            Common.Committee2_ID = Committee2_ID;
        }
        if (!string.IsNullOrEmpty(Committee3_ID))
        {
            Common.Committee3_ID = Committee3_ID;
        }
    }
    private void ReadCommon()
    {
        if (!string.IsNullOrEmpty(Common.Club_ID))
        {
            Club_ID = Common.Club_ID;
            divGetClub.Visible = false;
            divClubDetails.Visible = true;
        }
        else
        {
            divGetClub.Visible = true;
            divClubDetails.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Show_ID))
        {
            Show_ID = Common.Show_ID;
            divGetShow.Visible = false;
            divShowDetails.Visible = true;
            divGuarantorList.Visible = true;
        }
        else
        {
            divGetShow.Visible = true;
            divShowDetails.Visible = false;
            divGuarantorList.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Chairman_ID))
        {
            PopulateChairman();
        }
        else
        {
            btnAddChairman.Visible = true;
            btnChangeChairman.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Secretary_ID))
        {
            PopulateSecretary();
        }
        else
        {
            btnAddSecretary.Visible = true;
            btnChangeSecretary.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Treasurer_ID))
        {
            PopulateTreasurer();
        }
        else
        {
            btnAddTreasurer.Visible = true;
            btnChangeTreasurer.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Committee1_ID))
        {
            PopulateCommittee1();
        }
        else
        {
            btnAddCommittee1.Visible = true;
            btnChangeCommittee1.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Committee2_ID))
        {
            PopulateCommittee2();
        }
        else
        {
            btnAddCommittee2.Visible = true;
            btnChangeCommittee2.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Committee3_ID))
        {
            PopulateCommittee3();
        }
        else
        {
            btnAddCommittee3.Visible = true;
            btnChangeCommittee3.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Guarantor_ID))
            Guarantor_ID = Common.Guarantor_ID;
    }
    protected void btnAddGuarantors_Click(object sender, EventArgs e)
    {
        Guid show_ID = new Guid(Show_ID);
        Shows show = new Shows(_connString, show_ID);

        if (ValidateGuarantors(show))
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            Guarantors guarantor = new Guarantors(_connString);
            guarantor.Show_ID = show_ID;
            guarantor.Chairman_Person_ID = new Guid(Chairman_ID);
            guarantor.Secretary_Person_ID = new Guid(Secretary_ID);
            guarantor.Treasurer_Person_ID = new Guid(Treasurer_ID);
            if (show.Show_Type_ID == Constants.CHAMPIONSHIP)
            {
                guarantor.Committee1_Person_ID = new Guid(Committee1_ID);
                guarantor.Committee2_Person_ID = new Guid(Committee2_ID);
                guarantor.Committee3_Person_ID = new Guid(Committee3_ID);
            }
            Guid? guarantor_ID;
            guarantor_ID = guarantor.Insert_Guarantor(user_ID);
            if (!string.IsNullOrEmpty(guarantor_ID.ToString()))
            {
                Guarantor_ID = guarantor_ID.ToString();
                Common.Guarantor_ID = Guarantor_ID;
                Common.GuarantorsPopulated = true;
                divAddGuarantors.Visible = false;
                divUpdateGuarantors.Visible = true;
                MessageLabel.Text = "Guarantors added successfully.";
            }
        }
    }

    protected void btnUpdateGuarantors_Click(object sender, EventArgs e)
    {
        Guid show_ID = new Guid(Show_ID);
        Shows show = new Shows(_connString, show_ID);
        if (ValidateGuarantors(show))
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            Guid guarantor_ID = new Guid(Guarantor_ID);
            Guarantors guarantor = new Guarantors(_connString, guarantor_ID);
            if (HasChanges(guarantor, show))
            {
                guarantor.Chairman_Person_ID = new Guid(Chairman_ID);
                guarantor.Secretary_Person_ID = new Guid(Secretary_ID);
                guarantor.Treasurer_Person_ID = new Guid(Treasurer_ID);
                if (show.Show_Type_ID == Constants.CHAMPIONSHIP)
                {
                    guarantor.Committee1_Person_ID = new Guid(Committee1_ID);
                    guarantor.Committee2_Person_ID = new Guid(Committee2_ID);
                    guarantor.Committee3_Person_ID = new Guid(Committee3_ID);
                }
                guarantor.DeleteGuarantor = false;

                if (guarantor.Update_Guarantor(guarantor_ID, user_ID))
                {
                    MessageLabel.Text = "Guarantors updated successfully.";
                    PopulateGuarantors(Show_ID, Guarantor_ID);
                }
            }
            else
            {
                MessageLabel.Text = "Update cancelled as no changes have been made.";
            }
        }
    }

    private bool HasChanges(Guarantors guarantor, Shows show)
    {
        bool Changed = false;

        if (guarantor.Chairman_Person_ID.ToString() != Chairman_ID)
            Changed = true;
        if (guarantor.Secretary_Person_ID.ToString() != Secretary_ID)
            Changed = true;
        if (guarantor.Treasurer_Person_ID.ToString() != Treasurer_ID)
            Changed = true;
        if (show.Show_Type_ID == Constants.CHAMPIONSHIP)
        {
            if (guarantor.Committee1_Person_ID.ToString() != Committee1_ID)
                Changed = true;
            if (guarantor.Committee2_Person_ID.ToString() != Committee2_ID)
                Changed = true;
            if (guarantor.Committee3_Person_ID.ToString() != Committee3_ID)
                Changed = true;
        }


        return Changed;
    }
    private bool ValidateGuarantors(Shows show)
    {
        bool valid = true;
        if (string.IsNullOrEmpty(Chairman_ID))
        {
            MessageChairman.Text = "You must specify the Chairman";
            divMessageChairman.Visible = true;
            valid = false;
        }
        else
            divMessageChairman.Visible = false;

        if (string.IsNullOrEmpty(Secretary_ID))
        {
            MessageSecretary.Text = "You must specify the Secretary";
            divMessageSecretary.Visible = true;
            valid = false;
        }
        else
            divMessageSecretary.Visible = false;

        if (string.IsNullOrEmpty(Treasurer_ID))
        {
            MessageTreasurer.Text = "You must specify the Treasurer";
            divMessageTreasurer.Visible = true;
            valid = false;
        }
        else
            divMessageTreasurer.Visible = false;

        if (show.Show_Type_ID == Constants.CHAMPIONSHIP)
        {
            if (string.IsNullOrEmpty(Committee1_ID) || string.IsNullOrEmpty(Committee2_ID) || string.IsNullOrEmpty(Committee3_ID))
            {
                MessageCommittee.Text = "You must specify three Committee members";
                valid = false;
            }
        }
        return valid;
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

    private void ResetMessages()
    {
        MessageChairman.Text = string.Empty;
        MessageSecretary.Text = string.Empty;
        MessageTreasurer.Text = string.Empty;
        MessageCommittee.Text = string.Empty;
        MessageLabel.Text = string.Empty;
    }
}