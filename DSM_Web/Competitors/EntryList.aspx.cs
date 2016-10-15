using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Configuration;

public partial class Competitors_EntryList : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        MessageLabel.Text = string.Empty;
        if (!Page.IsPostBack)
        {
            ResetPage();
            PopulateClubGridView();
            divClubList.Visible = true;
            divClubDetails.Visible = false;
        }
        else
        {
            GetCommon();
            ExclNFC = chkExcludeNFC.Checked;
            if (!string.IsNullOrEmpty(Common.Club_ID))
            {
                Club_ID = Common.Club_ID;
                PopulateClub(Club_ID);
                PopulateShowGridView(Club_ID);
                divShowList.Visible = true;
            }
            else
            {
                PopulateClubGridView();
                divClubList.Visible = true;
                divClubDetails.Visible = false;
            }
            if (!string.IsNullOrEmpty(Common.Show_ID))
            {
                Show_ID = Common.Show_ID;
                PopulateShow(Show_ID);
                PopulateEntryGridView();
                divEntryList.Visible = true;
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
                    divEntryList.Visible = false;
                }
            }
        }
    }
    private string _entrant_ID;
    public string Entrant_ID
    {
        get { return _entrant_ID; }
        set { _entrant_ID = value; }
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
    private int _entryGridRowIndex;
    public int EntryGridRowIndex
    {
        get { return _entryGridRowIndex; }
        set { _entryGridRowIndex = value; }
    }
    private bool _exclNFC = false;
    public bool ExclNFC
    {
        get { return _exclNFC; }
        set { _exclNFC = value; }
    }
    private void PopulateClubGridView()
    {
        Clubs club = new Clubs(_connString);
        List<Clubs> tblClubs = club.GetClubs();
        ClubGridView.DataSource = tblClubs;
        ClubGridView.DataBind();
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
    protected void btnChangeClub_Click(object sender, EventArgs e)
    {
        ResetPage();
        Common.Reset();
        Entrant_ID = null;
        Common.Entrant_ID = Entrant_ID;
        PopulateClubGridView();
        divClubList.Visible = true;
    }
    private void PopulateClub(string club_ID)
    {
        Guid Club_ID = new Guid(club_ID);
        Clubs club = new Clubs(_connString, Club_ID);

        txtClubLongName.Text = club.Club_Long_Name;
        divClubList.Visible = false;
        divClubDetails.Visible = true;
    }
    private void PopulateShowGridView(string club_ID)
    {
        Guid Club_ID = new Guid(club_ID);
        Shows show = new Shows(_connString);
        List<Shows> tblShows = show.GetShowsByClub_ID(Club_ID);
        ShowGridView.DataSource = tblShows;
        ShowGridView.DataBind();
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
        PopulateEntryGridView();
        divEntryList.Visible = true;
    }
    protected void ShowGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        GridViewRow myRow = e.Row;
        if (myRow.RowType == DataControlRowType.DataRow)
        {
            if (myRow.RowState == DataControlRowState.Normal || myRow.RowState == DataControlRowState.Alternate)
            {
                DateTime closing_Date = DateTime.Parse(DataBinder.Eval(e.Row.DataItem, "Closing_Date").ToString());
                int result = DateTime.Compare(closing_Date, DateTime.Now);

                if (result < 0)
                {
                    e.Row.BackColor = System.Drawing.Color.LightPink;
                    e.Row.ForeColor = System.Drawing.Color.Maroon;
                    LinkButton btn = ((LinkButton)e.Row.Cells[0].Controls[0]);
                    btn.Enabled = false;
                }
            }
        }

    }
    protected void btnChangeShow_Click(object sender, EventArgs e)
    {
        ResetPage();
        Common.Reset();
        Entrant_ID = null;
        Common.Entrant_ID = Entrant_ID;
        PopulateClubGridView();
        divClubList.Visible = true;
    }
    private void PopulateShow(string show_ID)
    {
        Guid Show_ID = new Guid(show_ID);
        Shows show = new Shows(_connString, Show_ID);

        txtShowName.Text = show.Show_Name;
        divShowList.Visible = false;
        divShowDetails.Visible = true;
    }
    private void ResetPage()
    {
        divEntryList.Visible = false;
        divClubDetails.Visible = false;
        divClubList.Visible = true;
        divShowDetails.Visible = false;
        divShowList.Visible = false;
        Club_ID = null;
        Show_ID = null;
        Entrant_ID = null;
        StoreCommon();
    }
    private void PopulateEntryGridView()
    {
        List<Entrants> tblEntrants;
        Entrants entrants = new Entrants(_connString);
        Guid show_ID = new Guid(Show_ID);
        tblEntrants = entrants.GetEntrantsByShow_ID(show_ID, true);
        EntryGridView.DataSource = tblEntrants;
        EntryGridView.DataBind();
    }
    protected void EntryGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            EntryGridRowIndex = e.Row.RowIndex;
            Entrant_ID = EntryGridView.DataKeys[EntryGridRowIndex].Value.ToString();
            if (!string.IsNullOrEmpty(Entrant_ID))
            {
                Guid entrant_ID = new Guid(Entrant_ID);
                GridView gvDogs = e.Row.FindControl("DogGridView") as GridView;
                GridView gvOwners = e.Row.FindControl("OwnerGridView") as GridView;
                List<DogClasses> tblDog_Classes;
                DogClasses dogClasses = new DogClasses(_connString);
                tblDog_Classes = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID, ExclNFC);
                if (tblDog_Classes != null && tblDog_Classes.Count > 0)
                {
                    DogOwnerList dogOwnerList = new DogOwnerList();
                    DogList dogList = new DogList();
                    foreach (DogClasses dogClassRow in tblDog_Classes)
                    {
                        Dogs dog = new Dogs(_connString, (Guid)dogClassRow.Dog_ID);
                        dogList.AddDog(dog);
                        List<DogOwners> lnkDog_Owners;
                        DogOwners dogOwner = new DogOwners(_connString);
                        lnkDog_Owners = dogOwner.GetDogOwnersByDog_ID((Guid)dogClassRow.Dog_ID);
                        if (lnkDog_Owners != null && lnkDog_Owners.Count > 0)
                        {
                            foreach (DogOwners dogOwnerRow in lnkDog_Owners)
                            {
                                People person = new People(_connString, dogOwnerRow.Owner_ID);
                                dogOwnerList.AddOwner(person);
                            }
                            gvOwners.DataSource = dogOwnerList.MyDogOwnerList;
                            gvOwners.DataBind();
                        }
                        dogList.SortDogList();
                        gvDogs.DataSource = dogList.MyDogList;
                        gvDogs.DataBind();
                    }
                }
            }
        }
    }
    protected void DogGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string Dog_ID = ((HiddenField)e.Row.FindControl("hdnID")).Value;
            GridView gvClasses = e.Row.FindControl("ClassGridView") as GridView;
            List<DogClasses> tblDog_Classes;
            DogClasses dogClasses = new DogClasses(_connString);
            if (!string.IsNullOrEmpty(Entrant_ID) && !string.IsNullOrEmpty(Dog_ID))
            {
                Guid entrant_ID = new Guid(Entrant_ID);
                Guid dog_ID = new Guid(Dog_ID);
                tblDog_Classes = dogClasses.GetDog_ClassesByEntrant_ID_Dog_ID(entrant_ID, dog_ID);
                if (tblDog_Classes != null && tblDog_Classes.Count > 0)
                {
                    List<DogClasses> dogClassList = new List<DogClasses>();
                    foreach (DogClasses row in tblDog_Classes)
                    {
                        if (!row.IsShow_Entry_Class_IDNull && row.Show_Entry_Class_ID != new Guid())
                        {
                            DogClasses dogClass = new DogClasses(_connString, (Guid)row.Dog_Class_ID);
                            Dogs dog = new Dogs(_connString, (Guid)row.Dog_ID);
                            dogClass.Dog_Class_ID = row.Dog_Class_ID;
                            dogClass.Dog_KC_Name = dog.Dog_KC_Name;
                            ShowEntryClasses showEntryClass = new ShowEntryClasses(_connString, (Guid)row.Show_Entry_Class_ID);
                            ClassNames className = new ClassNames(_connString, Int32.Parse(showEntryClass.Class_Name_ID.ToString()));
                            dogClass.Class_Name_Description = string.Format("{0} : {1}", showEntryClass.Class_No, className.Description);
                            if (!row.IsHandler_IDNull && row.Handler_ID != new Guid())
                            {
                                People handler = new People(_connString, (Guid)row.Handler_ID);
                                dogClass.Handler_Name = string.Format("{0} {1}", handler.Person_Forename, handler.Person_Surname);
                            }
                            dogClassList.Add(dogClass);
                        }
                    }
                    if (dogClassList != null)
                    {
                        gvClasses.DataSource = dogClassList;
                        gvClasses.DataBind();
                    }
                }
            }
        }
    }
    protected void EntryGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = EntryGridView.SelectedRow;
        string e_id = EntryGridView.DataKeys[row.RowIndex]["Entrant_ID"].ToString();
        Entrant_ID = e_id;
        Common.Entrant_ID = Entrant_ID;
        Common.DogAdded = false;
        Common.DogOwnerList = null;
        PopulateDogList();

        Server.Transfer("~/Competitors/Competitor.aspx");
    }
    private void PopulateDogList()
    {
        List<DogClasses> tblDog_Classes;
        DogClasses dogClasses = new DogClasses(_connString);
        Guid entrant_ID = new Guid(Entrant_ID);
        DogList dogList = new DogList();
        tblDog_Classes = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);
        if (tblDog_Classes != null && tblDog_Classes.Count > 0)
        {
            DogOwnerList dogOwnerList = new DogOwnerList();
            foreach (DogClasses dogClassRow in tblDog_Classes)
            {
                Dogs dog = new Dogs(_connString, (Guid)dogClassRow.Dog_ID);
                dogList.AddDog(dog);
            }
        }
        if (dogList != null)
            Common.MyDogList = dogList.MyDogList;
    }
    private void GetCommon()
    {
        Club_ID = Common.Club_ID;
        Show_ID = Common.Show_ID;
        Entrant_ID = Common.Entrant_ID;
        ExclNFC = Common.ExclNFC;
    }
    private void StoreCommon()
    {
        Common.Club_ID = Club_ID;
        Common.Show_ID = Show_ID;
        Common.Entrant_ID = Entrant_ID;
        Common.ExclNFC = ExclNFC;
    }
    protected void chkExcludeNFC_CheckedChanged(object sender, EventArgs e)
    {
        ExclNFC = chkExcludeNFC.Checked;
        StoreCommon();
    }
}