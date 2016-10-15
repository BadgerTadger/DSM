using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Data;
using System.Configuration;
using System.Diagnostics;

public partial class Competitors_Competitor : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        MessageLabel.Text = string.Empty;
        GetCommon();

        if (!string.IsNullOrEmpty(Common.Club_ID))
        {
            Club_ID = Common.Club_ID;
            PopulateClub(Club_ID);
            PopulateShowGridView(Club_ID);
            divShowList.Visible = true;
        }
        else
        {
            PopulateClubGridView();
            divClubList.Visible = true;
            divClubDetails.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Show_ID))
        {
            Show_ID = Common.Show_ID;
            PopulateShow(Show_ID);
            divGetOwner.Visible = true;
        }
        else
        {
            if (!string.IsNullOrEmpty(Club_ID))
            {
                PopulateShowGridView(Club_ID);
                divShowList.Visible = true;
            }
            else
            {
                divShowList.Visible = false;
                divShowDetails.Visible = false;
                divGetOwner.Visible = false;
            }
        }
        if (!string.IsNullOrEmpty(Common.Owner_ID))
        {
            Owner_ID = Common.Owner_ID;
            AddOwnerToList(Owner_ID);
            Owner_ID = null;
            Common.Owner_ID = Owner_ID;
        }
        if (Common.DogOwnerList != null && Common.DogOwnerList.Count != 0)
        {
            divOwnerList.Visible = true;
            DogOwnerList ownerList = new DogOwnerList();
            ownerList.MyDogOwnerList = Common.DogOwnerList;
            PopulateOwnerGridView(ownerList.MyDogOwnerList);
            divGetDog.Visible = true;
        }
        else
        {
            divOwnerList.Visible = false;
            divGetDog.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Current_Dog_ID))
        {
            Current_Dog_ID = Common.Current_Dog_ID;
            AddDogToList(Current_Dog_ID);
            Current_Dog_ID = null;
            Common.DogAdded = true;
            Common.Current_Dog_ID = Current_Dog_ID;
        }
        if (Common.MyDogList != null && Common.MyDogList.Count != 0)
        {
            if (!string.IsNullOrEmpty(Entrant_ID) && !Common.DogAdded)
            {
                //GetEntrantByShowAndDog();
                Guid entrant_ID = new Guid(Entrant_ID);
                Common.MyDogList = null;
                PopulateEntrant(entrant_ID);
                PopulateDogList(entrant_ID);
            }
            divDogList.Visible = true;
            DogList dogList = new DogList();
            dogList.MyDogList = Common.MyDogList;
            PopulateDogGridView(dogList.MyDogList);
            divGetDog.Visible = true;
            if(string.IsNullOrEmpty(Entrant_ID))
                GetEntrantByShowAndDog();
            divEntryDetails.Visible = true;
            if (!string.IsNullOrEmpty(Common.Entrant_ID))
            {
                divAddCompetitor.Visible = false;
                divUpdateCompetitor.Visible = true;
            }
            else
            {
                divAddCompetitor.Visible = true;
                divUpdateCompetitor.Visible = false;
            }
        }
        else
        {
            divDogList.Visible = false;
            divAddCompetitor.Visible = false;
            divUpdateCompetitor.Visible = false;
            divEntryDetails.Visible = false;
        }
        if (!Page.IsPostBack)
        {
            PopulateForm();
            if (!string.IsNullOrEmpty(Entrant_ID))
            {
                Guid entrant_ID = new Guid(Entrant_ID);
                PopulateOwnerList(entrant_ID);
            }
        }
    }
    private string _owner_ID;
    public string Owner_ID
    {
        get { return _owner_ID; }
        set { _owner_ID = value; }
    }
    private string _entrant_ID;
    public string Entrant_ID
    {
        get { return _entrant_ID; }
        set { _entrant_ID = value; }
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
    private string _current_Dog_ID;
    public string Current_Dog_ID
    {
        get { return _current_Dog_ID; }
        set { _current_Dog_ID = value; }
    }
    private bool _catalogue;
    public bool Catalogue
    {
        get { return _catalogue; }
        set { _catalogue = value; }
    }
    private bool _withold_Address;
    public bool Withold_Address
    {
        get { return _withold_Address; }
        set { _withold_Address = value; }
    }
    private bool _overnight_Camping;
    public bool Overnight_Camping
    {
        get { return _overnight_Camping; }
        set { _overnight_Camping = value; }
    }
    private bool _send_Running_Order;
    public bool Send_Running_Order
    {
        get { return _send_Running_Order; }
        set { _send_Running_Order = value; }
    }
    private string _entry_Date;
    public string Entry_Date
    {
        get { return _entry_Date; }
        set { _entry_Date = value; }
    }
    private string _overpayment;
    public string Overpayment
    {
        get { return _overpayment; }
        set { _overpayment = value; }
    }
    private string _underpayment;
    public string Underpayment
    {
        get { return _underpayment; }
        set { _underpayment = value; }
    }
    private bool _offer_Of_Help;
    public bool Offer_Of_Help
    {
        get { return _offer_Of_Help; }
        set { _offer_Of_Help = value; }
    }
    private string _help_Details;
    public string Help_Details
    {
        get { return _help_Details; }
        set { _help_Details = value; }
    }
    private string _dog_Class_ID;
    public string Dog_Class_ID
    {
        get { return _dog_Class_ID; }
        set { _dog_Class_ID = value; }
    }

    protected void btnGetShow_Click(object sender, EventArgs e)
    {
        string returnChars = Common.AppendReturnChars(Request.QueryString, "coc");
        Server.Transfer("~/ShowAdmin/ShowSetup.aspx?" + returnChars);
    }
    private void GetCommon()
    {
        Owner_ID = Common.Owner_ID;
        Withold_Address = Common.Withold_Address;
        Club_ID = Common.Club_ID;
        Show_ID = Common.Show_ID;
        Catalogue = Common.Catalogue;
        Overnight_Camping = Common.Overnight_Camping;
        Send_Running_Order = Common.Send_Running_Order;
        Overpayment = Common.Overpayment;
        Underpayment = Common.Underpayment;
        Offer_Of_Help = Common.Offer_Of_Help;
        Help_Details = Common.Help_Details;
        Entrant_ID = Common.Entrant_ID;
        Entry_Date = Common.Entry_Date;
    }
    private void StoreCommon()
    {
        Common.Owner_ID = Owner_ID;
        Common.Withold_Address = Withold_Address;
        Common.Club_ID = Club_ID;
        Common.Show_ID = Show_ID;
        Common.Catalogue = Catalogue;
        Common.Overnight_Camping = Overnight_Camping;
        Common.Send_Running_Order = Send_Running_Order;
        Common.Overpayment = Overpayment;
        Common.Underpayment = Underpayment;
        Common.Offer_Of_Help = Offer_Of_Help;
        Common.Help_Details = Help_Details;
        Common.Entrant_ID = Entrant_ID;
        Common.Entry_Date = Entry_Date;
    }
    private void SaveFormFields()
    {
        Withold_Address = chkWithold_Address.Checked;
        Catalogue = chkCatalogue.Checked;
        Overnight_Camping = chkOvernight_Camping.Checked;
        Send_Running_Order = chkSend_Running_Order.Checked;
        if (!string.IsNullOrEmpty(Request.Form[txtEntryDate.UniqueID]))
        {
            string format = "yyyy-MM-dd";
            Entry_Date = DateTime.Parse(Request.Form[txtEntryDate.UniqueID]).ToString(format);
        }
        if (rdoOverpayment.Checked)
        {
            Overpayment = txtPaymentDiff.Text;
            Underpayment = string.Empty;
        }
        else if (rdoUnderpayment.Checked)
        {
            Underpayment = txtPaymentDiff.Text;
            Overpayment = string.Empty;
        }
        Offer_Of_Help = chkOffer_Of_Help.Checked;
        Help_Details = txtHelp_Details.Text;
    }
    private void PopulateForm()
    {
        chkWithold_Address.Checked = Withold_Address;
        chkCatalogue.Checked = Catalogue;
        chkOvernight_Camping.Checked = Overnight_Camping;
        chkSend_Running_Order.Checked = Send_Running_Order;
        txtEntryDate.Text = Entry_Date;
        if (!string.IsNullOrEmpty(Overpayment))
        {
            rdoOverpayment.Checked = true;
            txtPaymentDiff.Text = decimal.Parse(Overpayment).ToString("#.00");
        }
        else
        {
            rdoOverpayment.Checked=false;
        }
        if (!string.IsNullOrEmpty(Underpayment))
        {
            rdoUnderpayment.Checked = true;
            txtPaymentDiff.Text = decimal.Parse(Underpayment).ToString("#.00");
        }
        else
        {
            rdoUnderpayment.Checked = false;
        }
        if (string.IsNullOrEmpty(Overpayment) && string.IsNullOrEmpty(Underpayment))
            txtPaymentDiff.Text = string.Empty;

        chkOffer_Of_Help.Checked = Offer_Of_Help;
        TableRowHelpDetails.Visible = Offer_Of_Help;
        txtHelp_Details.Text = Help_Details;
    }
    private void PopulateClub(string club_ID)
    {
        Guid Club_ID = new Guid(club_ID);
        Clubs club = new Clubs(_connString, Club_ID);

        txtClubLongName.Text = club.Club_Long_Name;
        divClubList.Visible = false;
        divClubDetails.Visible = true;
    }
    private void PopulateShow(string show_ID)
    {
        Guid Show_ID = new Guid(show_ID);
        Shows show = new Shows(_connString, Show_ID);

        txtShowName.Text = show.Show_Name;
        divShowList.Visible = false;
        divShowDetails.Visible = true;
    }
    protected void btnNewCompetitor_Click(object sender, EventArgs e)
    {
        ResetPage();
        Common.Reset();
        Entrant_ID = null;
        Common.Entrant_ID = Entrant_ID;
        PopulateClubGridView();
        divClubList.Visible = true;
    }
    private void ResetPage()
    {
        divUpdateCompetitor.Visible = false;
        divGetDog.Visible = false;
        divGetOwner.Visible = false;
        ClearEntryFields();
    }
    private void ClearEntryFields()
    {
        //Common.Reset();
        Common.Person_ID = null;
        Common.Person_Address_ID = null;
        Owner_ID = null;
        Common.Owner_ID = Owner_ID;
        Club_ID = null;
        Common.Club_ID = Club_ID;
        Show_ID = null;
        Common.Show_ID=Show_ID;
        DogList doglist = new DogList();
        Common.MyDogList=null;
        Common.DogOwnerList = null;
        Common.DogBreederList = null;
        Withold_Address = false;
        Common.Withold_Address = Withold_Address;
        Catalogue = false;
        Common.Catalogue = Catalogue;
        Overnight_Camping = false;
        Common.Overnight_Camping = Overnight_Camping;
        Send_Running_Order = false;
        Common.Send_Running_Order = Send_Running_Order;
        Entry_Date = null;
        txtEntryDate.Text = Entry_Date;
        Common.Entry_Date = Entry_Date;
        Overpayment = null;
        Common.Overpayment = Overpayment;
        Underpayment = null;
        Common.Underpayment = Underpayment;
        Offer_Of_Help = false;
        Common.Offer_Of_Help = Offer_Of_Help;
        Help_Details = null;
        Common.Help_Details = Help_Details;
        Common.Handler_ID = null;
        divEntryDetails.Visible = false;
        divDogList.Visible = false;
        divOwnerList.Visible = false;
        divClubDetails.Visible = false;
        divClubList.Visible = true;
        divShowDetails.Visible = false;
        divShowList.Visible = false;
        divAddCompetitor.Visible = false;
        PopulateForm();
    }
    private bool ValidEntry()
    {
        bool valid = true;

        if (Common.MyDogList == null || Common.MyDogList.Count == 0)
        {
            MessageLabel.Text = "You have not added any dogs.";
            valid = false;
        }
        if (string.IsNullOrEmpty(Show_ID))
        {
            MessageLabel.Text = "Please select the Show.";
            valid = false;
        }
        if (string.IsNullOrEmpty(Club_ID))
        {
            MessageLabel.Text = "Please select the Club.";
            valid = false;
        }
        if (!string.IsNullOrEmpty(txtPaymentDiff.Text))
        {
            if (!rdoOverpayment.Checked && !rdoUnderpayment.Checked)
            {
                MessageLabel.Text = "Please specify whether Over or Under payment.";
                valid = false;
            }
            decimal outNo;
            if (!decimal.TryParse(txtPaymentDiff.Text, out outNo))
            {
                MessageLabel.Text = "The Over/Under payment amount is not valid.";
                valid = false;
            }
        }

        return valid;
    }
    protected void btnAddCompetitor_Click(object sender, EventArgs e)
    {
        SaveFormFields();
        StoreCommon();

        if (ValidEntry())
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            Entrants entrant = new Entrants(_connString);
            Guid show_ID = new Guid(Show_ID);
            entrant.Show_ID = show_ID;
            if(Catalogue)
                entrant.Catalogue = Catalogue;
            if (Overnight_Camping)
                entrant.Overnight_Camping = Overnight_Camping;
            if (!string.IsNullOrEmpty(Overpayment))
                entrant.Overpayment = decimal.Parse(Overpayment);
            if (!string.IsNullOrEmpty(Underpayment))
                entrant.Underpayment = decimal.Parse(Underpayment);
            if (Offer_Of_Help)
                entrant.Offer_Of_Help = Offer_Of_Help;
            if (!string.IsNullOrEmpty(Help_Details))
                entrant.Help_Details = Help_Details;
            if (Withold_Address)
                entrant.Withold_Address = Withold_Address;
            if (Send_Running_Order)
                entrant.Send_Running_Order = Send_Running_Order;
            if (!string.IsNullOrEmpty(Entry_Date))
            {
                if (entrant.Entry_Date.ToString() != Entry_Date && !string.IsNullOrEmpty(Entry_Date))
                    entrant.Entry_Date = DateTime.Parse(Entry_Date);
            }

            Guid? entrant_ID = entrant.Insert_Entrant(user_ID);

            if (entrant_ID != null)
            {
                Entrant_ID = entrant_ID.ToString();
                Common.Entrant_ID = Entrant_ID;
                bool insertFailed = false;
                for (int i = 0; i < Common.MyDogList.Count; i++)
                {
                    DogClasses dogClass = new DogClasses(_connString);
                    dogClass.Entrant_ID = entrant_ID;
                    dogClass.Dog_ID = Common.MyDogList[i].Dog_ID;

                    Guid? dog_Class_ID = dogClass.Insert_Dog_Class(user_ID);

                    if (dog_Class_ID == null)
                        insertFailed = true;
                }
                if (!insertFailed)
                {
                    string returnChars = Common.AppendReturnChars(Request.QueryString, "coc");
                    Server.Transfer("~/Competitors/AddDogToClasses.aspx?" + returnChars);
                }
                else
                {
                    MessageLabel.Text = "Dog_Classes Insert Failed!";
                }
            }
            else
            {
                MessageLabel.Text = "Entrants Insert Failed!";
            }
        }
    }
    private bool HasEntrantChanges()
    {
        bool Changed = false;

        if (!string.IsNullOrEmpty(Entrant_ID))
        {
            Guid entrant_ID = new Guid(Entrant_ID);
            Entrants entrant = new Entrants(_connString, entrant_ID);

            if (entrant.Show_ID.ToString() != Show_ID)
                Changed = true;
            if (entrant.Catalogue != Catalogue)
                Changed = true;
            if (entrant.Overnight_Camping != Overnight_Camping)
                Changed = true;
            if (entrant.Overpayment.ToString() != Overpayment)
                Changed = true;
            if (entrant.Underpayment.ToString() != Underpayment)
                Changed = true;
            if (entrant.Offer_Of_Help != Offer_Of_Help)
                Changed = true;
            if (entrant.Help_Details != Help_Details)
                if(!string.IsNullOrEmpty(entrant.Help_Details) && !string.IsNullOrEmpty(Help_Details))
                    Changed = true;
            if (entrant.Withold_Address != Withold_Address)
                Changed = true;
            if (entrant.Send_Running_Order != Send_Running_Order)
                Changed = true;
            if (entrant.Entry_Date == null && !string.IsNullOrEmpty(Entry_Date))
                Changed = true;
            if (entrant.Entry_Date != null && !string.IsNullOrEmpty(Entry_Date))
                if (entrant.Entry_Date.ToString() != Entry_Date)
                    Changed = true;
        }
        return Changed;
    }
    private short HasDogChanges()
    {
        bool Changed = false;
        short del = Constants.DATA_NO_CHANGE;
        short ins = Constants.DATA_NO_CHANGE;
        List<DogClasses> tblDogClasses;
        DogClasses dogClasses = new DogClasses(_connString);
        Guid entrant_ID = new Guid(Entrant_ID);
        tblDogClasses = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);
        foreach (DogClasses dogClassesRow in tblDogClasses)
        {
            bool foundDog = false;
            for (int i = 0; i < Common.MyDogList.Count; i++)
            {
                if (Common.MyDogList[i].Dog_ID == dogClassesRow.Dog_ID)
                    //Dog in table still exists in list
                    foundDog = true;
            }
            if (!foundDog)
                //Dog in table no longer exists in list (deleted)
                Changed = true;
        }
        if (Changed)
            del = Constants.DATA_DELETED;

        Changed = false;
        for (int i = 0; i < Common.MyDogList.Count; i++)
        {
            bool foundDog = false;
            foreach (DogClasses dogClassesRow in tblDogClasses)
            {
                if (Common.MyDogList[i].Dog_ID == dogClassesRow.Dog_ID)
                    //Dog in List already exists in table
                    foundDog = true;
            }
            if (!foundDog)
                //Dog in list does not exist in table (inserted)
                Changed = true;
        }
        if (Changed)
            ins = Constants.DATA_INSERTED;

        return del += ins;
    }
    protected void btnUpdateCompetitor_Click(object sender, EventArgs e)
    {
        SaveFormFields();
        StoreCommon();
        if (ValidEntry())
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;
            Guid entrant_ID = new Guid(Entrant_ID);
            bool EntrantChanges = false;
            bool EntrantSuccess = false;
            bool DogChanges = false;
            bool DogSuccess = false;
            if (HasEntrantChanges())
            {
                EntrantChanges = true;
                Entrants entrant = new Entrants(_connString);
                Guid show_ID = new Guid(Show_ID);
                entrant.Show_ID = show_ID;
                if (Catalogue)
                    entrant.Catalogue = Catalogue;
                if (Overnight_Camping)
                    entrant.Overnight_Camping = Overnight_Camping;
                if (!string.IsNullOrEmpty(Overpayment))
                    entrant.Overpayment = decimal.Parse(Overpayment);
                if (!string.IsNullOrEmpty(Underpayment))
                    entrant.Underpayment = decimal.Parse(Underpayment);
                if (Offer_Of_Help)
                    entrant.Offer_Of_Help = Offer_Of_Help;
                if (!string.IsNullOrEmpty(Help_Details))
                    entrant.Help_Details = Help_Details;
                if (Withold_Address)
                    entrant.Withold_Address = Withold_Address;
                if (Send_Running_Order)
                    entrant.Send_Running_Order = Send_Running_Order;
                if (!string.IsNullOrEmpty(Entry_Date))
                {
                    if (entrant.Entry_Date.ToString() != Entry_Date && !string.IsNullOrEmpty(Entry_Date))
                        entrant.Entry_Date = DateTime.Parse(Entry_Date);
                }
                EntrantSuccess = entrant.Update_Entrant(entrant_ID, user_ID);
            }
            else
                EntrantSuccess = true;

            List<DogClasses> tblDogClasses;
            DogClasses dogClasses = new DogClasses(_connString);
            tblDogClasses = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);
            bool insertOK = true;
            bool deleteOK = true;
            switch (HasDogChanges())
            {
                case Constants.DATA_NO_CHANGE:
                    DogSuccess = true;
                    break;
                case Constants.DATA_INSERTED:
                    DogChanges = true;
                    insertOK = InsertDogClass(entrant_ID, user_ID);
                    if (insertOK)
                        DogSuccess = true;
                    else
                        MessageLabel.Text = "Insert_Dog_Class Failed";
                    break;
                case Constants.DATA_DELETED:
                    DogChanges = true;
                    deleteOK = DeleteDogClass(entrant_ID, user_ID);
                    if (deleteOK)
                        DogSuccess = true;
                    else
                        MessageLabel.Text = "Delete_Dog_Class Failed";
                    break;
                case Constants.DATA_INSERTED_AND_DELETED:
                    DogChanges = true;
                    insertOK = InsertDogClass(entrant_ID, user_ID);
                    deleteOK = DeleteDogClass(entrant_ID, user_ID);
                    if (insertOK && deleteOK)
                        DogSuccess = true;
                    else
                    {
                        MessageLabel.Text = string.Empty;
                        if (!insertOK)
                            MessageLabel.Text = "Insert_Dog_Class Failed";
                        if (!deleteOK)
                            MessageLabel.Text += "Delete_Dog_Class Failed";
                    }
                    break;
                default:
                    break;
            }

            if (EntrantChanges && !EntrantSuccess)
                MessageLabel.Text = "Update_Entrant Failed!";
            if (DogChanges && !DogSuccess)
                MessageLabel.Text += " Error with Dog Changes!";
            if (!EntrantChanges && !DogChanges)
            {
                string returnChars = Common.AppendReturnChars(Request.QueryString, "coc");
                Server.Transfer("~/Competitors/AddDogToClasses.aspx?" + returnChars);
            }
            if (EntrantSuccess && DogSuccess)
            {
                string returnChars = Common.AppendReturnChars(Request.QueryString, "coc");
                Server.Transfer("~/Competitors/AddDogToClasses.aspx?" + returnChars);
            }
        }
    }

    private bool InsertDogClass(Guid entrant_ID, Guid user_ID)
    {
        bool insertOK=true;
        for (int i = 0; i < Common.MyDogList.Count; i++)
        {
            bool dogFound = false;
            List<DogClasses> tblDogClasses;
            DogClasses dogClasses = new DogClasses(_connString);
            tblDogClasses=dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);
            foreach (DogClasses row in tblDogClasses)
            {
                if (Common.MyDogList[i].Dog_ID == row.Dog_ID)
                {
                    dogFound = true;
                }
            }
            if (!dogFound)
            {

                DogClasses dogClass = new DogClasses(_connString);
                dogClass.Entrant_ID = entrant_ID;
                dogClass.Dog_ID = Common.MyDogList[i].Dog_ID;

                Guid? dog_Class_ID = dogClass.Insert_Dog_Class(user_ID);

                if (dog_Class_ID == null)
                    insertOK = false;

            }
        }
        return insertOK;
    }
    private bool DeleteDogClass(Guid entrant_ID, Guid user_ID)
    {
        bool deletedOK = false;
        List<DogClasses> tblDogClasses;
        DogClasses dogClasses = new DogClasses(_connString);
        tblDogClasses = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);
        foreach (DogClasses row in tblDogClasses)
        {
            bool dogFound = false;
            for (int i = 0; i < Common.MyDogList.Count; i++)
            {
                if (Common.MyDogList[i].Dog_ID == row.Dog_ID)
                {
                    dogFound = true;
                }
            }
            if (!dogFound)
            {
                DogClasses dc = new DogClasses(_connString, (Guid)row.Dog_Class_ID);
                dc.DeleteDogClass = true;
                deletedOK = dc.Update_Dog_Class((Guid)row.Dog_Class_ID, user_ID);
            }
        }
        return deletedOK;
    }
            
    private void PopulateClubGridView()
    {
        Clubs club = new Clubs(_connString);
        List<Clubs> tblClubs = club.GetClubs();
        ClubGridView.DataSource = tblClubs;
        ClubGridView.DataBind();
    }
    protected void ClubGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = ClubGridView.SelectedRow;
        string c_id = ClubGridView.DataKeys[row.RowIndex]["Club_ID"].ToString();

        Club_ID = c_id;
        Common.Club_ID = Club_ID;

        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        PopulateClub(Club_ID);
        PopulateShowGridView(Club_ID);
        divShowList.Visible = true;
    }
    protected void btnChangeClub_Click(object sender, EventArgs e)
    {
        ResetPage();
        Common.Reset();
        Entrant_ID = null;
        Common.Entrant_ID = Entrant_ID;
        PopulateClubGridView();
        divClubList.Visible = true;
    }
    private void PopulateShowGridView(string club_ID)
    {
        Guid Club_ID = new Guid(club_ID);
        Shows show = new Shows(_connString);
        List<Shows> tblShows = show.GetShowsByClub_ID(Club_ID);
        ShowGridView.DataSource = tblShows;
        ShowGridView.DataBind();
    }
    protected void AddOwnerToList(string owner_ID)
    {
        Guid new_Owner_ID = new Guid(owner_ID);
        People person = new People(_connString, new_Owner_ID);
        DogOwnerList ownerList = new DogOwnerList();
        ownerList.MyDogOwnerList = Common.DogOwnerList;
        People pp = null;
        if (ownerList.MyDogOwnerList != null)
            pp = ownerList.MyDogOwnerList.Find(delegate(People p) { return p.Person_ID == new_Owner_ID; });
        if (pp == null)
        {
            int ownerCount = ownerList.AddOwner(person);
            PopulateOwnerGridView(ownerList.MyDogOwnerList);
            Common.DogOwnerList = ownerList.MyDogOwnerList;
        }
    }
    private void PopulateOwnerList(Guid entrant_ID)
    {
        bool foundOwner = false;
        List<DogClasses> tblDogClasses;
        DogClasses dogClasses = new DogClasses(_connString);
        tblDogClasses = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);
        foreach (DogClasses dogClassesRow in tblDogClasses)
        {
            Guid dog_ID = new Guid(dogClassesRow.Dog_ID.ToString());
            List<DogOwners> lnkDogOwners;
            DogOwners dogOwners = new DogOwners(_connString);
            lnkDogOwners = dogOwners.GetDogOwnersByDog_ID(dog_ID);
            foreach (DogOwners row in lnkDogOwners)
            {
                AddOwnerToList(row.Owner_ID.ToString());
                foundOwner = true;
            }
        }
        if (foundOwner)
            divOwnerList.Visible = true;
    }
    private void PopulateOwnerGridView(List<People> ownerList)
    {
        OwnerGridView.DataSource = ownerList;
        OwnerGridView.DataBind();
    }
    protected void OwnerGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string owner_id = OwnerGridView.DataKeys[e.RowIndex]["Person_ID"].ToString();
        DogOwnerList ownerList = new DogOwnerList();
        ownerList.MyDogOwnerList = Common.DogOwnerList;
        int ownerCount = ownerList.DeleteDogOwner(e.RowIndex);
        PopulateOwnerGridView(ownerList.MyDogOwnerList);
        Common.DogOwnerList = ownerList.MyDogOwnerList;
    }
    private void PopulateDogList(Guid entrant_ID)
    {
        if (Common.MyDogList == null)
        {
            List<DogClasses> tblDogClasses;
            DogClasses dogClasses = new DogClasses(_connString);
            tblDogClasses = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);
            foreach (DogClasses dogClassesRow in tblDogClasses)
            {
                AddDogToList(dogClassesRow.Dog_ID.ToString());
            }
        }
    }

    protected void ShowGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = ShowGridView.SelectedRow;
        string s_id = ShowGridView.DataKeys[row.RowIndex]["Show_ID"].ToString();
        string c_id = ShowGridView.DataKeys[row.RowIndex]["Club_ID"].ToString();
        string v_id = ShowGridView.DataKeys[row.RowIndex]["Venue_ID"].ToString();
        Show_ID = s_id;
        Common.Show_ID = Show_ID;
        Club_ID = c_id;
        Common.Club_ID = Club_ID;

        PopulateClub(Club_ID);
        PopulateShowGridView(Club_ID);
        PopulateShow(Show_ID);
        divGetOwner.Visible = true;
        if (!string.IsNullOrEmpty(Owner_ID) && !string.IsNullOrEmpty(Show_ID))
        {
            Entrants entrant = new Entrants(_connString);
            List<Entrants> tblEntrants;
            Guid person_ID = new Guid(Owner_ID);
            Guid show_ID = new Guid(Show_ID);
            Guid? entrant_ID = null;
            tblEntrants = entrant.GetEntrantsByShow_ID(show_ID, false);
            foreach (Entrants entrantRow in tblEntrants)
            {
                if (entrantRow.Show_ID == show_ID)
                    entrant_ID = entrantRow.Entrant_ID;
            }
            if (entrant_ID != null)
            {
                Entrant_ID = entrant_ID.ToString();
                Common.Entrant_ID = Entrant_ID;
                Guid newEntrant_ID = new Guid(Entrant_ID);
                PopulateEntrant(newEntrant_ID);
                PopulateDogList(newEntrant_ID);
                PopulateOwnerList(newEntrant_ID);
                divDogList.Visible = true;
                divAddCompetitor.Visible = false;
                divUpdateCompetitor.Visible = true;
                PopulateForm();
                People person = new People(_connString, person_ID);
                MessageLabel.Text = string.Format("{0} {1} is already entered in this show", person.Person_Forename, person.Person_Surname);
            }
        }
    }
    private void PopulateEntrant(Guid entrant_ID)
    {
        Entrants entrant = new Entrants(_connString, entrant_ID);
        if (entrant.Catalogue != null)
            Catalogue = (bool)entrant.Catalogue;
        if (entrant.Overnight_Camping != null)
            Overnight_Camping = (bool)entrant.Overnight_Camping;
        Overpayment = entrant.Overpayment.ToString();
        Underpayment = entrant.Underpayment.ToString();
        if (entrant.Offer_Of_Help != null)
            Offer_Of_Help = (bool)entrant.Offer_Of_Help;
        Help_Details = entrant.Help_Details;
        if (entrant.Withold_Address != null)
            Withold_Address = (bool)entrant.Withold_Address;
        if (entrant.Send_Running_Order != null)
            Send_Running_Order = (bool)entrant.Send_Running_Order;
        if (entrant.Entry_Date != null)
        {
            string format = "yyyy-MM-dd";
            Entry_Date = DateTime.Parse(entrant.Entry_Date.ToString()).ToString(format);
            Common.Entry_Date = Entry_Date;
            txtEntryDate.Text = Entry_Date;
        }
        StoreCommon();
    }
    protected void btnChangeShow_Click(object sender, EventArgs e)
    {
        ResetPage();
        Common.Reset();
        Entrant_ID = null;
        Common.Entrant_ID = Entrant_ID;
        PopulateClubGridView();
        divClubList.Visible = true;
    }
    protected void btnGetDog_Click(object sender, EventArgs e)
    {
        ResetDog();
        SaveFormFields();
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "coc");
        Server.Transfer("~/Dogs/DogSetup.aspx?" + returnChars);
    }
    protected void AddDogToList(string current_Dog_ID)
    {
        Guid dog_ID = new Guid(current_Dog_ID);
        Dogs dog = new Dogs(_connString, dog_ID);
        DogList dogList = new DogList();
        dogList.MyDogList = Common.MyDogList;
        Dogs dg = null;
        if (dogList.MyDogList != null)
            dg = dogList.MyDogList.Find(delegate(Dogs d) { return d.Dog_ID == dog_ID; });
        if (dg == null)
        {
            int dogCount = dogList.AddDog(dog);
            PopulateDogGridView(dogList.MyDogList);
            Common.MyDogList = dogList.MyDogList;
        }
    }
    protected void DogGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string dog_id = DogGridView.DataKeys[e.RowIndex]["Dog_ID"].ToString();
        DogList dogList = new DogList();
        dogList.MyDogList = Common.MyDogList;
        int dogCount = dogList.DeleteDog(e.RowIndex);
        PopulateDogGridView(dogList.MyDogList);
        Common.MyDogList = dogList.MyDogList;
    }
    private void PopulateDogGridView(List<Dogs> dogList)
    {
        DogGridView.DataSource = dogList;
        DogGridView.DataBind();
    }
    private void ResetDog()
    {
        Current_Dog_ID = null;
        Common.Current_Dog_ID = Current_Dog_ID;
    }
    protected void btnGetOwner_Click(object sender, EventArgs e)
    {
        SaveFormFields();
        StoreCommon();
        Common.Owner_ID = null;
        Common.Person_Address_ID = null;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "coc");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=o");
    }
    protected void chkOffer_Of_Help_CheckedChanged(object sender, EventArgs e)
    {
        if (!chkOffer_Of_Help.Checked)
            txtHelp_Details.Text = string.Empty;
        TableRowHelpDetails.Visible = chkOffer_Of_Help.Checked;
    }
    protected void ShowGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        GridViewRow myRow = e.Row;
        if (myRow.RowType == DataControlRowType.DataRow)
        {
            if (myRow.RowState == DataControlRowState.Normal || myRow.RowState == DataControlRowState.Alternate)
            {
                DateTime closing_Date = DateTime.Parse(DataBinder.Eval(e.Row.DataItem, "Closing_Date").ToString());
                int result = Debugger.IsAttached ? 0 : DateTime.Compare(closing_Date, DateTime.Now);

                if (result < 0)
                {
                    e.Row.BackColor = System.Drawing.Color.LightPink;
                    e.Row.ForeColor = System.Drawing.Color.Maroon;
                    LinkButton btn = ((LinkButton)e.Row.Cells[0].Controls[0]);
                    btn.Enabled = false;
                }
            }
        }

    }
    private void GetEntrantByShowAndDog()
    {
        Entrants entrant = new Entrants(_connString);
        if (!string.IsNullOrEmpty(Show_ID))
        {
            Guid show_ID = new Guid(Show_ID);
            Guid dog_ID = Common.MyDogList[0].Dog_ID;
            List<Entrants> tblEntrants;
            tblEntrants = entrant.GetEntrantsByShow_IDAndDog_ID(show_ID, dog_ID, true);
            if (tblEntrants != null && tblEntrants.Count > 0)
            {
                Guid entrant_ID = (Guid)tblEntrants[0].Entrant_ID;
                Entrant_ID = entrant_ID.ToString();
                Common.Entrant_ID = Entrant_ID;
            }
        }
    }
}