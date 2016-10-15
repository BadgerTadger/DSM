using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Text;
using BLL;
using System.Configuration;

public partial class ShowAdmin_SplitClasses : System.Web.UI.Page
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
            divGetEntryClasses.Visible = false;
            divEntryClassList.Visible = false;
            divGetFinalClasses.Visible = false;
            divFinalClassList.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Show_ID))
        {
            Show_ID = Common.Show_ID;
            PopulateShow(Show_ID);
            divGetEntryClasses.Visible = true;
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
                divGetEntryClasses.Visible = false;
                divEntryClassList.Visible = false;
                divGetFinalClasses.Visible = false;
                divFinalClassList.Visible = false;
            }
        }
        if (FinalClassNameList != null && FinalClassNameList.Count > 0)
        {
            //PopulateFinalClassGridView();
            divFinalClassList.Visible = true;
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
    private List<EntryClassesCount> _entryClassList;
    public List<EntryClassesCount> EntryClassList
    {
        get { return _entryClassList; }
        set { _entryClassList = value; }
    }
    private List<FinalClassNames> _finalClassNameList;
    public List<FinalClassNames> FinalClassNameList
    {
        get { return _finalClassNameList; }
        set { _finalClassNameList = value; }
    }
    private short _orderBy;
    public short OrderBy
    {
        get { return _orderBy; }
        set { _orderBy = value; }
    }
    private void GetCommon()
    {
        Club_ID = Common.Club_ID;
        Show_ID = Common.Show_ID;
        FinalClassNameList = Common.FinalClassNameList;
    }
    private void StoreCommon()
    {
        Common.Club_ID = Club_ID;
        Common.Show_ID = Show_ID;
        Common.FinalClassNameList = FinalClassNameList;
    }
    private void ResetPage()
    {
        divGetEntryClasses.Visible = false;
        divClubDetails.Visible = false;
        divClubList.Visible = true;
        divShowDetails.Visible = false;
        divShowList.Visible = false;
        Club_ID = null;
        Show_ID = null;
        EntryClassList = null;
        FinalClassNameList = null;
        FinalClassGridView.EditIndex = -1;

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
        divGetEntryClasses.Visible = true;
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
    protected void btnGetEntryClasses_Click(object sender, EventArgs e)
    {
        StoreCommon();
        PopulateEntryClassesCountTable();
    }
    protected void PopulateEntryClassesCountTable()
    {
        if (!string.IsNullOrEmpty(Show_ID))
        {
            bool success = false;
            Guid show_ID = new Guid(Show_ID);
            EntryClassesCount entryClasses = new EntryClassesCount(_connString);
            success = entryClasses.PopulateEntryClassCount(show_ID);
            if (success)
            {
                PopulateEntryClassGridView();
            }
            else
            {
                MessageLabel.Text = "Failed to populate the Entry Class Count table!";
                divEntryClassList.Visible = false;
            }
        }
    }
    protected void PopulateEntryClassGridView()
    {
        EntryClassesCount entryClasses = new EntryClassesCount(_connString);
        EntryClassList = entryClasses.GetEntryClassCount();
        if (EntryClassList != null && EntryClassList.Count > 0)
        {
            Common.EntryClassList = EntryClassList;
            EntryClassGridView.DataSource = EntryClassList;
            EntryClassGridView.DataBind();
            divEntryClassList.Visible = true;
            divGetFinalClasses.Visible = true;
        }
        else
        {
            MessageLabel.Text = "No Data for this Show.";
            divEntryClassList.Visible = false;
            divGetFinalClasses.Visible = false;
            divFinalClassList.Visible = false;
        }
    }
    protected void btnGetFinalClasses_Click(object sender, EventArgs e)
    {
        StoreCommon();
        bool success = SplitClasses.PopulateFinalClassNames(_connString);
        if (success)
        {
            FinalClassNameList = SplitClasses.DisplayFinalClassNames(_connString);
            Common.FinalClassNameList = FinalClassNameList;
        }
        PopulateFinalClassGridView();
    }
    private void PopulateFinalClassGridView()
    {
        if (FinalClassNameList != null && FinalClassNameList.Count > 0)
        {
            FinalClassGridView.DataSource = FinalClassNameList;
            FinalClassGridView.DataBind();
            divFinalClassList.Visible = true;
        }
        else
        {
            MessageLabel.Text = "Failed to populate the Final Class Names Grid!";
            divFinalClassList.Visible = false;
        }
    }
    protected void FinalClassGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        StoreCommon();
        TextBox txtOrderBy = (TextBox)FinalClassGridView.Rows[e.RowIndex].FindControl("txtOrderBy");
        TextBox txtShow_Final_Class_Description = (TextBox)FinalClassGridView.Rows[e.RowIndex].FindControl("txtShowFinalClassDescription");
        short orderBy = short.Parse(txtOrderBy.Text);

        SplitClasses.UpdateFinalClassName(_connString, orderBy, txtShow_Final_Class_Description.Text);

        FinalClassGridView.EditIndex = -1;
        FinalClassNameList = SplitClasses.DisplayFinalClassNames(_connString);
        PopulateFinalClassGridView();

    }
    protected void FinalClassGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        StoreCommon();
        FinalClassGridView.EditIndex = e.NewEditIndex;
        PopulateFinalClassGridView();
    }
    protected void FinalClassGridView_RowCancelingEdit(object sender,
                              GridViewCancelEditEventArgs e)
    {
        StoreCommon();
        FinalClassGridView.EditIndex = -1;
        PopulateFinalClassGridView();
    }
    protected void btnCommit_Click(object sender, EventArgs e)
    {
        FinalClassNameList = SplitClasses.DisplayFinalClassNames(_connString);
        StoreCommon();
        if (FinalClassNameList != null && FinalClassNameList.Count > 0)
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;
            ClearFinalClassNames();
            foreach (FinalClassNames finalClassName in FinalClassNameList)
            {
                Guid? show_Final_Class_ID = null;
                ShowEntryClasses showEntryClass = new ShowEntryClasses(_connString, finalClassName.Show_Entry_Class_ID);
                ShowFinalClasses showFinalClass = new ShowFinalClasses(_connString);
                showFinalClass.Show_ID = showEntryClass.Show_ID;
                showFinalClass.Show_Entry_Class_ID = showEntryClass.Show_Entry_Class_ID;
                showFinalClass.Show_Final_Class_Description = finalClassName.Show_Final_Class_Description;
                showFinalClass.Show_Final_Class_No = finalClassName.OrderBy;
                show_Final_Class_ID = showFinalClass.Insert_Show_Final_Class(user_ID);
                if (show_Final_Class_ID == null)
                {
                    MessageLabel.Text = "Show Final Class Insert Failed!";
                    break;
                }
                else
                {
                    MessageLabel.Text = "Show Final Class Insert Successful.";
                }
            }
        }
    }
    protected void btnClearFinalClassNames_Click(object sender, EventArgs e)
    {
        StoreCommon();
        ClearFinalClassNames();
    }
    private void ClearFinalClassNames()
    {
        StringBuilder sb = new StringBuilder("Error List:");
        if (FinalClassNameList != null && FinalClassNameList.Count > 0)
        {
            foreach (FinalClassNames finalClassName in FinalClassNameList)
            {
                int delCount = 0;
                ShowFinalClasses showFinalClasses = new ShowFinalClasses(_connString);
                delCount = showFinalClasses.DeleteShowFinalClassesByShowEntryClass(finalClassName.Show_Entry_Class_ID);
                if (delCount <= 0)
                {
                    sb.AppendLine(string.Format("\nShow Final Class Delete Failed for {0}!", finalClassName.Class_Name_Description));
                }
            }
        }
        //MessageLabel.Text = sb.ToString();
    }
    protected void btnAllocateDogs_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Show_ID))
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            bool success = false;
            Guid show_ID = new Guid(Show_ID);
            success = SplitClasses.AllocateDogsToFinalClasses(_connString, show_ID, user_ID);
            if (success)
                MessageLabel.Text = "Final Class Names successfully Added to Dogs";
            else
                MessageLabel.Text = "Error Adding Class Names from Dogs!";
        }
    }
    protected void btnUnAllocateDogs_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Show_ID))
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            bool success = false;
            success = SplitClasses.UnAllocateDogsFromFinalClasses(_connString, user_ID);
            if (success)
                MessageLabel.Text = "Final Class Names successfully removed Dogs";
            else
                MessageLabel.Text = "Error Removing Class Names from Dogs!";
        }
    }
}