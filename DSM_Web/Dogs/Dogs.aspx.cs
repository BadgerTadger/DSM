using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.Configuration;
using BLL;
using System.Configuration;

public partial class Dogs_Dogs : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        MessageLabel.Text = string.Empty;
        GetCommon();
        _show_ID = Common.Show_ID;
        divViewEntry.Visible = false;
        QSD = Request.QueryString["d"];
        if (QSD == "s" || QSD == "d")
            Is_Dam_Or_Sire = true;

        if (!string.IsNullOrEmpty(Common.Dog_ID))
        {
            Dog_ID = Common.Dog_ID;
            divAddDog.Visible = false;
            divNewDog.Visible = true;
            divUpdateDog.Visible = true;
            if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                DivReturn.Visible = true;
        }
        else
        {
            divAddDog.Visible = true;
            divNewDog.Visible = false;
            divUpdateDog.Visible = false;
            DivReturn.Visible = false;
        }
        if (!Page.IsPostBack)
        {
            ResetFilter();
            if (!string.IsNullOrEmpty(Dog_ID))
                PopulateDog();

            PopulateDogGridView(Common.Dog_GridViewData, 1);
            PopulateBreedList();
            PopulateGenderList();

            string returnChars = Request.QueryString["return"];
            btnReturn.PostBackUrl = Common.ReturnPath(Request.QueryString, returnChars, "d");
        }
    }
    private bool ValidDog(bool isUpdate)
    {
        bool valid = true;
        if (!Is_Dam_Or_Sire)
        {
            if (string.IsNullOrEmpty(lstDogBreeds.SelectedValue) || lstDogBreeds.SelectedValue == "1")
            {
                MessageLabel.Text = "The dog's Breed must be specified.";
                valid = false;
            }
            else if (string.IsNullOrEmpty(lstGender.SelectedValue) || lstGender.SelectedValue == "1")
            {
                MessageLabel.Text = "The dog's Gender must be specified.";
                valid = false;
            }
            else if (string.IsNullOrEmpty(txtKCName.Text))
            {
                MessageLabel.Text = "The Kennel Club Name must be included.";
                valid = false;
            }
            else if (string.IsNullOrEmpty(Reg_No))
            {
                MessageLabel.Text = "The Kennel Club Registration Number must be included.";
                valid = false;
            }
        }
        else
        {
            if (string.IsNullOrEmpty(txtKCName.Text))
            {
                MessageLabel.Text = "The Kennel Club Name must be included.";
                valid = false;
            }
        }
        if (!isUpdate)
        {
            List<Dogs> tblDogs;
            Dogs dog = new Dogs(_connString);
            tblDogs = dog.GetDogs();
            foreach (Dogs d in tblDogs)
            {
                if (!d.IsReg_NoNull && d.Reg_No != "Unknown" && d.Reg_No == Reg_No)
                {
                    MessageLabel.Text = "A dog with this Kennel Club Registration Number already exists.";
                    valid = false;
                }
                else if (!d.IsDog_KC_NameNull && d.Dog_KC_Name != "NAF" && d.Dog_KC_Name == Dog_KC_Name)
                {
                    MessageLabel.Text = "A dog with this Kennel Club Name already exists.";
                    valid = false;
                }
            }
        }


        return valid;
    }
    private bool HasChanges(Dogs dog)
    {
        bool Changed = false;
        if (dog.Dog_KC_Name != txtKCName.Text)
            Changed = true;
        if (dog.Dog_Pet_Name != txtPetName.Text)
            Changed = true;
        if (dog.Dog_Breed_ID != Int32.Parse(lstDogBreeds.SelectedValue))
            Changed = true;
        if (dog.Dog_Gender_ID != Int32.Parse(lstGender.SelectedValue))
            Changed = true;
        if (dog.Reg_No != Reg_No && !string.IsNullOrEmpty(Reg_No))
            Changed = true;
        if (dog.Date_Of_Birth == null && !string.IsNullOrEmpty(Date_Of_Birth))
            Changed = true;
        if(dog.Date_Of_Birth != null && !string.IsNullOrEmpty(Date_Of_Birth))
            if(dog.Date_Of_Birth.ToString() != Date_Of_Birth)
                Changed=true;

        return Changed;
    }

    protected void btnAddBreed_Click(object sender, EventArgs e)
    {
        SaveFormFields();
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "dog");
        //Server.Transfer("~/Dogs/AddBreed.aspx?" + returnChars + string.Format("&d={0}", QSD));
        Server.Transfer("~/Dogs/AddBreed.aspx?" + returnChars);
    }

    protected void btnAddDog_Click(object sender, EventArgs e)
    {
        SaveFormFields();
        StoreCommon();
        ResetFilter();

        if (ValidDog(false))
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            Dogs dog = new Dogs(_connString);
            dog.Dog_KC_Name = txtKCName.Text;
            dog.Dog_Pet_Name = txtPetName.Text;
            dog.Dog_Breed_ID = Int32.Parse(lstDogBreeds.SelectedValue);
            dog.Dog_Gender_ID = Int32.Parse(lstGender.SelectedValue);
            if (dog.Reg_No != Reg_No && !string.IsNullOrEmpty(Reg_No))
                dog.Reg_No = Reg_No;
            if (!string.IsNullOrEmpty(Date_Of_Birth))
            {
                if (dog.Date_Of_Birth.ToString() != Date_Of_Birth && !string.IsNullOrEmpty(Date_Of_Birth))
                    dog.Date_Of_Birth = DateTime.Parse(Date_Of_Birth);
                dog.Year_Of_Birth = short.Parse(DateTime.Parse(Date_Of_Birth).ToString("yyyy"));
            }

            Guid? dog_ID = dog.Insert_Dog(user_ID);

            if (dog_ID != null)
            {
                Dog_ID = dog_ID.ToString();
                Common.Dog_ID = Dog_ID;
                MessageLabel.Text = "Dog was added successfully";
                //ClearEntryFields();
                if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                    DivReturn.Visible = true;

                divAddDog.Visible = false;
                divNewDog.Visible = true;
                divUpdateDog.Visible = true;
                PopulateDogGridView(null, 1);
                StoreCommon();
            }
            else
            {
                divAddDog.Visible = true;
                divNewDog.Visible = false;
                divUpdateDog.Visible = false;
            }
        }
    }
    protected void btnNewDog_Click(object sender, EventArgs e)
    {
        ResetPage();
    }
    protected void btnUpdateDog_Click(object sender, EventArgs e)
    {
        SaveFormFields();
        StoreCommon();

        if (ValidDog(true))
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            Guid dog_ID = new Guid(Dog_ID);
            Dogs dog = new Dogs(_connString, dog_ID);
            if (HasChanges(dog))
            {
                dog.Dog_KC_Name = txtKCName.Text;
                dog.Dog_Pet_Name = txtPetName.Text;
                dog.Dog_Breed_ID = Int32.Parse(lstDogBreeds.SelectedValue);
                dog.Dog_Gender_ID = Int32.Parse(lstGender.SelectedValue);
                if (dog.Reg_No != Reg_No && !string.IsNullOrEmpty(Reg_No))
                    dog.Reg_No = Reg_No;
                if (!string.IsNullOrEmpty(Date_Of_Birth))
                {
                    if (dog.Date_Of_Birth.ToString() != Date_Of_Birth && !string.IsNullOrEmpty(Date_Of_Birth))
                        dog.Date_Of_Birth = DateTime.Parse(Date_Of_Birth);
                    dog.Year_Of_Birth = short.Parse(DateTime.Parse(Date_Of_Birth).ToString("yyyy"));
                }

                bool valid = dog.Update_Dog(dog_ID, user_ID);

                if (valid)
                {
                    Dog_ID = dog_ID.ToString();
                    Common.Dog_ID = Dog_ID;
                    MessageLabel.Text = "Dog was updated successfully";
                    //ClearEntryFields();
                    if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                        DivReturn.Visible = true;

                    divAddDog.Visible = false;
                    divNewDog.Visible = true;
                    divUpdateDog.Visible = true;
                    PopulateDogGridView(null, 1);
                    StoreCommon();
                }
                else
                {
                    divAddDog.Visible = false;
                    divNewDog.Visible = true;
                    divUpdateDog.Visible = true;
                }
            }
            else
            {
                MessageLabel.Text = "Update cancelled as no changes have been made.";
                divAddDog.Visible = false;
                divNewDog.Visible = true;
                divUpdateDog.Visible = true;
            }
        }
    }
    protected void btnDogSearch_Click(object sender, EventArgs e)
    {
        //ResetPage();
        //ClearEntryFields();
        string searchValue = txtDogFilter.Text;
        Dogs dog = new Dogs(_connString);
        List<Dogs> tblDogs = null;

        if (DogSearchType.SelectedValue == "c")
            searchValue = string.Format("%{0}", searchValue);

        switch (DogFilterBy.SelectedValue)
        {
            case "KC_Name":
                tblDogs = dog.GetDogsLikeDog_KC_Name(searchValue);
                break;
            case "Pet_Name":
                tblDogs = dog.GetDogsLikeDog_Pet_Name(searchValue);
                break;
            case "Breed_ID":
                DogBreeds dogBreeds = new DogBreeds(_connString);
                List<DogBreeds> lkpDogBreeds = null;
                lkpDogBreeds = dogBreeds.GetDog_BreedsByDog_Breed_Description(searchValue);
                tblDogs = dog.GetDogsByDog_Breed_ID(lkpDogBreeds);
                break;
            default:
                tblDogs = dog.GetDogs();
                break;
        }

        Common.Dog_GridViewData = tblDogs;
        PopulateDogGridView(Common.Dog_GridViewData, 1);
        txtDogFilter.Text = string.Empty;
        DogFilterBy.SelectedIndex = -1;
        DogSearchType.SelectedIndex = -1;
    }
    private void ResetFilter()
    {
        Common.Dog_GridViewData = null;
    }
    private bool DogAlreadyEntered()
    {
        bool ret = false;
        if (Is_Dam_Or_Sire)
            return ret;
        DogClasses dogClasses = new DogClasses(_connString);
        List<DogClasses> tblDog_Classes;
        Guid show_ID = new Guid(Show_ID);
        Guid dog_ID = new Guid(Dog_ID);
        tblDog_Classes = dogClasses.GetDog_ClassesByDog_ID(show_ID, dog_ID);
        if (tblDog_Classes != null && tblDog_Classes.Count > 0)
        {
            foreach (DogClasses row in tblDog_Classes)
            {
                if (!row.IsEntrant_IDNull && row.Entrant_ID != new Guid())
                {
                    if (string.IsNullOrEmpty(Common.Entrant_ID) || Common.Entrant_ID != row.Entrant_ID.ToString())
                    {
                        Guid entrant_ID = new Guid(row.Entrant_ID.ToString());
                        Entrants entrant = new Entrants(_connString, entrant_ID);
                        if (Common.Show_ID == entrant.Show_ID.ToString())
                        {
                            Common.ExistingEntrant_ID = entrant_ID.ToString();
                            ret = true;
                        }
                    }
                }
            }
        }
        return ret;
    }
    protected void DogGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        divAddDog.Visible = false;
        divNewDog.Visible = true;
        divUpdateDog.Visible = true;

        GridViewRow row = DogGridView.SelectedRow;
        string id = DogGridView.DataKeys[row.RowIndex]["Dog_ID"].ToString();
        Dog_ID = id;
        Common.Dog_ID = Dog_ID;

        PopulateDog();

        StoreCommon();
        if (DogAlreadyEntered())
        {
            MessageLabel.Text = "There is an existing entry for this Dog in this Show.";
            divViewEntry.Visible = true;
        }
        else
        {
            DivReturn.Visible = true;
        }
    }
    private string _show_ID;
    public string Show_ID
    {
        get { return _show_ID; }
        set { _show_ID = value; }
    }
    
    private string _qsd;
    public string QSD
    {
        get { return _qsd; }
        set { _qsd = value; }
    }
    private bool _is_Dam_Or_Sire = false;
    public bool Is_Dam_Or_Sire
    {
        get { return _is_Dam_Or_Sire; }
        set { _is_Dam_Or_Sire = value; }
    }
    private string _dog_ID;
    public string Dog_ID
    {
        get { return _dog_ID; }
        set { _dog_ID = value; }
    }
    private string _current_Dog_ID;
    public string Current_Dog_ID
    {
        get { return _current_Dog_ID; }
        set { _current_Dog_ID = value; }
    }
    private string _dam_ID;
    public string Dam_ID
    {
        get { return _dam_ID; }
        set { _dam_ID = value; }
    }
    private string _sire_ID;
    public string Sire_ID
    {
        get { return _sire_ID; }
        set { _sire_ID = value; }
    }
    private string _reg_No;
    public string Reg_No
    {
        get { return _reg_No; }
        set { _reg_No = value; }
    }
    private string _dog_KC_Name;
    public string Dog_KC_Name
    {
        get { return _dog_KC_Name; }
        set { _dog_KC_Name = value; }
    }
    private string _date_Of_Birth;
    public string Date_Of_Birth
    {
        get { return _date_Of_Birth; }
        set { _date_Of_Birth = value; }
    }
    private int _currentPage = 1;
    public int CurrentPage
    {
        get { return _currentPage; }
        set { _currentPage = value; }
    }
    private void PopulateDog()
    {
        Guid dog_ID = new Guid(Dog_ID);
        Dogs dog = new Dogs(_connString, dog_ID);

        Dog_KC_Name = dog.Dog_KC_Name;
        Common.Dog_KC_Name = Dog_KC_Name;
        txtKCName.Text = Dog_KC_Name;
        txtPetName.Text = dog.Dog_Pet_Name;
        lstDogBreeds.SelectedValue = dog.Dog_Breed_ID.ToString();
        lstGender.SelectedValue = dog.Dog_Gender_ID.ToString();
        if (dog.Reg_No != null)
        {
            Reg_No = dog.Reg_No.ToString();
            Common.Reg_No = Reg_No;
            txtRegNo.Text = Reg_No;
        }
        if (dog.Date_Of_Birth != null)
        {
            string format = "yyyy-MM-dd";
            Date_Of_Birth = DateTime.Parse(dog.Date_Of_Birth.ToString()).ToString(format);
            Common.Date_Of_Birth = Date_Of_Birth;
            txtDogDOB.Text = Date_Of_Birth;
        }
    }
    private void PopulateBreedList()
    {
        DogBreeds dogBreeds = new DogBreeds(_connString);
        List<DogBreeds> lkpDog_Breeds = dogBreeds.GetDog_Breeds();
        lstDogBreeds.DataSource = lkpDog_Breeds;
        lstDogBreeds.DataBind();
    }
    private void PopulateGenderList()
    {
        DogGender dogGender = new DogGender(_connString);
        List<DogGender> lkpDog_Gender = dogGender.GetDog_Gender();
        lstGender.DataSource = lkpDog_Gender;
        lstGender.DataBind();
    }
    private void PopulateDogGridView(List<Dogs> tblDogs, int pageNo)
    {
        if (tblDogs == null)
        {
            tblDogs = Common.Dog_GridViewData;
        }
        List<Dogs> newDogs = new List<Dogs>();

        int itemsperPage = Int32.Parse(WebConfigurationManager.AppSettings["GridItemsPerPage"]);
        int startRowIndex = (pageNo -1) * itemsperPage;
        int currentIndex = 0;
        int itemsRead = 0;
        int totalRecords = tblDogs.Count;
        foreach (Dogs row in tblDogs)
        {
            if (itemsRead < itemsperPage && currentIndex < totalRecords && currentIndex >= startRowIndex)
            {
                Dogs newDog = new Dogs(_connString);
                newDog.Dog_ID = row.Dog_ID;
                newDog.Dog_KC_Name = row.Dog_KC_Name;
                newDog.Dog_Pet_Name = row.Dog_Pet_Name;
                if (!row.IsReg_NoNull)
                    newDog.Reg_No = row.Reg_No;
                DogBreeds dogBreeds = new DogBreeds(_connString, Convert.ToInt32(row.Dog_Breed_ID));
                newDog.Dog_Breed_Description = dogBreeds.Description;
                DogGender dogGender = new DogGender(_connString, Convert.ToInt32(row.Dog_Gender_ID));
                newDog.Dog_Gender = dogGender.Description;
                newDogs.Add(newDog);
                itemsRead++;
            }
            currentIndex++;
        }
        lblTotalPages.Text = CalculateTotalPages(totalRecords).ToString();

        lblCurrentPage.Text = CurrentPage.ToString();

        if (CurrentPage == 1)
        {
            Btn_Previous.Enabled = false;

            if (Int32.Parse(lblTotalPages.Text) > 0)
            {
                Btn_Next.Enabled = true;
            }
            else
                Btn_Next.Enabled = false;

        }

        else
        {
            Btn_Previous.Enabled = true;

            if (CurrentPage == Int32.Parse(lblTotalPages.Text))
                Btn_Next.Enabled = false;
            else Btn_Next.Enabled = true;
        }
        DogGridView.DataSource = newDogs;
        DogGridView.DataBind();
    }
    private int CalculateTotalPages(double totalRows)
    {
        int totalPages = (int)Math.Ceiling(totalRows / Int32.Parse(WebConfigurationManager.AppSettings["GridItemsPerPage"]));

        return totalPages;
    }
    private void StoreCommon()
    {
        if (!string.IsNullOrEmpty(Dog_ID))
        {
            Common.Dog_ID = Dog_ID;

            string d_ID = Dog_ID;
            string d = Request.QueryString["d"];
            if (!string.IsNullOrEmpty(d))
            {
                switch (d)
                {
                    case "d":
                        Common.Dam_ID = d_ID;
                        Common.Dog_ID = null;
                        break;
                    case "s":
                        Common.Sire_ID = d_ID;
                        Common.Dog_ID = null;
                        break;
                    case "c":
                        Common.Current_Dog_ID = d_ID;
                        Common.Dog_ID = null;
                        break;
                    default:
                        break;
                }
            }
        }
        Common.Dog_KC_Name = Dog_KC_Name;
        Common.Reg_No = Reg_No;
        Common.Date_Of_Birth = Date_Of_Birth;
    }
    private void SaveFormFields()
    {
        Dog_KC_Name = txtKCName.Text;
        Reg_No = txtRegNo.Text;
        if (!string.IsNullOrEmpty(Request.Form[txtDogDOB.UniqueID]))
        {
            string format = "yyyy-MM-dd";
            Date_Of_Birth = DateTime.Parse(Request.Form[txtDogDOB.UniqueID]).ToString(format);
        }
    }
    private void GetCommon()
    {
        string d = Request.QueryString["d"];
        if (!string.IsNullOrEmpty(d))
        {
            switch (d)
            {
                case "d":
                    if (!string.IsNullOrEmpty(Common.Dam_ID))
                    {
                        Dam_ID = Common.Dam_ID;
                        Common.Dog_ID = Dam_ID;
                    }
                    break;
                case "s":
                    if (!string.IsNullOrEmpty(Common.Sire_ID))
                    {
                        Sire_ID = Common.Sire_ID;
                        Common.Dog_ID = Sire_ID;
                    }
                    break;
                case "c":
                    if (!string.IsNullOrEmpty(Common.Current_Dog_ID))
                    {
                        Current_Dog_ID = Common.Current_Dog_ID;
                        Common.Dog_ID = Current_Dog_ID;
                    }
                    break;
                default:
                    break;
            }
        }
        Dog_KC_Name = Common.Dog_KC_Name;
        Reg_No = Common.Reg_No;
        Date_Of_Birth = Common.Date_Of_Birth;
    }
    private void ResetPage()
    {
        divAddDog.Visible = true;
        divNewDog.Visible = false;
        divUpdateDog.Visible = false;
        DivReturn.Visible = false;
        ClearEntryFields();
    }

    private void ClearEntryFields()
    {
        Dog_ID = string.Empty;
        Common.Dog_ID = string.Empty;
        Current_Dog_ID = string.Empty;
        Common.Current_Dog_ID = string.Empty;
        Dam_ID = string.Empty;
        Common.Dam_ID = string.Empty;
        Sire_ID = string.Empty;
        Common.Sire_ID = string.Empty;
        Dog_KC_Name = null;
        Common.Dog_KC_Name = Dog_KC_Name;
        txtKCName.Text = string.Empty;
        txtPetName.Text = string.Empty;
        lstDogBreeds.SelectedIndex = -1;
        lstGender.SelectedIndex = -1;
        Reg_No = null;
        txtRegNo.Text = Reg_No;
        Date_Of_Birth = null;
        txtDogDOB.Text = Date_Of_Birth;
    }
    protected void ChangePage(object sender, CommandEventArgs e)
    {
        SaveFormFields();
        StoreCommon();

        switch (e.CommandName)
        {
            case "Previous":
                CurrentPage = Int32.Parse(lblCurrentPage.Text) - 1;
                break;

            case "Next":
                CurrentPage = Int32.Parse(lblCurrentPage.Text) + 1;
                break;
        }

        PopulateDogGridView(Common.Dog_GridViewData, CurrentPage);
    }
    private void PopulateDogList()
    {
        List<DogClasses> tblDog_Classes;
        DogClasses dogClasses = new DogClasses(_connString);
        Guid entrant_ID = new Guid(Common.Entrant_ID);
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
    protected void btnViewEntry_Click(object sender, EventArgs e)
    {
        Common.Entrant_ID = Common.ExistingEntrant_ID;
        Common.DogAdded = false;
        Common.DogOwnerList = null;
        PopulateDogList();
        Server.Transfer("~/Competitors/Competitor.aspx");
    }
}