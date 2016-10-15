using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Collections.Specialized;
using System.Configuration;

public partial class Competitors_RunningOrders : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        MessageLabel.Text = string.Empty;
        GetCommon();
        StoreFormFields();
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
            divGetRequestList.Visible = false;
            divRequestList.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Show_ID))
        {
            Show_ID = Common.Show_ID;
            PopulateShow(Show_ID);
            PopulateClassList(Show_ID);
            divGetRequestList.Visible = true;
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
                divGetRequestList.Visible = false;
                divRequestList.Visible = false;
            }
        }
        if (!string.IsNullOrEmpty(Show_Final_Class_ID))
        {
            lstClasses.SelectedValue = Show_Final_Class_ID.ToString();
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
    private string _show_Final_Class_ID;
    public string Show_Final_Class_ID
    {
        get { return _show_Final_Class_ID; }
        set { _show_Final_Class_ID = value; }
    }
    private List<OwnersDogsClassesDrawn> _ownersDogsClassesDrawnList;
    public List<OwnersDogsClassesDrawn> OwnersDogsClassesDrawnList
    {
        get
        {
            if (_ownersDogsClassesDrawnList == null)
                _ownersDogsClassesDrawnList = new List<OwnersDogsClassesDrawn>();

            return _ownersDogsClassesDrawnList;
        }
        set { _ownersDogsClassesDrawnList = value; }
    }
    private void GetCommon()
    {
        Club_ID = Common.Club_ID;
        Show_ID = Common.Show_ID;
        OwnersDogsClassesDrawnList = Common.OwnersDogsClassesDrawnList;
        Show_Final_Class_ID = Common.Show_Final_Class_ID;
    }
    private void StoreCommon()
    {
        Common.Club_ID = Club_ID;
        Common.Show_ID = Show_ID;
        Common.OwnersDogsClassesDrawnList = OwnersDogsClassesDrawnList;
        Common.Show_Final_Class_ID = Show_Final_Class_ID;
    }
    private void ResetPage()
    {
        divGetRequestList.Visible = false;
        divClubDetails.Visible = false;
        divClubList.Visible = true;
        divShowDetails.Visible = false;
        divShowList.Visible = false;
        Club_ID = null;
        Show_ID = null;
        OwnersDogsClassesDrawnList = null;
        Show_Final_Class_ID = null;
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
    private void PopulateClassList(string Show_ID)
    {
        if (!string.IsNullOrEmpty(Show_ID))
        {
            Guid show_ID = new Guid(Show_ID);
            ShowFinalClasses showFinalClasses = new ShowFinalClasses(_connString);
            List<ShowFinalClasses> tblShowFinalClasses = showFinalClasses.GetShow_Final_ClassesByShow_ID(show_ID);
            List<ShowFinalClasses> classList = new List<ShowFinalClasses>();
            ShowFinalClasses allClasses = new ShowFinalClasses(_connString);
            allClasses.Show_Final_Class_Description = "All Classes";
            allClasses.Show_Final_Class_ID = new Guid();
            classList.Add(allClasses);
            foreach (ShowFinalClasses row in tblShowFinalClasses)
            {
                classList.Add(row);
            }
            lstClasses.DataSource = classList;
            lstClasses.DataBind();
        }
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
        PopulateClassList(Show_ID);
        divGetRequestList.Visible = true;
    }
    protected void btnGetRequestList_Click(object sender, EventArgs e)
    {
        FillRunningOrdersGrid(RunningOrdersGridView, true);
        divRequestList.Visible = true;
    }
    private void StoreFormFields()
    {
        Show_Final_Class_ID = lstClasses.SelectedValue;
    }
    protected void lstClasses_SelectedIndexChanged(object sender, EventArgs e)
    {
        Show_Final_Class_ID = lstClasses.SelectedValue;
        StoreCommon();
    }
    public void FillRunningOrdersGrid(GridView gv, bool display)
    {
        if (!string.IsNullOrEmpty(Show_ID))
        {
            Guid? show_Final_Class_ID = null;
            if (!string.IsNullOrEmpty(Show_Final_Class_ID) && Show_Final_Class_ID != new Guid().ToString())
            {
                show_Final_Class_ID = new Guid(Show_Final_Class_ID);
            }
            Guid show_ID = new Guid(Show_ID);
            List<Guid> showList = new List<Guid>();
            showList.Add(show_ID);
            LinkedShows ls = new LinkedShows(_connString);
            List<LinkedShows> lsList = ls.GetLinked_ShowsByParent_ID(show_ID);
            if (lsList != null && lsList.Count > 0)
            {
                foreach (LinkedShows linkedShow in lsList)
                {
                    showList.Add(linkedShow.Child_Show_ID);
                }
            }
            RunningOrders.SetDay1Show_ID(_connString, showList);
            List<OwnersDogsClassesDrawn> oDCDList = OwnersDogsClassesDrawn.GetOwnersDogsClassesDrawnListData(_connString, show_ID, show_Final_Class_ID, display);
            if (display)
            {
                gv.DataSource = oDCDList;
                gv.DataBind();
            }
            else
            {
                OwnersDogsClassesDrawnList = oDCDList;
            }
        }
    }
    private ListItemCollection GetClassParts(Guid show_Entry_Class_ID)
    {
        ListItemCollection listItems = new ListItemCollection();
        ShowFinalClasses showFinalClasses = new ShowFinalClasses(_connString);
        List<ShowFinalClasses> showFinalClassList = showFinalClasses.GetShow_Final_ClassesByShow_Entry_Class_ID(show_Entry_Class_ID);
        foreach (ShowFinalClasses row in showFinalClassList)
        {
            ListItem item = new ListItem(row.Show_Final_Class_Description, row.Show_Final_Class_ID.ToString());
            listItems.Add(item);
        }
        return listItems;
    }
    protected void RunningOrdersGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Guid dog_Class_ID = new Guid(RunningOrdersGridView.DataKeys[e.Row.RowIndex].Values[1].ToString());
            DogClasses dogClass = new DogClasses(_connString, dog_Class_ID);
            string strRunningOrder = "0";
            if (dogClass.Running_Order != null)
                strRunningOrder = dogClass.Running_Order.ToString();
            Label lblRunningOrder = (Label)e.Row.FindControl("lblRunningOrder");
            if (lblRunningOrder != null)
            {
                lblRunningOrder.Text = strRunningOrder;
            }
            TextBox txtRunningOrder = (TextBox)e.Row.FindControl("txtRunningOrder");
            if (txtRunningOrder != null)
            {
                txtRunningOrder.Text = strRunningOrder;
            }
        }
    }
    protected void RunningOrdersGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        RunningOrdersGridView.EditIndex = e.NewEditIndex;
        FillRunningOrdersGrid(RunningOrdersGridView, true);
    }
    protected void RunningOrdersGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        RunningOrdersGridView.EditIndex = -1;
        FillRunningOrdersGrid(RunningOrdersGridView, true);
    }
    protected void RunningOrdersGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        Guid dog_Class_ID = new Guid(RunningOrdersGridView.DataKeys[e.RowIndex].Values[1].ToString());
        DogClasses dogClass = new DogClasses(_connString, dog_Class_ID);
        TextBox txtRunningOrder = (TextBox)RunningOrdersGridView.Rows[e.RowIndex].FindControl("txtRunningOrder");
        if (string.IsNullOrEmpty(txtRunningOrder.Text) || txtRunningOrder.Text == "0")
            dogClass.Running_Order = null;
        else
        {
            short test;
            short.TryParse(txtRunningOrder.Text, out test);
            if (test > 0)
                dogClass.Running_Order = short.Parse(txtRunningOrder.Text);
            else
                dogClass.Running_Order = null;
        }
        dogClass.Update_Dog_Class(dog_Class_ID, user_ID);
        RunningOrdersGridView.EditIndex = -1;
        FillRunningOrdersGrid(RunningOrdersGridView, true);
    }
    protected void btnAllocate_Click(object sender, EventArgs e)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;
        RunningOrders.AllocateRunningOrders(_connString, Show_ID, user_ID);
    }
    protected void btnClearRunningOrders_Click(object sender, EventArgs e)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;
        RunningOrders.ClearRunningOrders(_connString, Show_ID, user_ID);
    }
}