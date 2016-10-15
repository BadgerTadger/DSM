using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Configuration;

public partial class ShowAdmin_LinkedShows : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        MessageLabel.Text = string.Empty;
        GetCommon();

        if (!Page.IsPostBack)
        {
            if (string.IsNullOrEmpty(Club_ID))
                ResetPage();

            PopulateClubGridView();
            PopulateShowYears();
            if (!string.IsNullOrEmpty(Child_Show_ID))
            {
                PopulateChildShow();
            }
            else
            {
                divChildShowList.Visible = true;
                divChildShowDetails.Visible = false;
            }
            if (!string.IsNullOrEmpty(Parent_Show_ID))
            {
                PopulateParentShow();
                PopulateChildShowGridView();
            }
            else
            {
                divParentShowList.Visible = true;
                divParentShowDetails.Visible = false;
            }
            if (!string.IsNullOrEmpty(Club_ID) && !string.IsNullOrEmpty(Show_Year_ID))
            {
                PopulateClub();
                PopulateParentShowGridView();
                PopulateLinkedShowGridView();
            }
            else
            {
                divClubDetails.Visible = false;
                divParentShowList.Visible = false;
                divParentShowDetails.Visible = false;
                divChildShowList.Visible = false;
                divChildShowDetails.Visible = false;
                divSaveLinkedShows.Visible = false;
            }
            if (!string.IsNullOrEmpty(Linked_Show_ID))
            {
                divParentShowList.Visible = false;
                divParentShowDetails.Visible = true;
                divChildShowList.Visible = false;
                divChildShowDetails.Visible = true;
                divSaveLinkedShows.Visible = false;
            }

        }
    }
    private string _linked_Show_ID;
    public string Linked_Show_ID
    {
        get { return _linked_Show_ID; }
        set { _linked_Show_ID = value; }
    }
    private string _club_ID;
    public string Club_ID
    {
        get { return _club_ID; }
        set { _club_ID = value; }
    }
    private string _show_Year_ID;
    public string Show_Year_ID
    {
        get { return _show_Year_ID; }
        set { _show_Year_ID = value; }
    }
    private string _parent_Show_ID;
    public string Parent_Show_ID
    {
        get { return _parent_Show_ID; }
        set { _parent_Show_ID = value; }
    }
    private string _child_Show_ID;
    public string Child_Show_ID
    {
        get { return _child_Show_ID; }
        set { _child_Show_ID = value; }
    }
    private void GetCommon()
    {
        Club_ID = Common.Club_ID;
        Show_Year_ID = Common.Show_Year_ID;
        Parent_Show_ID = Common.Parent_Show_ID;
        Child_Show_ID = Common.Child_Show_ID;
        Linked_Show_ID = Common.Linked_Show_ID;
    }
    private void StoreCommon()
    {
        Common.Club_ID = Club_ID;
        Common.Show_Year_ID = Show_Year_ID;
        Common.Parent_Show_ID = Parent_Show_ID;
        Common.Child_Show_ID = Child_Show_ID;
        Common.Linked_Show_ID = Linked_Show_ID;
    }
    private void PopulateShowYears()
    {
        ShowYears showYears = new ShowYears(_connString);
        List<ShowYears> lkpShowYears;
        lkpShowYears = showYears.GetShow_Years();
        lstShowYears.DataSource = lkpShowYears;
        lstShowYears.DataBind();
    }
    private void PopulateClubGridView()
    {
        Clubs club = new Clubs(_connString);
        List<Clubs> tblClubs = club.GetClubs();
        ClubGridView.DataSource = tblClubs;
        ClubGridView.DataBind();
        divClubList.Visible = true;
    }
    protected void ClubGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = ClubGridView.SelectedRow;
        string c_id = ClubGridView.DataKeys[row.RowIndex]["Club_ID"].ToString();

        Club_ID = c_id;
        Common.Club_ID = Club_ID;

        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        PopulateClub();
        if (!string.IsNullOrEmpty(Show_Year_ID))
        {
            PopulateParentShowGridView();
            PopulateLinkedShowGridView();
        }
    }
    private void PopulateClub()
    {
        Guid club_ID = new Guid(Club_ID);
        Clubs club = new Clubs(_connString, club_ID);

        txtClubLongName.Text = club.Club_Long_Name;
        divClubList.Visible = false;
        divClubDetails.Visible = true;
    }
    private void PopulateParentShowGridView()
    {
        List<LinkedShows> lnkLinkedShows;
        LinkedShows linkedShows = new LinkedShows(_connString);
        lnkLinkedShows = linkedShows.GetLinked_Shows();
        Guid club_ID = new Guid(Club_ID);
        int show_Year_ID = Int32.Parse(Show_Year_ID);
        List<Shows> tblShows;
        Shows show = new Shows(_connString);
        tblShows = show.GetShowsByClub_ID_And_Show_Year_ID(club_ID, show_Year_ID);

        List<Shows> parentShowList = new List<Shows>();
        foreach (Shows showRow in tblShows)
        {
            if (lnkLinkedShows.Count == 0)
            {
                Shows newShow = new Shows(_connString, (Guid)showRow.Show_ID);
                parentShowList.Add(newShow);
            }
            else
            {
                foreach (LinkedShows linkedShowRow in lnkLinkedShows)
                {
                    if (showRow.Show_ID != linkedShowRow.Parent_Show_ID && showRow.Show_ID != linkedShowRow.Child_Show_ID)
                    {
                        Shows newShow = new Shows(_connString, (Guid)showRow.Show_ID);
                        parentShowList.Add(newShow);
                    }
                }
            }
        }
        if (parentShowList != null && parentShowList.Count > 0)
        {
            ParentShowGridView.DataSource = parentShowList;
            ParentShowGridView.DataBind();
            divParentShowList.Visible = true;
            divParentShowDetails.Visible = false;
        }
        else
        {
            MessageLabel.Text = "There are no unlinked shows for this Club.";
        }
    }

    private void PopulateParentShow()
    {
        Guid parent_Show_ID = new Guid(Parent_Show_ID);
        Shows show = new Shows(_connString, parent_Show_ID);
        txtParentShowName.Text = show.Show_Name;
        divParentShowList.Visible = false;
        divParentShowDetails.Visible = true;
    }
    private void PopulateChildShowGridView()
    {
        Guid club_ID = new Guid(Club_ID);
        int show_Year_ID = Int32.Parse(Show_Year_ID);
        List<Shows> tblShows;
        Shows show = new Shows(_connString);
        tblShows = show.GetShowsByClub_ID_And_Show_Year_ID(club_ID, show_Year_ID);
        List<LinkedShows> lnkLinkedShows;
        LinkedShows linkedShows = new LinkedShows(_connString);
        lnkLinkedShows = linkedShows.GetLinked_Shows();

        Guid parent_Show_ID = new Guid(Parent_Show_ID);
        List<Shows> childShowList = new List<Shows>();
        foreach (Shows row in tblShows)
        {
            if (lnkLinkedShows.Count == 0 && row.Show_ID != parent_Show_ID)
            {
                Shows childShow = new Shows(_connString, (Guid)row.Show_ID);
                childShowList.Add(childShow);
            }
            else
            {
                foreach (LinkedShows linkedShowRow in lnkLinkedShows)
                {
                    if (row.Show_ID != parent_Show_ID && row.Show_ID != linkedShowRow.Parent_Show_ID && row.Show_ID != linkedShowRow.Child_Show_ID)
                    {
                        Shows childShow = new Shows(_connString, (Guid)row.Show_ID);
                        childShowList.Add(childShow);
                    }
                }
            }
        }
        if (childShowList != null && childShowList.Count > 0)
        {
            ChildShowGridView.DataSource = childShowList;
            ChildShowGridView.DataBind();
        }
        else
        {
            MessageLabel.Text = "There is no second, unlinked show for this Club.";
        }
    }
    private void PopulateChildShow()
    {
        Guid child_Show_ID = new Guid(Child_Show_ID);
        Shows show = new Shows(_connString, child_Show_ID);
        txtChildShowName.Text = show.Show_Name;
        divChildShowList.Visible = false;
        divChildShowDetails.Visible = true;
    }
    protected void ParentShowGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = ParentShowGridView.SelectedRow;
        string s_id = ParentShowGridView.DataKeys[row.RowIndex]["Show_ID"].ToString();
        Parent_Show_ID = s_id;
        Common.Parent_Show_ID = Parent_Show_ID;
        PopulateParentShow();
        PopulateChildShowGridView();
        divParentShowList.Visible = false;
        divParentShowDetails.Visible = true;
        divChildShowList.Visible = true;
        divChildShowDetails.Visible = false;
    }
    protected void btnChangeParentShow_Click(object sender, EventArgs e)
    {
        Parent_Show_ID = null;
        Common.Parent_Show_ID = Parent_Show_ID;
        Child_Show_ID = null;
        Common.Child_Show_ID = Child_Show_ID;
        divParentShowList.Visible = true;
        divParentShowDetails.Visible = false;
        divChildShowList.Visible = false;
        divChildShowDetails.Visible = false;
    }
    protected void ChildShowGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = ChildShowGridView.SelectedRow;
        string s_id = ChildShowGridView.DataKeys[row.RowIndex]["Show_ID"].ToString();
        Child_Show_ID = s_id;
        Common.Child_Show_ID = Child_Show_ID;
        PopulateChildShow();
        divChildShowList.Visible = false;
        divChildShowDetails.Visible = true;
        divSaveLinkedShows.Visible = true;
    }
    protected void btnChangeChildShow_Click(object sender, EventArgs e)
    {
        Child_Show_ID = null;
        Common.Child_Show_ID = Child_Show_ID;
        divChildShowList.Visible = true;
        divChildShowDetails.Visible = false;
    }
    protected void lstShowYears_SelectedIndexChanged(object sender, EventArgs e)
    {
        Show_Year_ID = lstShowYears.SelectedValue;
        Common.Show_Year_ID = Show_Year_ID;
        if (!string.IsNullOrEmpty(Club_ID))
        {
            PopulateParentShowGridView();
            PopulateLinkedShowGridView();
        }
    }
    protected void btnChangeClub_Click(object sender, EventArgs e)
    {
        ResetPage();
    }
    private void ResetPage()
    {
        Child_Show_ID = null;
        Common.Child_Show_ID = Child_Show_ID;
        Parent_Show_ID = null;
        Common.Parent_Show_ID = Parent_Show_ID;
        Club_ID = null;
        Common.Club_ID = Club_ID;
        Show_Year_ID = null;
        Common.Show_Year_ID = Show_Year_ID;
        Linked_Show_ID = null;
        Common.Linked_Show_ID = Linked_Show_ID;
        lstShowYears.SelectedIndex = -1;
        divClubList.Visible = true;
        divClubDetails.Visible = false;
        divParentShowList.Visible = false;
        divParentShowDetails.Visible = false;
        divChildShowList.Visible = false;
        divChildShowDetails.Visible = false;
        divSaveLinkedShows.Visible = false;
        divClubLinkedShows.Visible = false;
    }
    protected void btnSaveLinkedShows_Click(object sender, EventArgs e)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;
        Guid parent_Show_ID = new Guid(Parent_Show_ID);
        Guid child_Show_ID = new Guid(Child_Show_ID);
        Guid? linked_Show_ID;
        LinkedShows linkedShow = new LinkedShows(_connString);
        linkedShow.Parent_Show_ID = parent_Show_ID;
        linkedShow.Child_Show_ID = child_Show_ID;
        linked_Show_ID = linkedShow.Insert_Linked_Shows(user_ID);

        if (linked_Show_ID != null)
        {
            Linked_Show_ID = linked_Show_ID.ToString();
            Common.Linked_Show_ID = Linked_Show_ID;
            divSaveLinkedShows.Visible = false;
            MessageLabel.Text = "Shows linked successfully.";
        }
        else
            MessageLabel.Text = "Show linking failed!";
    }
    private void PopulateLinkedShowGridView()
    {
        Guid club_ID = new Guid(Club_ID);
        int show_Year_ID = Int32.Parse(Show_Year_ID);
        LinkedShows linkedShows = new LinkedShows(_connString);
        List<LinkedShows> lnkLinkedShows;
        lnkLinkedShows = linkedShows.GetLinked_Shows();
        List<LinkedShows> linkedShowList = new List<LinkedShows>();
        foreach (LinkedShows linkedShowRow in lnkLinkedShows)
        {
            Shows parentShow = new Shows(_connString, linkedShowRow.Parent_Show_ID);
            Shows childShow = new Shows(_connString, linkedShowRow.Child_Show_ID);
            if (parentShow.Club_ID == club_ID && parentShow.Show_Year_ID == show_Year_ID)
            {
                LinkedShows newLinkedShow = new LinkedShows(_connString, linkedShowRow.Linked_Show_ID);
                newLinkedShow.Parent_Show_Name = parentShow.Show_Name;
                newLinkedShow.Parent_Show_Opens = parentShow.Show_Opens;
                newLinkedShow.Child_Show_Name = childShow.Show_Name;
                newLinkedShow.Child_Show_Opens = childShow.Show_Opens;
                linkedShowList.Add(newLinkedShow);
            }
        }
        if (linkedShowList != null && linkedShowList.Count > 0)
        {
            LinkedShowsGridView.DataSource = linkedShowList;
            LinkedShowsGridView.DataBind();
            divClubLinkedShows.Visible = true;
        }
        else
        {
            divClubLinkedShows.Visible = false;
        }
    }
    protected void LinkedShowsGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //TODO
    }
}