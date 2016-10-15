using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Configuration;

public partial class Competitors_AddDogToClasses : System.Web.UI.Page
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
            if (!string.IsNullOrEmpty(Entrant_ID))
            {
                GetEntrant();
                PopulateListBoxes();
                PopulateDogClassGridView();
                Guid dog_ID = new Guid(lstDogs.Items[0].Value);
                PopulateOwnerList(dog_ID);
            }
            else
                Server.Transfer("~/Competitors/Competitor.aspx");
            if (!string.IsNullOrEmpty(Show_ID))
                PopulateShow();
            if (Common.DogOwnerList != null && Common.DogOwnerList.Count != 0)
            {
                divOwnerList.Visible = true;
                DogOwnerList ownerList = new DogOwnerList();
                ownerList.MyDogOwnerList = Common.DogOwnerList;
                PopulateOwnerGridView(ownerList.MyDogOwnerList);
            }
            else
            {
                divOwnerList.Visible = false;
            }
            if (!string.IsNullOrEmpty(Handler_ID))
            {
                PopulateHandler();
                divHandler.Visible = true;
                divGetHandler.Visible = false;
                divChangeHandler.Visible = true;
                divHandlerDetails.Visible = true;
            }
            else
            {
                divHandler.Visible = true;
                divGetHandler.Visible = true;
                divChangeHandler.Visible = false;
                divHandlerDetails.Visible = false;
            }
            if (!string.IsNullOrEmpty(Show_Entry_Class_ID))
            {
                lstClasses.SelectedValue = Show_Entry_Class_ID.ToString();
            }
            if (!string.IsNullOrEmpty(Dog_ID))
            {
                lstDogs.SelectedValue = Dog_ID.ToString();
            }
            string returnChars = Request.QueryString["return"];
            btnReturn.PostBackUrl = Common.ReturnPath(Request.QueryString, returnChars, "");
        }
    }
    private string _dog_Class_ID;
    public string Dog_Class_ID
    {
        get { return _dog_Class_ID; }
        set { _dog_Class_ID = value; }
    }
    private string _owner_ID;
    public string Owner_ID
    {
        get { return _owner_ID; }
        set { _owner_ID = value; }
    }
    private string _entrant_ID;
    public string Entrant_ID
    {
        get { return _entrant_ID; }
        set { _entrant_ID = value; }
    }
    private string _show_ID;
    public string Show_ID
    {
        get { return _show_ID; }
        set { _show_ID = value; }
    }
    private string _maxClassesPerDog;
    public string MaxClassesPerDog
    {
        get { return _maxClassesPerDog; }
        set { _maxClassesPerDog = value; }
    }
    private string _show_Entry_Class_ID;
    public string Show_Entry_Class_ID
    {
        get { return _show_Entry_Class_ID; }
        set { _show_Entry_Class_ID=value; }
    }
    private string _dog_ID;
    public string Dog_ID
    {
        get { return _dog_ID; }
        set { _dog_ID = value; }
    }
    private string _special_Request;
    public string Special_Request
    {
        get { return _special_Request; }
        set { _special_Request=value; }
    }
    private string _handler_ID;
    public string Handler_ID
    {
        get { return _handler_ID; }
        set { _handler_ID = value; }
    }
    private void GetCommon()
    {
        Dog_Class_ID = Common.Dog_Class_ID;
        Owner_ID = Common.Owner_ID;
        Show_ID = Common.Show_ID;
        Entrant_ID = Common.Entrant_ID;
        MaxClassesPerDog = Common.MaxClassesPerDog;
        Show_Entry_Class_ID = Common.Show_Entry_Class_ID;
        Special_Request = Common.Special_Request;
        Handler_ID = Common.Handler_ID;
    }
    private void StoreCommon()
    {
        Common.Dog_Class_ID = Dog_Class_ID;
        Common.Owner_ID = Owner_ID;
        Common.Show_ID = Show_ID;
        Common.Entrant_ID = Entrant_ID;
        Common.MaxClassesPerDog = MaxClassesPerDog;
        Common.Show_Entry_Class_ID = Show_Entry_Class_ID;
        Common.Special_Request = Special_Request;
        Common.Handler_ID = Handler_ID;
    }
    private void PopulateOwnerList(Guid dog_ID)
    {
        Common.DogOwnerList = null;
        bool foundOwner = false;
        List<DogOwners> lnkDogOwners;
        DogOwners dogOwners = new DogOwners(_connString);
        lnkDogOwners = dogOwners.GetDogOwnersByDog_ID(dog_ID);
        foreach (DogOwners row in lnkDogOwners)
        {
            AddOwnerToList(row.Owner_ID.ToString());
            foundOwner = true;
        }
        if (foundOwner)
            divOwnerList.Visible = true;
    }
    protected void AddOwnerToList(string owner_ID)
    {
        Guid new_Owner_ID = new Guid(owner_ID);
        People person = new People(_connString, new_Owner_ID);
        DogOwnerList ownerList = new DogOwnerList();
        ownerList.MyDogOwnerList = Common.DogOwnerList;
        People pp = null;
        if (ownerList.MyDogOwnerList != null)
            pp = ownerList.MyDogOwnerList.Find(delegate(People p) { return p.Person_ID == new_Owner_ID; });
        if (pp == null)
        {
            int ownerCount = ownerList.AddOwner(person);
            PopulateOwnerGridView(ownerList.MyDogOwnerList);
            Common.DogOwnerList = ownerList.MyDogOwnerList;
        }
    }
    private void PopulateOwnerGridView(List<People> ownerList)
    {
        OwnerGridView.DataSource = ownerList;
        OwnerGridView.DataBind();
    }
    private void PopulateShow()
    {
        Guid show_ID = new Guid(Show_ID);
        Shows show = new Shows(_connString, show_ID);
        txtShowName.Text = show.Show_Name;
        MaxClassesPerDog = show.MaxClassesPerDog.ToString();
    }
    private void GetEntrant()
    {
        Guid entrant_ID = new Guid(Entrant_ID);
        Entrants entrant = new Entrants(_connString, entrant_ID);
        Show_ID = entrant.Show_ID.ToString();
    }
    private void PopulateHandler()
    {
        Guid handler_ID = new Guid(Handler_ID);
        People handler = new People(_connString, handler_ID);
        txtHandlerName.Text = string.Format("{0} {1}", handler.Person_Forename, handler.Person_Surname);
    }
    private void PopulateListBoxes()
    {
        List<DogClasses> tblDogClasses;
        DogClasses dogClasses = new DogClasses(_connString);
        Guid entrant_ID = new Guid(Entrant_ID);
        tblDogClasses = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);
        List<Dogs> dogs = new List<Dogs>();
        foreach (DogClasses row in tblDogClasses)
        {
            Dogs dog = new Dogs(_connString, (Guid)row.Dog_ID);
            Dogs dg = dogs.Find(delegate(Dogs d) { return d.Dog_ID == row.Dog_ID; });
            if (dg == null)
                dogs.Add(dog);
        }
        lstDogs.DataSource = dogs;
        lstDogs.DataBind();

        if (!string.IsNullOrEmpty(Show_ID))
        {
            Guid show_ID = new Guid(Show_ID);
            ShowEntryClasses showEntryClasses = new ShowEntryClasses(_connString);
            List<ShowEntryClasses> tblShowEntryClasses = showEntryClasses.GetShow_Entry_ClassesByShow_ID(show_ID);
            lstClasses.DataSource = tblShowEntryClasses;
            lstClasses.DataBind();
        }
    }
    private void PopulateDogClassGridView()
    {
        List<DogClasses> tblDogClasses;
        DogClasses dogClasses = new DogClasses(_connString);
        Guid entrant_ID = new Guid(Entrant_ID);
        tblDogClasses = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);
        List<DogClasses> dogClassList = new List<DogClasses>();
        foreach (DogClasses row in tblDogClasses)
        {
            if (row.Show_Entry_Class_ID != null && row.Show_Entry_Class_ID != new Guid())
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
            DogClassGridView.DataSource = dogClassList;
            DogClassGridView.DataBind();
        }
    }
    protected void DogClassGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        string dc_id = DogClassGridView.DataKeys[e.RowIndex]["Dog_Class_ID"].ToString();
        Guid dog_Class_ID = new Guid(dc_id);
        DogClasses dogClasses = new DogClasses(_connString, dog_Class_ID);
        dogClasses.DeleteDogClass = true;
        if (dogClasses.Update_Dog_Class(dog_Class_ID, user_ID))
        {
            PopulateDogClassGridView();
        }
    }
    protected void btnAddDogClass_Click(object sender, EventArgs e)
    {
        GetFormFields();
        StoreCommon();
        if (ValidEntry())
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            List<DogClasses> tblDogClasses;
            DogClasses dogClasses = new DogClasses(_connString);
            Guid dog_ID = new Guid(Dog_ID);
            Guid show_Entry_Class_ID = new Guid(Show_Entry_Class_ID);
            Guid entrant_ID = new Guid(Entrant_ID);
            tblDogClasses = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);
            bool rowUpdated = false;
            bool success = false;
            foreach (DogClasses row in tblDogClasses)
            {
                if (dog_ID == row.Dog_ID && !rowUpdated)
                {
                    if (row.IsShow_Entry_Class_IDNull || (!row.IsShow_Entry_Class_IDNull && row.Show_Entry_Class_ID == show_Entry_Class_ID))
                    {
                        Dog_Class_ID = row.Dog_Class_ID.ToString();
                        Guid dog_Class_ID = new Guid(Dog_Class_ID);
                        DogClasses dogClass = new DogClasses(_connString, dog_Class_ID);
                        dogClass.Show_Entry_Class_ID = show_Entry_Class_ID;
                        if (!string.IsNullOrEmpty(Special_Request))
                            dogClass.Special_Request = Special_Request;
                        if (!string.IsNullOrEmpty(Handler_ID))
                        {
                            if (GetClassName(show_Entry_Class_ID) != "NFC")
                            {
                                Guid handler_ID = new Guid(Handler_ID);
                                dogClass.Handler_ID = handler_ID;
                            }
                        }
                        dogClass.DeleteDogClass = false;
                        if (dogClass.Update_Dog_Class(dog_Class_ID, user_ID))
                        {
                            rowUpdated = true;
                            success = true;
                        }
                    }
                }
            }
            if (!rowUpdated)
            {
                DogClasses dogClass = new DogClasses(_connString);
                dogClass.Entrant_ID = entrant_ID;
                dogClass.Dog_ID = dog_ID;
                dogClass.Show_Entry_Class_ID = show_Entry_Class_ID;
                if (!string.IsNullOrEmpty(Special_Request))
                    dogClass.Special_Request = Special_Request;
                if (!string.IsNullOrEmpty(Handler_ID))
                {
                    if (GetClassName(show_Entry_Class_ID) != "NFC")
                    {
                        Guid handler_ID = new Guid(Handler_ID);
                        dogClass.Handler_ID = handler_ID;
                    }
                }
                Guid? dog_Class_ID = new Guid?();
                dog_Class_ID = dogClass.Insert_Dog_Class(user_ID);
                if (dog_Class_ID != null)
                    success = true;
            }
            if (success)
            {
                ShowEntryClasses showEntryClass = new ShowEntryClasses(_connString, show_Entry_Class_ID);
                int class_Name_ID = Int32.Parse(showEntryClass.Class_Name_ID.ToString());
                ClassNames className = new ClassNames(_connString, class_Name_ID);
                string class_Name_Description = className.Description;
                Dogs dog = new Dogs(_connString, dog_ID);
                MessageLabel.Text = string.Format("{0} was successfully added to {1}.", dog.Dog_KC_Name, class_Name_Description);
                PopulateDogClassGridView();
                ClearFormFields();
            }
        }
    }
    private void GetFormFields()
    {
        Dog_ID=lstDogs.SelectedValue;
        Show_Entry_Class_ID = lstClasses.SelectedValue;
        Special_Request = txtSpecialRequest.Text;
    }
    private void ClearFormFields()
    {
        lstDogs.SelectedIndex = -1;
        lstClasses.SelectedIndex = -1;
        txtSpecialRequest.Text = string.Empty;
    }
    private string GetClassName(Guid show_Entry_Class_ID)
    {
        ShowEntryClasses sec = new ShowEntryClasses(_connString, show_Entry_Class_ID);
        ClassNames cn = new ClassNames(_connString, (int)sec.Class_Name_ID);

        return cn.Description;
    }
    private bool IsCorrectClassGender(Dogs dog)
    {
        bool correctGender = false;
        ShowEntryClasses sec = new ShowEntryClasses(_connString, new Guid(Show_Entry_Class_ID));
        DogGender dg = new DogGender(_connString, (int)dog.Dog_Gender_ID);
        switch (dg.Description)
        {
            case "Dog":
                if (sec.Class_Gender == Constants.CLASS_GENDER_DB || sec.Class_Gender == Constants.CLASS_GENDER_D)
                    correctGender = true;
                break;
            case "Bitch":
                if (sec.Class_Gender == Constants.CLASS_GENDER_DB || sec.Class_Gender == Constants.CLASS_GENDER_B)
                    correctGender = true;
                break;
            default:
                break;
        }

        return correctGender;
    }
    private bool ValidEntry()
    {
        bool valid = true;
        Guid show_ID = new Guid(Show_ID);
        Shows show = new Shows(_connString, show_ID);
        List<DogClasses> tblDogClasses;
        DogClasses dogClasses = new DogClasses(_connString);
        Guid entrant_ID = new Guid(Entrant_ID);
        tblDogClasses = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);
        short dogClassCount = 0;
        if (string.IsNullOrEmpty(Handler_ID) && lstClasses.SelectedItem.Text != "NFC")
        {
            MessageLabel.Text = "You must select the Handler.";
            valid = false;
        }
        if (!string.IsNullOrEmpty(Dog_ID) && lstClasses.SelectedItem.Text != "NFC")
        {
            Guid dog_ID = new Guid(Dog_ID);
            Dogs dog = new Dogs(_connString, dog_ID);
            if (!IsCorrectClassGender(dog))
            {
                MessageLabel.Text = "This dog is the wrong gender for this class.";
                valid = false;
            }
        }
        foreach (DogClasses row in tblDogClasses)
        {
            if (!row.IsShow_Entry_Class_IDNull && row.Show_Entry_Class_ID != new Guid() && Dog_ID == row.Dog_ID.ToString())
            {
                if (Show_Entry_Class_ID == row.Show_Entry_Class_ID.ToString())
                {
                    MessageLabel.Text = string.Format("You have already entered this dog in {0}.", GetClassName((Guid)row.Show_Entry_Class_ID));
                    valid = false;
                }
                else if (lstClasses.SelectedItem.Text == "NFC" && GetClassName((Guid)row.Show_Entry_Class_ID) != "NFC")
                {
                    MessageLabel.Text = "This dog is already entered in other classes, so cannot be NFC";
                    valid = false;
                }
                else if (GetClassName((Guid)row.Show_Entry_Class_ID) == "NFC")
                {
                    MessageLabel.Text = "This dog is entered NFC so cannot be entered in other classes.";
                    valid = false;
                }
                if (valid)
                {
                    dogClassCount += 1;
                    if (dogClassCount >= show.MaxClassesPerDog)
                    {
                        MessageLabel.Text = string.Format("There is a maximum of {0} classes per dog for this show.", show.MaxClassesPerDog.ToString());
                        valid = false;
                    }
                }
            }
        }

        return valid;
    }
    protected void btnGetHandler_Click(object sender, EventArgs e)
    {
        GetFormFields();
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "cdc");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=h");
    }
    protected void OwnerGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        divGetHandler.Visible = false;
        divChangeHandler.Visible = true;

        GridViewRow row = OwnerGridView.SelectedRow;
        string p_id = OwnerGridView.DataKeys[row.RowIndex]["Person_ID"].ToString();
        Handler_ID = p_id;
        Common.Handler_ID = Handler_ID;

        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        PopulateHandler();
        divHandler.Visible = true;
        divGetHandler.Visible = false;
        divChangeHandler.Visible = true;
        divHandlerDetails.Visible = true;
    }
    protected void lstDogs_SelectedIndexChanged(object sender, EventArgs e)
    {
        Guid dog_ID = new Guid(lstDogs.SelectedValue);
        PopulateOwnerList(dog_ID);
    }
}