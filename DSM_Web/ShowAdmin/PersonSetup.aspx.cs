using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.Configuration;
using BLL;
using System.Configuration;

public partial class ShowAdmin_PersonSetup : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        MessageLabel.Text = string.Empty;
        GetCommon();

        if (!string.IsNullOrEmpty(Common.Person_ID))
        {
            Person_ID = Common.Person_ID;
            DivAddPerson.Visible = false;
            divNewPerson.Visible = true;
            divUpdatePerson.Visible = true;
            DivReturn.Visible = true;
        }
        else
        {
            DivAddPerson.Visible = true;
            divNewPerson.Visible = false;
            divUpdatePerson.Visible = false;
            DivReturn.Visible = false;
        }

        if (!string.IsNullOrEmpty(Common.Person_Address_ID))
        {
            Person_Address_ID = Common.Person_Address_ID;
            PopulateAddress(Person_Address_ID);
            divGetAddress.Visible = false;
            divChangeAddress.Visible = true;
            divAddressDetails.Visible = true;
        }
        else
        {
            divGetAddress.Visible = true;
            divChangeAddress.Visible = false;
            divAddressDetails.Visible = false;
        }
        if (!Page.IsPostBack)
        {
            ResetFilter();
            if (!string.IsNullOrEmpty(Person_ID))
                PopulatePerson(Person_ID);
            PopulatePersonGridView(null, 1);

            if (!string.IsNullOrEmpty(Common.Surname))
            {
                txtTitle.Text = Common.Title;
                txtForename.Text = Common.Forename;
                txtSurname.Text = Common.Surname;
                txtMobile.Text = Common.Mobile;
                txtLandline.Text = Common.Landline;
                txtEmail.Text = Common.Email;
            }

            string returnChars = Request.QueryString["return"];
            btnReturn.PostBackUrl = Common.ReturnPath(Request.QueryString, returnChars, "p");
        }
    }

    protected void btnAddPerson_Click(object sender, EventArgs e)
    {
        string strForename = txtForename.Text;
        string strSurname = txtSurname.Text;
        if (string.IsNullOrEmpty(strSurname))
        {
            MessageLabel.Text = "The Surname must be provided";
        }
        else
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            Person_Address_ID = Common.Person_Address_ID;
            if (!string.IsNullOrEmpty(Person_Address_ID))
            {
                Guid address_ID = new Guid(Person_Address_ID);

                People person = new People(_connString);
                person.Person_Title = txtTitle.Text;
                person.Person_Forename = txtForename.Text;
                person.Person_Surname = txtSurname.Text;
                person.Address_ID = address_ID;
                person.Person_Mobile = txtMobile.Text;
                person.Person_Landline = txtLandline.Text;
                person.Person_Email = txtEmail.Text;
                person.Person_OE_Owner_ID = 0;

                Guid? person_ID = person.Insert_Person(user_ID);

                if (person_ID != null)
                {
                    Person_ID = person_ID.ToString();
                    MessageLabel.Text = string.Format("{0} {1} {2} was added successfully", person.Person_Title, person.Person_Forename, person.Person_Surname);
                    //ClearEntryFields();
                    if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                        DivReturn.Visible = true;

                    DivAddPerson.Visible = false;
                    divNewPerson.Visible = true;
                    divUpdatePerson.Visible = true;
                    PopulatePersonGridView(null, 1);
                    StoreCommon();
                }
                else
                {
                    DivAddPerson.Visible = true;
                    divNewPerson.Visible = false;
                    divUpdatePerson.Visible = false;
                }
            }
            else
            {
                MessageLabel.Text = "You must provide an Address for this person";
            }
        }
    }

    protected void btnNewPerson_Click(object sender, EventArgs e)
    {
        ResetPage();
    }

    protected void btnUpdatePerson_Click(object sender, EventArgs e)
    {
        string strForename = txtForename.Text;
        string strSurname = txtSurname.Text;
        if (string.IsNullOrEmpty(strSurname))
        {
            MessageLabel.Text = "The Surname must be provided";
        }
        else
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            Person_ID = Common.Person_ID;
            if (!string.IsNullOrEmpty(Person_ID))
            {
                Person_Address_ID = Common.Person_Address_ID;
                if (!string.IsNullOrEmpty(Person_Address_ID))
                {
                    Guid person_ID = new Guid(Person_ID);
                    Guid address_ID = new Guid(Person_Address_ID);

                    People person = new People(_connString, person_ID);

                    if (HasChanges(person, address_ID))
                    {
                        person.Person_Title = txtTitle.Text;
                        person.Person_Forename = txtForename.Text;
                        person.Person_Surname = txtSurname.Text;
                        person.Address_ID = address_ID;
                        person.Person_Mobile = txtMobile.Text;
                        person.Person_Landline = txtLandline.Text;
                        person.Person_Email = txtEmail.Text;
                        person.Person_OE_Owner_ID = long.Parse(txtOE_Owner_ID.Text);

                        bool valid = person.Update_Person(person_ID, user_ID);

                        if (valid)
                        {
                            Person_ID = person_ID.ToString();
                            MessageLabel.Text = string.Format("{0} {1} {2} was updated successfully", person.Person_Title, person.Person_Forename, person.Person_Surname);
                            //ClearEntryFields();
                            if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                                DivReturn.Visible = true;

                            DivAddPerson.Visible = false;
                            divNewPerson.Visible = true;
                            divUpdatePerson.Visible = true;
                            PopulatePersonGridView(null, 1);
                            StoreCommon();
                        }
                        else
                        {
                            DivAddPerson.Visible = true;
                            divNewPerson.Visible = false;
                            divUpdatePerson.Visible = false;
                        }
                    }
                    else
                    {
                        MessageLabel.Text = "Update cancelled as no changes have been made.";
                        DivAddPerson.Visible = false;
                        divNewPerson.Visible = true;
                        divUpdatePerson.Visible = true;
                    }
                }
            }
        }
    }

    private bool HasChanges(People person, Guid address_ID)
    {
        bool Changed = false;

        if (person.Person_Title != txtTitle.Text)
            Changed = true;
        if (person.Person_Forename != txtForename.Text)
            Changed = true;
        if (person.Person_Surname != txtSurname.Text)
            Changed = true;
        if (person.Address_ID != address_ID)
            Changed = true;
        if (person.Person_Mobile != txtMobile.Text)
            Changed = true;
        if (person.Person_Landline != txtLandline.Text)
            Changed = true;
        if (person.Person_Email != txtEmail.Text)
            Changed = true;
        if (person.Person_OE_Owner_ID != long.Parse(string.IsNullOrEmpty(txtOE_Owner_ID.Text) ? "0" : txtOE_Owner_ID.Text))
            Changed = true;

        return Changed;
    }

    private void ResetPage()
    {
        DivAddPerson.Visible = true;
        divNewPerson.Visible = false;
        divUpdatePerson.Visible = false;
        DivReturn.Visible = false;
        ClearEntryFields();
        Common.ResetPerson();
    }

    private void ClearEntryFields()
    {
        //Common.Reset();
        Person_ID = string.Empty;
        Person_Address_ID = string.Empty;
        Common.Person_Address_ID = string.Empty;
        Common.Address_ID = string.Empty;
        txtTitle.Text = string.Empty;
        txtForename.Text = string.Empty;
        txtSurname.Text = string.Empty;
        txtMobile.Text = string.Empty;
        txtLandline.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtAddress1.Text = string.Empty;
        txtAddress2.Text = string.Empty;
        txtTown.Text = string.Empty;
        txtCity.Text = string.Empty;
        txtCounty.Text = string.Empty;
        txtPostcode.Text = string.Empty;
        divAddressDetails.Visible = false;
        divGetAddress.Visible = true;
        divChangeAddress.Visible = false;
    }

    private void PopulatePerson(string p_id)
    {
        Guid person_ID = new Guid(p_id);
        People person = new People(_connString, person_ID);

        txtTitle.Text = person.Person_Title;
        txtForename.Text = person.Person_Forename;
        txtSurname.Text = person.Person_Surname;
        txtMobile.Text = person.Person_Mobile;
        txtLandline.Text = person.Person_Landline;
        txtEmail.Text = person.Person_Email;
        txtOE_Owner_ID.Text = person.Person_OE_Owner_ID.ToString();
        if (!string.IsNullOrEmpty(Person_Address_ID) && Person_Address_ID != person.Address_ID.ToString())
        {
            PopulateAddress(Person_Address_ID);
        }
        else
        {
            PopulateAddress(person.Address_ID.ToString());
        }
    }
    
    private void PopulateAddress(string a_ID)
    {
        Guid address_ID = new Guid(a_ID);
        Addresses address = new Addresses(_connString, address_ID);

        txtAddress1.Text = address.Address_1;
        txtAddress2.Text = address.Address_2;
        txtTown.Text = address.Address_Town;
        txtCity.Text = address.Address_City;
        txtCounty.Text = address.Address_County;
        txtPostcode.Text = address.Address_Postcode;
    }
    private int CalculateTotalPages(double totalRows)
    {
        int totalPages = (int)Math.Ceiling(totalRows / Int32.Parse(WebConfigurationManager.AppSettings["GridItemsPerPage"]));

        return totalPages;
    }
    private void PopulatePersonGridView(List<People> tblPeople, int pageNo)
    {
        if (tblPeople == null)
        {
            tblPeople = Common.Person_GridViewData;
        }
        int itemsperPage = Int32.Parse(WebConfigurationManager.AppSettings["GridItemsPerPage"]);
        int startRowIndex = (pageNo - 1) * itemsperPage;
        int currentIndex = 0;
        int itemsRead = 0;
        int totalRecords = tblPeople.Count;
        List<People> newPeople = new List<People>();
        foreach (People row in tblPeople)
        {
            if (itemsRead < itemsperPage && currentIndex < totalRecords && currentIndex >= startRowIndex)
            {
                People newPerson = new People(_connString);
                newPerson.Person_ID = row.Person_ID;
                newPerson.Person_Title = row.Person_Title;
                newPerson.Person_Forename = row.Person_Forename;
                newPerson.Person_Surname = row.Person_Surname;
                newPerson.Address_ID = row.Address_ID;
                newPerson.Person_Mobile = row.Person_Mobile;
                newPerson.Person_Landline = row.Person_Landline;
                newPerson.Person_Email = row.Person_Email;
                newPerson.Person_OE_Owner_ID = row.Person_OE_Owner_ID;
                newPeople.Add(newPerson);
                itemsRead++;
            }
            currentIndex++;
        }
        lblTotalPages.Text = CalculateTotalPages(totalRecords).ToString();

        lblCurrentPage.Text = CurrentPage.ToString();

        if (CurrentPage == 1)
        {
            Btn_Previous.Enabled = false;

            if (Int32.Parse(lblTotalPages.Text) > 0)
            {
                Btn_Next.Enabled = true;
            }
            else
                Btn_Next.Enabled = false;

        }

        else
        {
            Btn_Previous.Enabled = true;

            if (CurrentPage == Int32.Parse(lblTotalPages.Text))
                Btn_Next.Enabled = false;
            else Btn_Next.Enabled = true;
        }
        PersonGridView.DataSource = newPeople;
        PersonGridView.DataBind();
    }

    private string _person_Address_ID;
    public string Person_Address_ID
    {
        get { return _person_Address_ID; }
        set { _person_Address_ID = value; }
    }

    private string _person_ID;
    public string Person_ID
    {
        get { return _person_ID; }
        set { _person_ID = value; }
    }
    private int _currentPage = 1;
    public int CurrentPage
    {
        get { return _currentPage; }
        set { _currentPage = value; }
    }
    protected void btnGetAddress_Click(object sender, EventArgs e)
    {
        Common.Title = txtTitle.Text;
        Common.Forename = txtForename.Text;
        Common.Surname = txtSurname.Text;
        Common.Mobile = txtMobile.Text;
        Common.Landline = txtLandline.Text;
        Common.Email = txtEmail.Text;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "sup");
        Server.Transfer("~/ShowAdmin/AddressSetup.aspx?" + returnChars + "&a=p");
    }

    protected void btnPersonSearch_Click(object sender, EventArgs e)
    {
        string searchValue = txtPersonFilter.Text;
        People person = new People(_connString);
        List<People> tblPeople = null;

        if (PersonSearchType.SelectedValue == "c")
        {
            searchValue = string.Format("%{0}", searchValue);
        }

        switch (PersonFilterBy.SelectedValue)
        {
            case "Person_Forename":
                tblPeople = person.GetPeopleByPerson_Forename(searchValue);
                break;
            case "Person_Surname":
                tblPeople = person.GetPeopleByPerson_Surname(searchValue);
                break;
            default:
                tblPeople = person.GetPeople();
                break;
        }

        Common.Person_GridViewData = tblPeople;
        PopulatePersonGridView(Common.Person_GridViewData, 1);
        txtPersonFilter.Text = string.Empty;
        PersonFilterBy.SelectedIndex = -1;
        PersonSearchType.SelectedIndex = -1;
    }

    protected void PersonGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        DivAddPerson.Visible = false;
        divNewPerson.Visible = true;
        divUpdatePerson.Visible = true;

        GridViewRow row = PersonGridView.SelectedRow;
        string p_id = PersonGridView.DataKeys[row.RowIndex]["Person_ID"].ToString();
        string a_id = PersonGridView.DataKeys[row.RowIndex]["Address_ID"].ToString();
        Person_ID = p_id;
        Person_Address_ID = a_id;

        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        PopulatePerson(Person_ID);

        DivReturn.Visible = true;
        divGetAddress.Visible = false;
        divChangeAddress.Visible = true;
        divAddressDetails.Visible = true;
        StoreCommon();
    }

    private void GetCommon()
    {
        string p = Request.QueryString["p"];
        if (!string.IsNullOrEmpty(p))
        {
            switch (p)
            {
                case "nu":
                    if (!string.IsNullOrEmpty(Common.New_User_ID))
                    {
                        Person_ID = Common.New_User_ID;
                        Common.Person_ID = Person_ID;
                    }
                    break;
                case "c":
                    if (!string.IsNullOrEmpty(Common.Chairman_ID))
                    {
                        Person_ID = Common.Chairman_ID;
                        Common.Person_ID = Person_ID;
                    }
                    break;
                case "s":
                    if (!string.IsNullOrEmpty(Common.Secretary_ID))
                    {
                        Person_ID = Common.Secretary_ID;
                        Common.Person_ID = Person_ID;
                    }
                    break;
                case "t":
                    if (!string.IsNullOrEmpty(Common.Treasurer_ID))
                    {
                        Person_ID = Common.Treasurer_ID;
                        Common.Person_ID = Person_ID;
                    }
                    break;
                case "c1":
                    if (!string.IsNullOrEmpty(Common.Committee1_ID))
                    {
                        Person_ID = Common.Committee1_ID;
                        Common.Person_ID = Person_ID;
                    }
                    break;
                case "c2":
                    if (!string.IsNullOrEmpty(Common.Committee2_ID))
                    {
                        Person_ID = Common.Committee2_ID;
                        Common.Person_ID = Person_ID;
                    }
                    break;
                case "c3":
                    if (!string.IsNullOrEmpty(Common.Committee3_ID))
                    {
                        Person_ID = Common.Committee3_ID;
                        Common.Person_ID = Person_ID;
                    }
                    break;
                case "cc":
                    if (!string.IsNullOrEmpty(Common.Club_Contact_ID))
                    {
                        Person_ID = Common.Club_Contact_ID;
                        Common.Person_ID = Person_ID;
                    }
                    break;
                case "v":
                    if (!string.IsNullOrEmpty(Common.Venue_Contact_ID))
                    {
                        Person_ID = Common.Venue_Contact_ID;
                        Common.Person_ID = Person_ID;
                    }
                    break;
                case "o":
                    if (!string.IsNullOrEmpty(Common.Owner_ID))
                    {
                        Person_ID = Common.Owner_ID;
                        Common.Person_ID = Person_ID;
                    }
                    break;
                case "b":
                    if (!string.IsNullOrEmpty(Common.Breeder_ID))
                    {
                        Person_ID = Common.Breeder_ID;
                        Common.Person_ID = Person_ID;
                    }
                    break;
                case "h":
                    if (!string.IsNullOrEmpty(Common.Handler_ID))
                    {
                        Person_ID = Common.Handler_ID;
                        Common.Person_ID = Person_ID;
                    }
                    break;
                default:
                    break;
            }
        }
        Person_Address_ID = Common.Person_Address_ID;
        if (!string.IsNullOrEmpty(Person_ID))
        {
            Guid person_ID = new Guid(Person_ID);
            People person = new People(_connString, person_ID);
            //Person_Address_ID = person.Address_ID.ToString();
        }
    }
    private void StoreCommon()
    {
        if (!string.IsNullOrEmpty(Person_ID))
        {
            Common.Person_ID = Person_ID;
            if (!string.IsNullOrEmpty(Person_Address_ID))
            {
                Common.Person_Address_ID = Person_Address_ID;
            }
            string p_ID = Person_ID;
            string p = Request.QueryString["p"];
            if (!string.IsNullOrEmpty(p))
            {
                switch (p)
                {
                    case "nu":
                        Common.New_User_ID = p_ID;
                        break;
                    case "c":
                        Common.Chairman_ID = p_ID;
                        break;
                    case "s":
                        Common.Secretary_ID = p_ID;
                        break;
                    case "t":
                        Common.Treasurer_ID = p_ID;
                        break;
                    case "c1":
                        Common.Committee1_ID = p_ID;
                        break;
                    case "c2":
                        Common.Committee2_ID = p_ID;
                        break;
                    case "c3":
                        Common.Committee3_ID = p_ID;
                        break;
                    case "cc":
                        Common.Club_Contact_ID = p_ID;
                        break;
                    case "v":
                        Common.Venue_Contact_ID = p_ID;
                        break;
                    case "o":
                        Common.Owner_ID = p_ID;
                        break;
                    case "b":
                        Common.Breeder_ID = p_ID;
                        break;
                    case "h":
                        Common.Handler_ID = p_ID;
                        break;
                    default:
                        break;
                }
            }
        }
    }
    protected void ChangePage(object sender, CommandEventArgs e)
    {

        switch (e.CommandName)
        {
            case "Previous":
                CurrentPage = Int32.Parse(lblCurrentPage.Text) - 1;
                break;

            case "Next":
                CurrentPage = Int32.Parse(lblCurrentPage.Text) + 1;
                break;
        }

        PopulatePersonGridView(Common.Person_GridViewData, CurrentPage);
    }
    private void ResetFilter()
    {
        Common.Person_GridViewData = null;
    }
}