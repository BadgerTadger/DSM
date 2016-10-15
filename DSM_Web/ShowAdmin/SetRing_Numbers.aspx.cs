using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Configuration;

public partial class ShowAdmin_SetRing_Numbers : System.Web.UI.Page
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
            divSetRingNos.Visible=false;
            divRingNumberList.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Show_ID))
        {
            Show_ID = Common.Show_ID;
            PopulateShow(Show_ID);
            divSetRingNos.Visible = true;
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
                divSetRingNos.Visible = false;
                divRingNumberList.Visible = false;
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
    private List<RingNumbers> _ringNumberList;
    public List<RingNumbers> RingNumberList
    {
        get { return _ringNumberList; }
        set { _ringNumberList = value; }
    }
    private void GetCommon()
    {
        Club_ID = Common.Club_ID;
        Show_ID = Common.Show_ID;
        RingNumberList = Common.RingNumberList;
    }
    private void StoreCommon()
    {
        Common.Club_ID = Club_ID;
        Common.Show_ID = Show_ID;
        Common.RingNumberList = RingNumberList;
    }
    private void ResetPage()
    {
        divSetRingNos.Visible = false;
        divClubDetails.Visible = false;
        divClubList.Visible = true;
        divShowDetails.Visible = false;
        divShowList.Visible = false;
        Club_ID = null;
        Show_ID = null;
        RingNumberList = null;
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
    protected void btnSetRing_Numbers_Click(object sender, EventArgs e)
    {
        StoreCommon();
        PopulateRingNumbersTable();
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
        divSetRingNos.Visible = true;
    }
    protected void PopulateRingNumbersTable()
    {
        if (!string.IsNullOrEmpty(Show_ID))
        {
            Guid show_ID = new Guid(Show_ID);
            Shows show = new Shows(_connString, show_ID);
            bool success = false;
            RingNumbers ringNumbers = new RingNumbers(_connString);
            success = ringNumbers.PopulateRing_Numbers(show_ID);
            if (success)
            {
                PopulateRingNumbersGridView();
            }
            else
            {
                MessageLabel.Text = "Failed to populate the Ring_Numbers table!";
                divRingNumberList.Visible = false;
            }
        }
    }
    protected void PopulateRingNumbersGridView()
    {
        RingNumbers ringNumbers = new RingNumbers(_connString);
        RingNumberList = ringNumbers.GetRing_Numbers();
        if (RingNumberList != null && RingNumberList.Count > 0)
        {
            Common.RingNumberList = RingNumberList;
            RingNumberGridView.DataSource = RingNumberList;
            RingNumberGridView.DataBind();
            divRingNumberList.Visible = true;
        }
        else
        {
            MessageLabel.Text = "No Data for this Show.";
            divRingNumberList.Visible = false;
        }
    }
    protected void btnAllocateRingNumbers_Click(object sender, EventArgs e)
    {
        StoreCommon();
        Guid show_ID = new Guid(Show_ID);
        bool success = false;
        if (RingNumberList != null && RingNumberList.Count > 0)
        {
            foreach (RingNumbers row in RingNumberList)
            {
                success = UpdateRingNumber(show_ID, row.Dog_ID, row.Ring_No);
                if (!success)
                {
                    MessageLabel.Text = string.Format("Failed to update Ring Number {0}.!", row.Ring_No.ToString());
                    break;
                }
            }
        }
        if (success)
            MessageLabel.Text = "Ring numbers updated successfully.";
        else
            MessageLabel.Text = "A problem occurred updating the Ring Numbers!";
    }
    protected void btnResetRingNumbers_Click(object sender, EventArgs e)
    {
        StoreCommon();
        Guid show_ID = new Guid(Show_ID);
        bool success = false;
        if (RingNumberList != null && RingNumberList.Count > 0)
        {
            foreach (RingNumbers row in RingNumberList)
            {
                success = UpdateRingNumber(show_ID, row.Dog_ID, 0);
                if (!success)
                {
                    MessageLabel.Text = string.Format("Failed to reset Ring Number {0}.!", row.Ring_No.ToString());
                    break;
                }
            }
        }
        if (success)
            MessageLabel.Text = "Ring numbers reset successfully.";
        else
            MessageLabel.Text = "A problem occurred resetting the Ring Numbers!";
    }
    private bool UpdateRingNumber(Guid show_ID, Guid dog_ID, short ring_No)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        bool success = false;
        List<DogClasses> dogClassList = new List<DogClasses>();
        DogClasses dogClasses = new DogClasses(_connString);
        dogClassList = dogClasses.GetDog_ClassesByDog_ID(show_ID, dog_ID);
        foreach (DogClasses row in dogClassList)
        {
            if (row.Show_Entry_Class_ID != new Guid())
            {
                Guid dog_Class_ID = new Guid(row.Dog_Class_ID.ToString());
                DogClasses dogClass = new DogClasses(_connString, dog_Class_ID);
                if (ring_No == 0)
                {
                    dogClass.Ring_No = null;
                }
                else
                {
                    dogClass.Ring_No = ring_No;
                }
                success = dogClass.Update_Dog_Class(dog_Class_ID, user_ID);
            }
            else
            {
                success = true;
            }

            if (!success)
                return false;
        }
        return success;
    }
}