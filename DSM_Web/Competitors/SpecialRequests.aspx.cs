using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Collections.Specialized;
using System.Configuration;

public partial class Competitors_SpecialRequests : System.Web.UI.Page
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
        if (!string.IsNullOrEmpty(Show_Entry_Class_ID))
        {
            lstClasses.SelectedValue = Show_Entry_Class_ID.ToString();
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
    private string _show_Entry_Class_ID;
    public string Show_Entry_Class_ID
    {
        get { return _show_Entry_Class_ID; }
        set { _show_Entry_Class_ID = value; }
    }
    private List<SpecialRequests> _specialRequestList;
    public List<SpecialRequests> SpecialRequestList
    {
        get
        {
            if (_specialRequestList == null)
                _specialRequestList = new List<SpecialRequests>();

            return _specialRequestList;
        }
        set { _specialRequestList = value; }
    }
    private void GetCommon()
    {
        Club_ID = Common.Club_ID;
        Show_ID = Common.Show_ID;
        SpecialRequestList = Common.SpecialRequestList;
        Show_Entry_Class_ID = Common.Show_Entry_Class_ID;
    }
    private void StoreCommon()
    {
        Common.Club_ID = Club_ID;
        Common.Show_ID = Show_ID;
        Common.SpecialRequestList = SpecialRequestList;
        Common.Show_Entry_Class_ID = Show_Entry_Class_ID;
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
        SpecialRequestList = null;
        Show_Entry_Class_ID = null;
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
            ShowEntryClasses showEntryClasses = new ShowEntryClasses(_connString);
            List<ShowEntryClasses> tblShowEntryClasses = showEntryClasses.GetShow_Entry_ClassesByShow_ID(show_ID);
            List<ShowEntryClasses> classList = new List<ShowEntryClasses>();
            ShowEntryClasses allClasses = new ShowEntryClasses(_connString);
            allClasses.Class_Name_Description = "All Classes";
            allClasses.Show_Entry_Class_ID = new Guid();
            classList.Add(allClasses);
            foreach (ShowEntryClasses row in tblShowEntryClasses)
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
        FillSpecialRequestGrid(SpecialRequestGridView, true);
        FillSpecialRequestGrid(NoSpecialRequestGridView, false);
        divRequestList.Visible = true;
    }
    private void StoreFormFields()
    {
        Show_Entry_Class_ID = lstClasses.SelectedValue;
    }
    protected void lstClasses_SelectedIndexChanged(object sender, EventArgs e)
    {
        Show_Entry_Class_ID = lstClasses.SelectedValue;
        StoreCommon();
    }
    public void FillSpecialRequestGrid(GridView gv, bool specialRequestsOnly)
    {
        if (!string.IsNullOrEmpty(Show_ID))
        {
            Guid? show_Entry_Class_ID = null;
            if (!string.IsNullOrEmpty(Show_Entry_Class_ID) && Show_Entry_Class_ID != new Guid().ToString())
            {
                show_Entry_Class_ID = new Guid(Show_Entry_Class_ID);
            }
            SpecialRequestList = SpecialRequests.GetSpecialRequestListData(_connString, Show_ID, show_Entry_Class_ID, specialRequestsOnly);
            if (SpecialRequestList != null && SpecialRequestList.Count > 0)
            {
                short ring_No = 0;
                List<SpecialRequests> displayList = new List<SpecialRequests>();
                SpecialRequests displayItem = new SpecialRequests(_connString);
                foreach (SpecialRequests row in SpecialRequestList)
                {
                    if (row.Ring_No != ring_No && ring_No != 0)
                    {
                        //new ring number
                        SpecialRequests completeRow = BuildGridviewRow(displayItem);
                        displayList.Add(completeRow);
                        displayItem = new SpecialRequests(_connString);
                    }
                    //existing ring number
                    displayItem.Ring_No = row.Ring_No;
                    displayItem.Owners.Add(row.Owner);
                    displayItem.Dog_KC_Name = row.Dog_KC_Name;
                    displayItem.Special_Request = row.Special_Request;
                    displayItem.Class_Name = row.Class_Name;
                    displayItem.Dog_Class_ID = row.Dog_Class_ID;
                    displayItem.Show_Entry_Class_ID = row.Show_Entry_Class_ID;
                    displayItem.Show_Final_Class_ID = row.Show_Final_Class_ID;
                    ring_No = row.Ring_No;
                }
                SpecialRequests finalRow = BuildGridviewRow(displayItem);
                displayList.Add(finalRow);
                gv.DataSource = displayList;
                gv.DataBind();
            }

        }
    }
    private SpecialRequests BuildGridviewRow(SpecialRequests displayItem)
    {
        SpecialRequests completeRow = new SpecialRequests(_connString);
        completeRow.Dog_Class_ID = displayItem.Dog_Class_ID;
        completeRow.Show_Entry_Class_ID = displayItem.Show_Entry_Class_ID;
        completeRow.Show_Final_Class_ID = displayItem.Show_Final_Class_ID;
        completeRow.Ring_No = displayItem.Ring_No;
        string ownerList = string.Empty;
        foreach (string owner in displayItem.Owners)
        {
            if (ownerList.IndexOf(owner) == -1)
            {
                ownerList = string.Format("{0}{1}", ownerList, " & " + owner);
            }
        }
        completeRow.Owner = ownerList.Substring(3);
        completeRow.Dog_KC_Name = displayItem.Dog_KC_Name;
        completeRow.Special_Request = displayItem.Special_Request;
        completeRow.Class_Name = displayItem.Class_Name;

        return completeRow;
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
    protected void SpecialRequestGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ListItemCollection listItems = new ListItemCollection();
            Guid show_Entry_Class_ID = new Guid(SpecialRequestGridView.DataKeys[e.Row.RowIndex].Values[1].ToString());
            listItems = GetClassParts(show_Entry_Class_ID);
            Guid show_Final_Class_ID = new Guid(SpecialRequestGridView.DataKeys[e.Row.RowIndex].Values[2].ToString());
            ShowFinalClasses showFinalClasses = new ShowFinalClasses(_connString, show_Final_Class_ID);
            Label lblNewPart = (Label)e.Row.FindControl("lblNewPart");
            if (lblNewPart != null)
            {
                lblNewPart.Text = showFinalClasses.Show_Final_Class_Description;
            }
            DropDownList ddlNewPart = (DropDownList)e.Row.FindControl("ddlNewPart");
            if (ddlNewPart != null)
            {
                foreach (ListItem item in listItems)
                {
                    ddlNewPart.Items.Add(item);
                }
                ddlNewPart.DataBind();
                ddlNewPart.SelectedValue = SpecialRequestGridView.DataKeys[e.Row.RowIndex].Values[2].ToString();
            }
        }
    }
    protected void SpecialRequestGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        SpecialRequestGridView.EditIndex = e.NewEditIndex;
        FillSpecialRequestGrid(SpecialRequestGridView, true);
    }
    protected void SpecialRequestGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        SpecialRequestGridView.EditIndex = -1;
        FillSpecialRequestGrid(SpecialRequestGridView, true);
    }
    protected void SpecialRequestGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;
        Guid dog_Class_ID = new Guid(SpecialRequestGridView.DataKeys[e.RowIndex].Values[0].ToString());
        DogClasses dogClass = new DogClasses(_connString, dog_Class_ID);
        DropDownList ddlNewPart = (DropDownList)SpecialRequestGridView.Rows[e.RowIndex].FindControl("ddlNewPart");
        Guid newShowFinalClassID = new Guid(ddlNewPart.SelectedValue);
        dogClass.Show_Final_Class_ID = newShowFinalClassID;
        dogClass.Update_Dog_Class(dog_Class_ID, user_ID);
        SpecialRequestGridView.EditIndex = -1;
        FillSpecialRequestGrid(SpecialRequestGridView, true);
    }
    protected void NoSpecialRequestGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        NoSpecialRequestGridView.EditIndex = -1;
        FillSpecialRequestGrid(NoSpecialRequestGridView, false);
    }
    protected void NoSpecialRequestGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ListItemCollection listItems = new ListItemCollection();
            Guid show_Entry_Class_ID = new Guid(NoSpecialRequestGridView.DataKeys[e.Row.RowIndex].Values[1].ToString());
            listItems = GetClassParts(show_Entry_Class_ID);
            Guid show_Final_Class_ID = new Guid(NoSpecialRequestGridView.DataKeys[e.Row.RowIndex].Values[2].ToString());
            ShowFinalClasses showFinalClasses = new ShowFinalClasses(_connString, show_Final_Class_ID);
            Label lblNewPart = (Label)e.Row.FindControl("lblNewPart");
            if (lblNewPart != null)
            {
                lblNewPart.Text = showFinalClasses.Show_Final_Class_Description;
            }
            DropDownList ddlNewPart = (DropDownList)e.Row.FindControl("ddlNewPart");
            if (ddlNewPart != null)
            {
                foreach (ListItem item in listItems)
                {
                    ddlNewPart.Items.Add(item);
                }
                ddlNewPart.DataBind();
                ddlNewPart.SelectedValue = NoSpecialRequestGridView.DataKeys[e.Row.RowIndex].Values[2].ToString();
            }
        }
    }
    protected void NoSpecialRequestGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        NoSpecialRequestGridView.EditIndex = e.NewEditIndex;
        FillSpecialRequestGrid(NoSpecialRequestGridView, false);
    }
    protected void NoSpecialRequestGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;
        Guid dog_Class_ID = new Guid(NoSpecialRequestGridView.DataKeys[e.RowIndex].Values[1].ToString());
        DogClasses dogClass = new DogClasses(_connString, dog_Class_ID);
        DropDownList ddlNewPart = (DropDownList)NoSpecialRequestGridView.Rows[e.RowIndex].FindControl("ddlNewPart");
        Guid newShowFinalClassID = new Guid(ddlNewPart.SelectedValue);
        dogClass.Show_Final_Class_ID = newShowFinalClassID;
        dogClass.Update_Dog_Class(dog_Class_ID, user_ID);
        NoSpecialRequestGridView.EditIndex = -1;
        FillSpecialRequestGrid(NoSpecialRequestGridView, false);
    }
    protected void btnPrint_Click(object sender, EventArgs e)
    {
        Session["ctrl"] = PrintPanel;
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('../Print.aspx','PrintMe','height=600px,width=1200px,scrollbars=1');</script>");
    }
}