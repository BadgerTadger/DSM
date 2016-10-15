using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Configuration;

public partial class Competitors_ChangeHandler : System.Web.UI.Page
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
            divOwners.Visible = false;
            divOwnersDogsClasses.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Show_ID))
        {
            Show_ID = Common.Show_ID;
            PopulateShow(Show_ID);
            divOwners.Visible = true;
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
                divOwners.Visible = false;
                divOwnersDogsClasses.Visible = false;
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
    private List<OwnersDogsClassesHandlers> _ownersDogsClassesHandlersList;
    public List<OwnersDogsClassesHandlers> OwnersDogsClassesHandlersList
    {
        get
        {
            if (_ownersDogsClassesHandlersList == null)
                _ownersDogsClassesHandlersList = new List<OwnersDogsClassesHandlers>();

            return _ownersDogsClassesHandlersList;
        }
        set { _ownersDogsClassesHandlersList = value; }
    }
    private void GetCommon()
    {
        Club_ID = Common.Club_ID;
        Show_ID = Common.Show_ID;
        OwnersDogsClassesHandlersList = Common.OwnersDogsClassesHandlersList;
    }
    private void StoreCommon()
    {
        Common.Club_ID = Club_ID;
        Common.Show_ID = Show_ID;
        Common.OwnersDogsClassesHandlersList = OwnersDogsClassesHandlersList;
    }
    private void ResetPage()
    {
        divOwners.Visible = false;
        divClubDetails.Visible = false;
        divClubList.Visible = true;
        divShowDetails.Visible = false;
        divShowList.Visible = false;
        Club_ID = null;
        Show_ID = null;
        OwnersDogsClassesHandlersList = null;
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
        divOwners.Visible = true;
        PopulateOwnerList(lstOwners);
    }
    private void PopulateOwnerList(DropDownList listToPopulate)
    {
        Guid show_ID = new Guid(Show_ID);
        DogOwnerList dogOwnerList = new DogOwnerList();
        List<DogOwners> lnkDog_Owners;
        DogOwners dogOwner = new DogOwners(_connString);
        lnkDog_Owners = dogOwner.GetDogOwnersByShow_ID(show_ID);
        if (lnkDog_Owners != null && lnkDog_Owners.Count > 0)
        {
            foreach (DogOwners dogOwnerRow in lnkDog_Owners)
            {
                People person = new People(_connString, dogOwnerRow.Owner_ID);
                dogOwnerList.AddOwner(person);
            }
            dogOwnerList.Sort();
        }
        List<OwnersDogsClassesHandlers> ownerList = new List<OwnersDogsClassesHandlers>();
        if (dogOwnerList != null)
        {
            foreach (People ownerRow in dogOwnerList.MyDogOwnerList)
            {
                OwnersDogsClassesHandlers owner = new OwnersDogsClassesHandlers(_connString);
                owner.Owner = string.Format("{0} {1} {2}", ownerRow.Person_Title, ownerRow.Person_Forename, ownerRow.Person_Surname).TrimStart();
                owner.Owner_ID = ownerRow.Person_ID;
                ownerList.Add(owner);
            }
        }
        if (ownerList != null && ownerList.Count > 0)
        {
            listToPopulate.DataSource = ownerList;
            listToPopulate.DataBind();
        }
    }
    protected void btnGetList_Click(object sender, EventArgs e)
    {
        Guid owner_ID = new Guid(lstOwners.SelectedValue);
        PopulateOwnersDogsClassesGridView();
        divOwnersDogsClasses.Visible = true;
    }
    private void PopulateOwnersDogsClassesGridView()
    {
        Guid owner_ID = new Guid(lstOwners.SelectedValue);
        OwnersDogsClassesHandlers oDCH = new OwnersDogsClassesHandlers(_connString);
        List<OwnersDogsClassesHandlers> oDCHList = oDCH.GetOwnersDogsClassesHandlers(owner_ID);
        OwnersDogsClassesGridView.DataSource = oDCHList;
        OwnersDogsClassesGridView.DataBind();
    }
    protected void OwnersDogsClassesGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ListItemCollection listItems = new ListItemCollection();
            Guid owner_ID = new Guid(OwnersDogsClassesGridView.DataKeys[e.Row.RowIndex].Values[1].ToString());
            Guid handler_ID = new Guid(OwnersDogsClassesGridView.DataKeys[e.Row.RowIndex].Values[2].ToString());
            People handler = new People(_connString, handler_ID);
            Label lblNewHandler = (Label)e.Row.FindControl("lblNewHandler");
            if (lblNewHandler != null)
            {
                lblNewHandler.Text = string.Format("{0} {1} {2}", handler.Person_Title, handler.Person_Forename, handler.Person_Surname).TrimStart();
            }
            DropDownList ddlNewHandler = (DropDownList)e.Row.FindControl("ddlNewHandler");
            if (ddlNewHandler != null)
            {
                //foreach (ListItem item in listItems)
                //{
                //    ddlNewPart.Items.Add(item);
                //}
                //ddlNewPart.DataBind();
                PopulateOwnerList(ddlNewHandler);
                ddlNewHandler.SelectedValue = OwnersDogsClassesGridView.DataKeys[e.Row.RowIndex].Values[2].ToString();
            }
        }
    }
    protected void OwnersDogsClassesGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        OwnersDogsClassesGridView.EditIndex = e.NewEditIndex;
        PopulateOwnersDogsClassesGridView();
    }
    protected void OwnersDogsClassesGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        OwnersDogsClassesGridView.EditIndex = -1;
        PopulateOwnersDogsClassesGridView();
    }
    protected void OwnersDogsClassesGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        Guid dog_Class_ID = new Guid(OwnersDogsClassesGridView.DataKeys[e.RowIndex].Values[0].ToString());
        DogClasses dogClass = new DogClasses(_connString, dog_Class_ID);
        DropDownList ddlNewHandler = (DropDownList)OwnersDogsClassesGridView.Rows[e.RowIndex].FindControl("ddlNewHandler");
        Guid newHandler_ID = new Guid(ddlNewHandler.SelectedValue);
        dogClass.Handler_ID = newHandler_ID;
        dogClass.Update_Dog_Class(dog_Class_ID, user_ID);
        OwnersDogsClassesGridView.EditIndex = -1;
        PopulateOwnersDogsClassesGridView();
    }
}