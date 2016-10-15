using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Configuration;

public partial class ShowAdmin_VenueSetup : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        MessageLabel.Text = string.Empty;

        if (!string.IsNullOrEmpty(Common.Venue_Address_ID))
        {
            Venue_Address_ID = Common.Venue_Address_ID;
        }
        if (!string.IsNullOrEmpty(Common.Venue_Contact_ID))
        {
            Venue_Contact_ID = Common.Venue_Contact_ID;
        }
        if (!string.IsNullOrEmpty(Common.Venue_ID))
        {
            Venue_ID = Common.Venue_ID;
        }
        if (!Page.IsPostBack)
        {
            DivReturn.Visible = false;

            PopulateVenueGridView();

            if (!string.IsNullOrEmpty(Common.Venue_Name))
            {
                txtVenueName.Text = Common.Venue_Name;
            }

            string returnChars = Request.QueryString["return"];
            btnReturn.PostBackUrl = Common.ReturnPath(Request.QueryString, returnChars, null);
        }
        if (!string.IsNullOrEmpty(Venue_Address_ID))
        {
            PopulateAddress(Venue_Address_ID);
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

        if (!string.IsNullOrEmpty(Venue_Contact_ID))
        {
            PopulatePerson(Venue_Contact_ID);
            divGetPerson.Visible = false;
            divChangePerson.Visible = true;
            divPersonDetails.Visible = true;
        }
        else
        {
            divGetPerson.Visible = true;
            divChangePerson.Visible = false;
            divPersonDetails.Visible = false;
        }
    }

    protected void btnGetAddress_Click(object sender, EventArgs e)
    {
        Common.Venue_Name = txtVenueName.Text;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "suv");
        Server.Transfer("~/ShowAdmin/AddressSetup.aspx?" + returnChars + "&a=v");
    }

    protected void btnGetPerson_Click(object sender, EventArgs e)
    {
        Common.Venue_Name = txtVenueName.Text;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "suv");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=v");
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

    private void PopulatePerson(string p_ID)
    {
        Guid person_ID = new Guid(p_ID);
        People person = new People(_connString, person_ID);

        txtTitle.Text = person.Person_Title;
        txtForename.Text = person.Person_Forename;
        txtSurname.Text = person.Person_Surname;
        txtMobile.Text = person.Person_Mobile;
        txtLandline.Text = person.Person_Landline;
        txtEmail.Text = person.Person_Email;
    }

    private void PopulateVenueGridView()
    {
        Venues venue = new Venues(_connString);
        List<Venues> tblVenues = venue.GetVenues();
        VenueGridView.DataSource = tblVenues;
        VenueGridView.DataBind();
    }

    private string _venue_ID;
    public string Venue_ID
    {
        get { return _venue_ID; }
        set { _venue_ID = value; }
    }

    private string _venue_Name;
    public string Venue_Name
    {
        get { return _venue_Name; }
        set { _venue_Name = value; }
    }

    private string _venue_Address_ID;
    public string Venue_Address_ID
    {
        get { return _venue_Address_ID; }
        set { _venue_Address_ID = value; }
    }

    private string _venue_Contact_ID;
    public string Venue_Contact_ID
    {
        get { return _venue_Contact_ID; }
        set { _venue_Contact_ID = value; }
    }

    protected void VenueGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        DivAddVenue.Visible = false;

        GridViewRow row = VenueGridView.SelectedRow;
        string v_id = VenueGridView.DataKeys[row.RowIndex]["Venue_ID"].ToString();
        string p_id = VenueGridView.DataKeys[row.RowIndex]["Venue_Contact"].ToString();
        string a_id = VenueGridView.DataKeys[row.RowIndex]["Address_ID"].ToString();
        Venue_ID = v_id;
        Common.Venue_ID = Venue_ID;
        Venue_Contact_ID = p_id;
        Common.Venue_Contact_ID = Venue_Contact_ID;
        Venue_Address_ID = a_id;
        Common.Venue_Address_ID = Venue_Address_ID;

        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        Guid venue_ID = new Guid(Venue_ID);
        Venues venue = new Venues(_connString, venue_ID);
        Guid person_ID = new Guid(Venue_Contact_ID);
        People person = new People(_connString, person_ID);
        Guid address_ID = new Guid(Venue_Address_ID);
        Addresses address = new Addresses(_connString, address_ID);
        txtVenueName.Text = venue.Venue_Name;
        txtTitle.Text = person.Person_Title;
        txtForename.Text = person.Person_Forename;
        txtSurname.Text = person.Person_Surname;
        txtMobile.Text = person.Person_Mobile;
        txtLandline.Text = person.Person_Landline;
        txtEmail.Text = person.Person_Email;
        txtAddress1.Text = address.Address_1;
        txtAddress2.Text = address.Address_2;
        txtTown.Text = address.Address_Town;
        txtCity.Text = address.Address_City;
        txtCounty.Text = address.Address_County;
        txtPostcode.Text = address.Address_Postcode;

        DivReturn.Visible = true;
        divGetAddress.Visible = false;
        divAddressDetails.Visible = true;
        divGetPerson.Visible = false;
        divPersonDetails.Visible = true;
    }

    protected void btnVenueSearch_Click(object sender, EventArgs e)
    {
        string searchValue = txtVenueFilter.Text;
        Venues venue = new Venues(_connString);
        List<Venues> tblVenues = null;

        if (VenueSearchType.SelectedValue == "c")
            searchValue = string.Format("%{0}", searchValue);

        tblVenues = venue.GetVenuesLikeVenue_Name(searchValue);

        VenueGridView.DataSource = tblVenues;
        VenueGridView.DataBind();
        txtVenueFilter.Text = string.Empty;
        VenueSearchType.SelectedIndex = -1;
    }

    private void ClearEntryFields()
    {
        txtVenueName.Text = string.Empty;
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
        DivAddVenue.Visible = false;
    }

    protected void btnAddVenue_Click(object sender, EventArgs e)
    {
        Venue_Name = txtVenueName.Text;
        if (string.IsNullOrEmpty(Venue_Name))
        {
            MessageLabel.Text = "You must enter a Venue Name";
        }
        else if (string.IsNullOrEmpty(Venue_Address_ID))
        {
            MessageLabel.Text = "You must add an Address";
        }
        else if(string.IsNullOrEmpty(Venue_Contact_ID))
        {
            MessageLabel.Text="You must add a Contact";
        }
        else
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            Common.Venue_Address_ID = Venue_Address_ID;
            Common.Venue_Contact_ID = Venue_Contact_ID;

            if (!string.IsNullOrEmpty(Venue_Address_ID) && !string.IsNullOrEmpty(Venue_Contact_ID))
            {
                Guid address_ID = new Guid(Venue_Address_ID);
                Guid person_ID = new Guid(Venue_Contact_ID);

                Venues venue = new Venues(_connString);
                venue.Venue_Name = txtVenueName.Text;
                venue.Address_ID = address_ID;
                venue.Venue_Contact = person_ID;

                Guid? venue_ID = venue.Insert_Venue(user_ID);

                if (venue_ID != null)
                {
                    Venue_ID = venue_ID.ToString();
                    Common.Venue_ID = Venue_ID;
                    MessageLabel.Text = string.Format("{0} was added successfully", venue.Venue_Name);
                    PopulateAddress(Venue_Address_ID);
                    PopulatePerson(Venue_Contact_ID);
                    if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                        DivReturn.Visible = true;
                }
            }
            PopulateVenueGridView();
        }
    }
}