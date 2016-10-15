using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Configuration;

public partial class ShowAdmin_AddressSetup : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        MessageLabel.Text = string.Empty;
        GetCommon();

        if (!string.IsNullOrEmpty(Common.Address_ID))
        {
            Address_ID = Common.Address_ID;
            DivAddAddress.Visible = false;
            divNewAddress.Visible = true;
            divUpdateAddress.Visible = true;
            if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                DivReturn.Visible = true;
        }
        else
        {
            DivAddAddress.Visible = true;
            divNewAddress.Visible = false;
            divUpdateAddress.Visible = false;
            DivReturn.Visible = false;
        }
        if (!Page.IsPostBack)
        {
            if(!string.IsNullOrEmpty(Address_ID))
                PopulateAddress();

            PopulateAddressGridView();

            string returnChars = Request.QueryString["return"];
            btnReturn.PostBackUrl = Common.ReturnPath(Request.QueryString, returnChars, "a");
        }
    }

    protected void btnAddAddress_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtAddress1.Text))
        {
            MessageLabel.Text = "The first line of the address must be included.";
        }
        else
        {
            Addresses address = new Addresses(_connString);
            address.Address_1 = txtAddress1.Text;
            address.Address_2 = txtAddress2.Text;
            address.Address_Town = txtTown.Text;
            address.Address_City = txtCity.Text;
            address.Address_County = txtCounty.Text;
            address.Address_Postcode = txtPostcode.Text;

            if (AddressFound(address))
            {
                MessageLabel.Text = "This Address already exists";
            }
            else
            {
                MembershipUser userInfo = Membership.GetUser();
                Guid user_ID = (Guid)userInfo.ProviderUserKey;

                Guid? address_ID = address.Insert_Address(user_ID);

                if (address_ID != null)
                {
                    Address_ID = address_ID.ToString();
                    Common.Address_ID = Address_ID;
                    MessageLabel.Text = "Address was added successfully";
                    //ClearEntryFields();
                    if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                        DivReturn.Visible = true;

                    DivAddAddress.Visible = false;
                    divNewAddress.Visible = true;
                    divUpdateAddress.Visible = true;
                    PopulateAddressGridView();
                    StoreCommon();
                }
                else
                {
                    DivAddAddress.Visible = true;
                    divNewAddress.Visible = false;
                    divUpdateAddress.Visible = false;
                }
            }
        }
    }

    private bool AddressFound(Addresses address)
    {
        bool addressFound = false;
        List<Addresses> tblAddresses;
        Addresses a = new Addresses(_connString);
        tblAddresses = a.GetAddresses();
        foreach (Addresses row in tblAddresses)
        {
            if (row.Address_1 == address.Address_1 && row.Address_2 == address.Address_2 && row.Address_Town == address.Address_Town
                && row.Address_City == address.Address_City && row.Address_County == address.Address_County && row.Address_Postcode == address.Address_Postcode)
                addressFound = true;
        }
        return addressFound;
    }

    protected void btnNewAddress_Click(object sender, EventArgs e)
    {
        ResetPage();
    }

    protected void btnUpdateAddress_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtAddress1.Text))
        {
            MessageLabel.Text = "The first line of the address must be included.";
        }
        else
        {
            if (!string.IsNullOrEmpty(Address_ID))
            {
                Guid address_ID = new Guid(Address_ID);
                
                MembershipUser userInfo = Membership.GetUser();
                Guid user_ID = (Guid)userInfo.ProviderUserKey;

                Addresses address = new Addresses(_connString, address_ID);
                if (HasChanges(address))
                {
                    address.Address_1 = txtAddress1.Text;
                    address.Address_2 = txtAddress2.Text;
                    address.Address_Town = txtTown.Text;
                    address.Address_City = txtCity.Text;
                    address.Address_County = txtCounty.Text;
                    address.Address_Postcode = txtPostcode.Text;

                    bool valid = address.Update_Address(address_ID, user_ID);
                    if (valid)
                    {
                        Address_ID = address_ID.ToString();
                        Common.Address_ID = Address_ID;
                        MessageLabel.Text = "Address was updated successfully";
                        //ClearEntryFields();
                        if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                            DivReturn.Visible = true;

                        DivAddAddress.Visible = false;
                        divNewAddress.Visible = true;
                        divUpdateAddress.Visible = true;
                        PopulateAddressGridView();
                        StoreCommon();
                    }
                    else
                    {
                        DivAddAddress.Visible = false;
                        divNewAddress.Visible = true;
                        divUpdateAddress.Visible = true;
                    }
                }
                else
                {
                    MessageLabel.Text = "Update cancelled as no changes have been made.";
                    DivAddAddress.Visible = false;
                    divNewAddress.Visible = true;
                    divUpdateAddress.Visible = true;
                }
            }
        }
    }

    private bool HasChanges(Addresses address)
    {
        bool Changed = false;
        if (address.Address_1 != txtAddress1.Text)
            Changed = true;
        if (address.Address_2 != txtAddress2.Text)
            Changed = true;
        if (address.Address_Town != txtTown.Text)
            Changed = true;
        if (address.Address_City != txtCity.Text)
            Changed = true;
        if (address.Address_County != txtCounty.Text)
            Changed = true;
        if (address.Address_Postcode != txtPostcode.Text)
            Changed = true;

        return Changed;
    }

    private void ResetPage()
    {
        DivAddAddress.Visible = true;
        divNewAddress.Visible = false;
        divUpdateAddress.Visible = false;
        DivReturn.Visible = false;
        ClearEntryFields();
    }

    private void ClearEntryFields()
    {
        Address_ID = string.Empty;
        Common.Address_ID = string.Empty;
        txtAddress1.Text = string.Empty;
        txtAddress2.Text = string.Empty;
        txtTown.Text = string.Empty;
        txtCity.Text = string.Empty;
        txtCounty.Text = string.Empty;
        txtPostcode.Text = string.Empty;
    }

    private void PopulateAddressGridView()
    {
        Addresses addresses = new Addresses(_connString);
        List<Addresses> tblAddresses = addresses.GetAddresses();
        AddressGridView.DataSource = tblAddresses;
        AddressGridView.DataBind();
    }

    private string _address_ID;
    public string Address_ID
    {
        get { return _address_ID; }
        set { _address_ID = value; }
    }

    protected void AddressGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        DivAddAddress.Visible = false;
        divNewAddress.Visible = true;
        divUpdateAddress.Visible = true;

        GridViewRow row = AddressGridView.SelectedRow;
        string id = AddressGridView.DataKeys[row.RowIndex]["Address_ID"].ToString();
        Address_ID = id;
        Common.Address_ID = Address_ID;

        PopulateAddress();

        StoreCommon();

        DivReturn.Visible = true;
    }

    protected void btnAddressSearch_Click(object sender, EventArgs e)
    {
        ResetPage();
        ClearEntryFields();
        string searchValue = txtAddressFilter.Text;
        Addresses addresses = new Addresses(_connString);
        List<Addresses> tblAddresses = null;

        if (AddressSearchType.SelectedValue == "c")
            searchValue = string.Format("%{0}", searchValue);

        switch (AddressFilterBy.SelectedValue)
        {
            case "Address_1":
                tblAddresses = addresses.GetAddressesLikeAddress_1(searchValue);
                break;
            case "Address_Town":
                tblAddresses = addresses.GetAddressesLikeAddress_Town(searchValue);
                break;
            case "Address_City":
                tblAddresses = addresses.GetAddressesLikeAddress_City(searchValue);
                break;
            case "Adddress_County":
                tblAddresses = addresses.GetAddressesLikeAddress_County(searchValue);
                break;
            case "Address_Postcode":
                tblAddresses = addresses.GetAddressesByAddress_Postcode(searchValue);
                break;
            default:
                tblAddresses = addresses.GetAddresses();
                break;
        }

        AddressGridView.DataSource = tblAddresses;
        AddressGridView.DataBind();
        txtAddressFilter.Text = string.Empty;
        AddressFilterBy.SelectedIndex = -1;
        AddressSearchType.SelectedIndex = -1;
    }

    private void PopulateAddress()
    {
        Guid address_ID = new Guid(Address_ID);
        Addresses address = new Addresses(_connString, address_ID);

        txtAddress1.Text = address.Address_1;
        txtAddress2.Text = address.Address_2;
        txtTown.Text = address.Address_Town;
        txtCity.Text = address.Address_City;
        txtCounty.Text = address.Address_County;
        txtPostcode.Text = address.Address_Postcode;
    }

    private void StoreCommon()
    {
        if (!string.IsNullOrEmpty(Address_ID))
        {
            Common.Address_ID = Address_ID;
            string a_ID = Address_ID;
            string a = Request.QueryString["a"];
            if (!string.IsNullOrEmpty(a))
            {
                switch (a)
                {
                    case "p":
                        Common.Person_Address_ID = a_ID;
                        Common.Address_ID = null;
                        break;
                    case "v":
                        Common.Venue_Address_ID = a_ID;
                        Common.Address_ID = null;
                        break;
                    default:
                        break;
                }
            }
        }
    }

    private void GetCommon()
    {
        string a = Request.QueryString["a"];
        if (!string.IsNullOrEmpty(a))
        {
            switch (a)
            {
                case "p":
                    if (!string.IsNullOrEmpty(Common.Person_Address_ID))
                    {
                        Address_ID = Common.Person_Address_ID;
                        Common.Address_ID = Address_ID;
                    }
                    break;
                case "v":
                    if (!string.IsNullOrEmpty(Common.Venue_Address_ID))
                    {
                        Address_ID = Common.Venue_Address_ID;
                        Common.Address_ID = Address_ID;
                    }
                    break;
                default:
                    break;
            }
        }
    }

}