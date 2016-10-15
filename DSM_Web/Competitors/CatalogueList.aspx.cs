using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Configuration;

public partial class Competitors_CatalogueList : System.Web.UI.Page
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
            divShowList.Visible = true;
        }
        else
        {
            PopulateClubGridView();
            divClubList.Visible = true;
            divClubDetails.Visible = false;
            divShowList.Visible = false;
            divGetCatalogueList.Visible = false;
            divCatalogueList.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Show_ID))
        {
            Show_ID = Common.Show_ID;
            PopulateShow(Show_ID);
            divGetCatalogueList.Visible = true;
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
                divGetCatalogueList.Visible = false;
                divCatalogueList.Visible = false;
            }
        }
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
    private string _previousOwner;
    public string PreviousOwner
    {
        get { return _previousOwner; }
        set { _previousOwner = value; }
    }
    private List<CatalogueList> _catalogueListByRingNumberList;
    public List<CatalogueList> CatalogueListByRingNumberList
    {
        get 
        {
            if (_catalogueListByRingNumberList == null)
                _catalogueListByRingNumberList = new List<CatalogueList>();

            return _catalogueListByRingNumberList; 
        }
        set { _catalogueListByRingNumberList = value; }
    }
    private void GetCommon()
    {
        Club_ID = Common.Club_ID;
        Show_ID = Common.Show_ID;
        CatalogueListByRingNumberList = Common.CatalogueListByRingNumberList;
    }
    private void StoreCommon()
    {
        Common.Club_ID = Club_ID;
        Common.Show_ID = Show_ID;
        Common.CatalogueListByRingNumberList = CatalogueListByRingNumberList;
    }
    private void ResetPage()
    {
        divGetCatalogueList.Visible = false;
        divClubDetails.Visible = false;
        divClubList.Visible = true;
        divShowDetails.Visible = false;
        divShowList.Visible = false;
        Club_ID = null;
        Show_ID = null;
        CatalogueListByRingNumberList = null;
        StoreCommon();
    }
    private void PopulateClubGridView()
    {
        Clubs club = new Clubs(_connString);
        List<Clubs> tblClubs = club.GetClubs();
        ClubGridView.DataSource = tblClubs;
        ClubGridView.DataBind();
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
    protected void btnChangeClub_Click(object sender, EventArgs e)
    {
        ResetPage();
        Common.Reset();
        PopulateClubGridView();
        divClubList.Visible = true;
    }
    protected void btnChangeShow_Click(object sender, EventArgs e)
    {
        ResetPage();
        Common.Reset();
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
    protected void ShowGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = ShowGridView.SelectedRow;
        string s_id = ShowGridView.DataKeys[row.RowIndex]["Show_ID"].ToString();
        string c_id = ShowGridView.DataKeys[row.RowIndex]["Club_ID"].ToString();
        Show_ID = s_id;
        Common.Show_ID = Show_ID;
        Club_ID = c_id;
        Common.Club_ID = Club_ID;

        PopulateClub(Club_ID);
        PopulateShowGridView(Club_ID);
        PopulateShow(Show_ID);
        divGetCatalogueList.Visible = true;
    }
    protected void btnGetCatalogueList_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Show_ID))
        {
            divCatalogueList.Visible = true;
            CatalogueListByRingNumberList = CatalogueList.GetCatalogueListData(_connString, Show_ID);
            if (CatalogueListByRingNumberList != null && CatalogueListByRingNumberList.Count > 0)
            {
                short ring_No = 0;
                List<CatalogueList> displayList = new List<CatalogueList>();
                CatalogueList displayItem = new CatalogueList(_connString);
                foreach (CatalogueList row in CatalogueListByRingNumberList)
                {
                    if (row.Ring_No != ring_No && ring_No != 0)
                    {
                        //new ring number
                        CreateDisplayItem(displayItem);
                        displayList.Add(displayItem);
                        displayItem = new CatalogueList(_connString);
                    }
                    //existing ring number
                    displayItem.Ring_No = row.Ring_No;
                    displayItem.Owners.Add(row.Owner);
                    displayItem.Addresses.Add(row.Address);
                    displayItem.Dog_KC_Name = row.Dog_KC_Name;
                    displayItem.Dog_Breed_Description = row.Dog_Breed_Description;
                    displayItem.Dog_Gender = row.Dog_Gender;
                    displayItem.Date_Of_Birth = row.Date_Of_Birth;
                    displayItem.Breeders.Add(row.Breeder);
                    displayItem.Sire = row.Sire;
                    displayItem.Dam = row.Dam;
                    displayItem.Class_NameList.Add(row.Class_Name);
                    displayItem.BreederIsOwner = row.BreederIsOwner;
                    displayItem.Catalogue = row.Catalogue;
                    ring_No = row.Ring_No;
                }
                CreateDisplayItem(displayItem);
                displayList.Add(displayItem);
            }
        }
    }

    private void CreateDisplayItem(CatalogueList displayItem)
    {
        //TableRow r0 = new TableRow();
        //TableCell r0c0 = new TableCell();
        //r0c0.Text = string.Empty;
        //r0c0.CssClass = "tableCellWidth1";
        //r0.Cells.Add(r0c0);
        //TableCell r0c2 = new TableCell();
        //r0c2.Text = string.Empty;
        //r0c2.CssClass = "tableCellWidth2";
        //r0.Cells.Add(r0c2);
        //TableCell r0c3 = new TableCell();
        //r0c3.Text = string.Empty;
        //r0c3.CssClass = "tableCellWidth3";
        //r0.Cells.Add(r0c3);
        //TableCell r0c4 = new TableCell();
        //r0c4.Text = string.Empty;
        //r0c4.CssClass = "tableCellWidth4";
        //r0.Cells.Add(r0c4);
        //TableCell r0c5 = new TableCell();
        //r0c5.Text = string.Empty;
        //r0c5.CssClass = "tableCellWidth5";
        //r0.Cells.Add(r0c5);
        //TableCell r0c6 = new TableCell();
        //r0c6.Text = string.Empty;
        //r0c6.CssClass = "tableCellWidth6";
        //r0.Cells.Add(r0c6);
        //TableCell r0c7 = new TableCell();
        //r0c7.Text = string.Empty;
        //r0c7.CssClass = "tableCellWidth7";
        //r0.Cells.Add(r0c7);
        //TableCell r0c8 = new TableCell();
        //r0c8.Text = string.Empty;
        ////r0c8.CssClass = "tableCellWidth8";
        //r0.Cells.Add(r0c8);
        //tblCatalogueTable.Rows.Add(r0);

        TableRow r1 = new TableRow();
        TableCell r1c1 = new TableCell();
        r1c1.CssClass = "CellBold";
        if (displayItem.Catalogue)
        {
            r1c1.Text = "*";
        }
        else
        {
            r1c1.Text = string.Empty;
        }
        r1.Cells.Add(r1c1);
        string ownerList = string.Empty;
        foreach (string owner in displayItem.Owners)
        {
            if (ownerList.IndexOf(owner) == -1)
            {
                ownerList = string.Format("{0}{1}", ownerList, " & " + owner);
            }
        }
        TableCell r1c2 = new TableCell();
        r1c2.ColumnSpan = 2;
        r1c2.CssClass = "CellBold";
        r1c2.Text = ownerList.Substring(3);
        r1.Cells.Add(r1c2);
        TableCell r1c3 = new TableCell();
        r1c3.ColumnSpan = 5;
        r1c3.Text = displayItem.Addresses[0];
        r1.Cells.Add(r1c3);
        if(displayItem.Owners[0] != PreviousOwner)
            tblCatalogueTable.Rows.Add(r1);
        PreviousOwner = displayItem.Owners[0];

        TableRow r2 = new TableRow();
        TableCell r2c1 = new TableCell();
        r2c1.CssClass = "CellBold";
        r2c1.Text = displayItem.Ring_No.ToString();
        r2.Cells.Add(r2c1);
        TableCell r2c2 = new TableCell();
        r2c2.CssClass = "CellBold";
        r2c2.Text = displayItem.Dog_KC_Name;
        r2.Cells.Add(r2c2);
        TableCell r2c3 = new TableCell();
        r2c3.Text = displayItem.Dog_Breed_Description;
        r2.Cells.Add(r2c3);
        TableCell r2c4 = new TableCell();
        r2c4.Text = displayItem.Dog_Gender;
        r2.Cells.Add(r2c4);
        TableCell r2c5 = new TableCell();
        r2c5.Width = 5;
        r2c5.Text = displayItem.Date_Of_Birth;
        r2.Cells.Add(r2c5);
        string breederList = string.Empty;
        foreach (string breeder in displayItem.Breeders)
        {
            if (breederList.IndexOf(breeder) == -1)
            {
                breederList = string.Format("{0}{1}", breederList, " & " + breeder);
            }
        }
        TableCell r2c6 = new TableCell();
        if (displayItem.BreederIsOwner)
        {
            r2c6.Text = "Owner";
        }
        else
        {
            r2c6.Text = breederList.Substring(3);
        }
        r2.Cells.Add(r2c6);
        TableCell r2c7 = new TableCell();
        r2c7.Text = displayItem.Sire;
        r2.Cells.Add(r2c7);
        TableCell r2c8 = new TableCell();
        r2c8.Text = displayItem.Dam;
        r2.Cells.Add(r2c8);
        tblCatalogueTable.Rows.Add(r2);


        string classList = string.Empty;
        foreach (string className in displayItem.Class_NameList)
        {
            if (!string.IsNullOrEmpty(className))
            {
                if (classList.IndexOf(className) == -1)
                {
                    classList = string.Format("{0}{1}", classList, " & " + className);
                    TableRow r3 = new TableRow();
                    TableCell r3c1 = new TableCell();
                    r3c1.ColumnSpan = 8;
                    r3c1.CssClass = "CellRightBold";
                    r3c1.Text = className;
                    r3.Cells.Add(r3c1);
                    tblCatalogueTable.Rows.Add(r3);
                }
            }
        }
    }
}