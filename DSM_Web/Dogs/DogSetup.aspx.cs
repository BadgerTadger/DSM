using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Data;
using System.Configuration;

public partial class Dogs_DogSetup : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        MessageLabel.Text = string.Empty;
        GetCommon();

        if (!string.IsNullOrEmpty(Common.Current_Dog_ID))
        {
            Current_Dog_ID = Common.Current_Dog_ID;
            divGetDog.Visible = false;
            divChangeDog.Visible = true;
            divDogDetails.Visible = true;
            if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                DivReturn.Visible = true;
        }
        else
        {
            divGetDog.Visible = true;
            divChangeDog.Visible = false;
            divDogDetails.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Owner_ID))
        {
            Owner_ID = Common.Owner_ID;
            AddOwnerToList(Owner_ID);
            Owner_ID = null;
            Common.Owner_ID = Owner_ID;
        }
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
        if (!string.IsNullOrEmpty(Common.Breeder_ID))
        {
            Breeder_ID = Common.Breeder_ID;
            AddBreederToList(Breeder_ID);
            Breeder_ID = null;
            Common.Breeder_ID = Breeder_ID;
        }
        if (Common.DogBreederList != null && Common.DogBreederList.Count != 0)
        {
            divBreederList.Visible = true;
            DogBreederList breederList = new DogBreederList();
            breederList.MyDogBreederList = Common.DogBreederList;
            PopulateBreederGridView(breederList.MyDogBreederList);
        }
        else
        {
            divBreederList.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Dam_ID))
        {
            Dam_ID = Common.Dam_ID;
            PopulateDam();
        }
        else
        {
            divGetDam.Visible = true;
            divChangeDam.Visible = false;
            divDamDetails.Visible = false;
        }
        if (!string.IsNullOrEmpty(Common.Sire_ID))
        {
            Sire_ID = Common.Sire_ID;
            PopulateSire();
        }
        else
        {
            divGetSire.Visible = true;
            divChangeSire.Visible = false;
            divSireDetails.Visible = false;
        }
        if (!Page.IsPostBack)
        {
            if (!string.IsNullOrEmpty(Common.Current_Dog_ID))
            {
                PopulateDog();
                PopulateOwnerList();
                PopulateBreederList();
                string returnChars = Request.QueryString["return"];
                btnReturn.PostBackUrl = Common.ReturnPath(Request.QueryString, returnChars, "");
            }
        }
    }
    private string _current_Dog_ID;
    public string Current_Dog_ID
    {
        get { return _current_Dog_ID; }
        set { _current_Dog_ID = value; }
    }
    private string _owner_ID;
    public string Owner_ID
    {
        get { return _owner_ID; }
        set { _owner_ID = value; }
    }
    private string _breeder_ID;
    public string Breeder_ID
    {
        get { return _breeder_ID; }
        set { _breeder_ID = value; }
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
    private string _date_Of_Birth;
    public string Date_Of_Birth
    {
        get { return _date_Of_Birth; }
        set { _date_Of_Birth = value; }
    }
    private string _merit_Points;
    public string Merit_Points
    {
        get { return _merit_Points; }
        set { _merit_Points = value; }
    }
    private bool _nLWU;
    public bool NLWU
    {
        get { return _nLWU; }
        set { _nLWU = value; }
    }
    private void PopulateDog()
    {
        Guid current_dog_ID = new Guid(Current_Dog_ID);
        Dogs dog = new Dogs(_connString, current_dog_ID);

        txtKCName.Text = dog.Dog_KC_Name;
        txtPetName.Text = dog.Dog_Pet_Name;
        lblNLWU.Text = string.Format("Tick this box if {0} is no longer with us.", dog.Dog_Pet_Name);

        if (dog.Dog_Breed_ID != null)
        {
            int dog_Breed_ID = Int32.Parse(dog.Dog_Breed_ID.ToString());
            DogBreeds dogBreeds = new DogBreeds(_connString, dog_Breed_ID);
            txtDogBreed.Text = dogBreeds.Description;
        }
        if (dog.Dog_Gender_ID != null)
        {
            int dog_Gender_ID = Int32.Parse(dog.Dog_Gender_ID.ToString());
            DogGender dogGender = new DogGender(_connString, dog_Gender_ID);
            txtDogGender.Text = dogGender.Description;
        }
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
        if (dog.Merit_Points != null)
        {
            Merit_Points = dog.Merit_Points.ToString();
            Common.Merit_Points = Merit_Points;
            txtMeritPoints.Text = Merit_Points;
        }
        else
        {
            Merit_Points = "0";
            Common.Merit_Points = Merit_Points;
            txtMeritPoints.Text = Merit_Points;
        }
        if (dog.NLWU != null)
        {
            NLWU = (bool)dog.NLWU;
            Common.NLWU = NLWU;
            chkNLWU.Checked = NLWU;
        }
        DogDams dogDams = new DogDams(_connString);
        List<DogDams> lnkDogDams;
        lnkDogDams = dogDams.GetDogDamsByDog_ID(dog.Dog_ID);
        if (lnkDogDams.Count != 0)
        {
            Dam_ID = lnkDogDams[0].Dam_ID.ToString();
            Common.Dam_ID = Dam_ID;
            PopulateDam();
        }
        DogSires dogSires = new DogSires(_connString);
        List<DogSires> lnkDogSires;
        lnkDogSires = dogSires.GetDogSiresByDog_ID(dog.Dog_ID);
        if (lnkDogSires.Count != 0)
        {
            Sire_ID = lnkDogSires[0].Sire_ID.ToString();
            Common.Sire_ID = Sire_ID;
            PopulateSire();
        }
    }
    private void PopulateOwnerList()
    {
        bool foundOwner = false;
        Guid dog_ID = new Guid(Current_Dog_ID);
        List<DogOwners> lnkDogOwners;
        DogOwners dogOwners = new DogOwners(_connString);
        lnkDogOwners = dogOwners.GetDogOwnersByDog_ID(dog_ID);
        foreach (DogOwners row in lnkDogOwners)
        {
            AddOwnerToList(row.Owner_ID.ToString());
            foundOwner = true;
        }
        if(foundOwner)
            divOwnerList.Visible = true;
    }
    private void PopulateBreederList()
    {
        bool foundBreeder = false;
        Guid dog_ID = new Guid(Current_Dog_ID);
        List<DogBreeders> lnkDogBreeders;
        DogBreeders dogBreeders = new DogBreeders(_connString);
        lnkDogBreeders = dogBreeders.GetDogBreedersByDog_ID(dog_ID);
        foreach(DogBreeders row in lnkDogBreeders)
        {
            AddBreederToList(row.Breeder_ID.ToString());
            foundBreeder = true;
        }
        if (foundBreeder)
            divBreederList.Visible = true;
    }
    private void PopulateDam()
    {
        Guid dam_ID = new Guid(Dam_ID);
        Dogs dog = new Dogs(_connString, dam_ID);

        txtDamKCName.Text = dog.Dog_KC_Name;
        txtDamPetName.Text = dog.Dog_Pet_Name;

        if (dog.Dog_Breed_ID != null && dog.Dog_Breed_ID != 1)
        {
            int dog_Breed_ID = Int32.Parse(dog.Dog_Breed_ID.ToString());
            DogBreeds dogBreeds = new DogBreeds(_connString, dog_Breed_ID);
            txtDamBreed.Text = dogBreeds.Description;
        }
        if (dog.Dog_Gender_ID != null && dog.Dog_Gender_ID != 1)
        {
            int dog_Gender_ID = Int32.Parse(dog.Dog_Gender_ID.ToString());
            DogGender dogGender = new DogGender(_connString, dog_Gender_ID);
            txtDamGender.Text = dogGender.Description;
        }
        divGetDam.Visible = false;
        divChangeDam.Visible = true;
        divDamDetails.Visible = true;
    }
    private void PopulateSire()
    {
        Guid sire_ID = new Guid(Sire_ID);
        Dogs dog = new Dogs(_connString, sire_ID);

        txtSireKCName.Text = dog.Dog_KC_Name;
        txtSirePetName.Text = dog.Dog_Pet_Name;

        if (dog.Dog_Breed_ID != null && dog.Dog_Breed_ID != 1)
        {
            int dog_Breed_ID = Int32.Parse(dog.Dog_Breed_ID.ToString());
            DogBreeds dogBreeds = new DogBreeds(_connString, dog_Breed_ID);
            txtSireBreed.Text = dogBreeds.Description;
        }
        if (dog.Dog_Gender_ID != null && dog.Dog_Gender_ID != 1)
        {
            int dog_Gender_ID = Int32.Parse(dog.Dog_Gender_ID.ToString());
            DogGender dogGender = new DogGender(_connString, dog_Gender_ID);
            txtSireGender.Text = dogGender.Description;
        }
        divGetSire.Visible = false;
        divChangeSire.Visible = true;
        divSireDetails.Visible = true;
    }
    protected void btnGetDog_Click(object sender, EventArgs e)
    {
        ResetDog();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "dsu");
        Server.Transfer("~/Dogs/Dogs.aspx?" + returnChars + "&d=c");
    }
    protected void btnGetOwner_Click(object sender, EventArgs e)
    {
        SaveFormFields();
        StoreCommon();
        Common.Owner_ID = null;
        Common.Person_Address_ID = null;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "dsu");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=o");
    }
    protected void btnGetBreeder_Click(object sender, EventArgs e)
    {
        SaveFormFields();
        StoreCommon();
        Common.Breeder_ID = null;
        Common.Person_Address_ID = null;

        string returnChars = Common.AppendReturnChars(Request.QueryString, "dsu");
        Server.Transfer("~/ShowAdmin/PersonSetup.aspx?" + returnChars + "&p=b");
    }
    private void StoreCommon()
    {
        Common.Current_Dog_ID = Current_Dog_ID;
        Common.Owner_ID = Owner_ID;
        Common.Breeder_ID = Breeder_ID;
        Common.Dam_ID = Dam_ID;
        Common.Sire_ID = Sire_ID;
        Common.Reg_No = Reg_No;
        Common.Date_Of_Birth = Date_Of_Birth;
        Common.Merit_Points = Merit_Points;
        Common.NLWU = NLWU;
    }

    private void GetCommon()
    {
        Current_Dog_ID = Common.Current_Dog_ID;
        Dam_ID = Common.Dam_ID;
        Sire_ID = Common.Sire_ID;
        Reg_No = Common.Reg_No;
        Date_Of_Birth = Common.Date_Of_Birth;
        Merit_Points = Common.Merit_Points;
        NLWU = Common.NLWU;
    }
    protected void btnGetDam_Click(object sender, EventArgs e)
    {
        Date_Of_Birth = null;
        SaveFormFields();
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "dsu");
        Server.Transfer("~/Dogs/Dogs.aspx?" + returnChars + "&d=d");
    }
    protected void btnGetSire_Click(object sender, EventArgs e)
    {
        Date_Of_Birth = null;
        SaveFormFields();
        StoreCommon();

        string returnChars = Common.AppendReturnChars(Request.QueryString, "dsu");
        Server.Transfer("~/Dogs/Dogs.aspx?" + returnChars + "&d=s");
    }
    private bool ValidDog()
    {
        bool valid = true;
        if (Common.DogOwnerList == null || Common.DogOwnerList.Count == 0)
        {
            MessageLabel.Text = "At least one Owner must be included.";
            valid = false;
        }

        return valid;
    }
    protected void btnSaveDog_Click(object sender, EventArgs e)
    {
        SaveFormFields();
        StoreCommon();

        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;
        bool Changed = false;
        string petName=null;
        bool DogChanges = false;
        bool DogSuccess = false;
        bool OwnerChanges = false;
        bool OwnerSuccess = false;
        bool BreederChanges = false;
        bool BreederSuccess = false;
        if (!string.IsNullOrEmpty(Current_Dog_ID))
        {
            Guid dog_ID = new Guid(Current_Dog_ID);
            Dogs dog = new Dogs(_connString, dog_ID);
            petName=dog.Dog_Pet_Name;
            if (ValidDog())
            {
                if (HasDogChanges())
                {
                    DogChanges = true;
                    if (dog.Merit_Points.ToString() != Merit_Points && !string.IsNullOrEmpty(Merit_Points))
                        dog.Merit_Points = short.Parse(Merit_Points);
                    if (dog.NLWU == null && NLWU)
                        dog.NLWU = NLWU;
                    if (dog.NLWU != null)
                    {
                        if ((bool)dog.NLWU != NLWU)
                            dog.NLWU = null;
                    }

                    DogSuccess = dog.Update_Dog(dog_ID, user_ID);
                    if (!DogSuccess)
                        MessageLabel.Text += " Update_Dog Failed!";

                    if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                        DivReturn.Visible = true;
                }
                else
                    DogSuccess = true;
                
                List<DogOwners> lnkDogOwners;
                DogOwners dogOwners = new DogOwners(_connString);
                lnkDogOwners = dogOwners.GetDogOwnersByDog_ID(dog_ID);
                bool insertOK = true;
                bool deleteOK = true;
                switch (HasOwnerChanges())
                {
                    case Constants.DATA_NO_CHANGE:
                        OwnerSuccess = true;
                        break;
                    case Constants.DATA_INSERTED:
                        OwnerChanges = true;
                        insertOK = InsertDogOwners(dog_ID, user_ID);
                        if (insertOK)
                            OwnerSuccess = true;
                        else
                            MessageLabel.Text = "Insert_Dog_Owners Failed";
                        break;
                    case Constants.DATA_DELETED:
                        OwnerChanges = true;
                        deleteOK = DeleteDogOwners(dog_ID, user_ID);
                        if (deleteOK)
                            OwnerSuccess = true;
                        else
                            MessageLabel.Text = "Delete_Dog_Owners Failed";
                        break;
                    case Constants.DATA_INSERTED_AND_DELETED:
                        OwnerChanges = true;
                        insertOK = InsertDogOwners(dog_ID, user_ID);
                        deleteOK = DeleteDogOwners(dog_ID, user_ID);
                        if (insertOK && deleteOK)
                            OwnerSuccess = true;
                        else
                        {
                            MessageLabel.Text = string.Empty;
                            if (!insertOK)
                                MessageLabel.Text = "Insert_Dog_Owners Failed";
                            if (!deleteOK)
                                MessageLabel.Text += "Delete_Dog_Owners Failed";
                        }
                        break;
                    default:
                        break;
                }
                List<DogBreeders> lnkDogBreeders;
                DogBreeders dogBreeders = new DogBreeders(_connString);
                lnkDogBreeders = dogBreeders.GetDogBreedersByDog_ID(dog_ID);
                insertOK = true;
                deleteOK = true;
                switch (HasBreederChanges())
                {
                    case Constants.DATA_NO_CHANGE:
                        BreederSuccess = true;
                        break;
                    case Constants.DATA_INSERTED:
                        BreederChanges = true;
                        insertOK = InsertDogBreeders(dog_ID, user_ID);
                        if (insertOK)
                            BreederSuccess = true;
                        else
                            MessageLabel.Text = "Insert_Dog_Breeders Failed";
                        break;
                    case Constants.DATA_DELETED:
                        BreederChanges = true;
                        deleteOK = DeleteDogBreeders(dog_ID, user_ID);
                        if (deleteOK)
                            BreederSuccess = true;
                        else
                            MessageLabel.Text = "Delete_Dog_Breeders Failed";
                        break;
                    case Constants.DATA_INSERTED_AND_DELETED:
                        BreederChanges = true;
                        insertOK = InsertDogBreeders(dog_ID, user_ID);
                        deleteOK = DeleteDogBreeders(dog_ID, user_ID);
                        if (insertOK && deleteOK)
                            BreederSuccess = true;
                        else
                        {
                            MessageLabel.Text = string.Empty;
                            if (!insertOK)
                                MessageLabel.Text = "Insert_Dog_Breeders Failed";
                            if (!deleteOK)
                                MessageLabel.Text += "Delete_Dog_Breeders Failed";
                        }
                        break;
                    default:
                        break;
                }
                if (HasDamChanges())
                {
                    DogDams dogDam = new DogDams(_connString);
                    List<DogDams> lnkDogDams;
                    lnkDogDams = dogDam.GetDogDamsByDog_ID(dog_ID);
                    if (lnkDogDams.Count == 0)
                    {
                        DogDams newDogDams = new DogDams(_connString);
                        newDogDams.Dog_ID = dog_ID;
                        newDogDams.Dam_ID = new Guid(Dam_ID);
                        Guid? dog_Dam_ID = newDogDams.Insert_Dog_Dams(user_ID);
                    }
                    else
                    {
                        Guid dog_Dam_ID = lnkDogDams[0].Dog_Dam_ID;
                        DogDams newDogDams = new DogDams(_connString, dog_Dam_ID);
                        newDogDams.Dam_ID = new Guid(Dam_ID);
                        newDogDams.Update_Dog_Dams(dog_Dam_ID, user_ID);
                    }
                    Changed = true;
                }
                if (HasSireChanges())
                {
                    DogSires dogSire = new DogSires(_connString);
                    List<DogSires> lnkDogSires;
                    lnkDogSires = dogSire.GetDogSiresByDog_ID(dog_ID);
                    if (lnkDogSires.Count == 0)
                    {
                        DogSires newDogSires = new DogSires(_connString);
                        newDogSires.Dog_ID = dog_ID;
                        newDogSires.Sire_ID = new Guid(Sire_ID);
                        Guid? dog_Sire_ID = newDogSires.Insert_Dog_Sires(user_ID);
                    }
                    else
                    {
                        Guid dog_Sire_ID = lnkDogSires[0].Dog_Sire_ID;
                        DogSires newDogSires = new DogSires(_connString, dog_Sire_ID);
                        newDogSires.Sire_ID = new Guid(Sire_ID);
                        newDogSires.Update_Dog_Sires(dog_Sire_ID, user_ID);
                    }
                    Changed = true;
                }
                if (OwnerChanges || BreederChanges || DogChanges)
                    Changed = true;
                if (OwnerChanges && !OwnerSuccess)
                    MessageLabel.Text += " Error with Owner Changes!";
                if (BreederChanges && !BreederSuccess)
                    MessageLabel.Text += " Error with Breeder Changes!";
                if (DogChanges && !DogSuccess)
                    MessageLabel.Text += " Error with Dog Changes!";
                if (Changed)
                {
                    if (OwnerSuccess && BreederSuccess && DogSuccess)
                    {
                        MessageLabel.Text = string.Format("{0} was updated successfully.", petName);
                        PopulateDog();
                    }
                    else
                    {
                        MessageLabel.Text = string.Format("{0}{1}", "Problem!", MessageLabel.Text);
                    }
                }
                else
                {
                    MessageLabel.Text = "Update cancelled as no changes have been made.";
                }
            }
        }
    }
    private bool InsertDogOwners(Guid dog_ID, Guid user_ID)
    {
        bool insertOK = true;
        for (int i = 0; i < Common.DogOwnerList.Count; i++)
        {
            bool ownerFound = false;
            List<DogOwners> lnkDogOwners;
            DogOwners dogOwners = new DogOwners(_connString);
            lnkDogOwners = dogOwners.GetDogOwnersByDog_ID(dog_ID);
            foreach (DogOwners row in lnkDogOwners)
            {
                if (Common.DogOwnerList[i].Person_ID == row.Owner_ID)
                {
                    ownerFound = true;
                }
            }
            if (!ownerFound)
            {

                DogOwners dogOwner = new DogOwners(_connString);
                dogOwner.Dog_ID = dog_ID;
                dogOwner.Owner_ID = Common.DogOwnerList[i].Person_ID;

                Guid? dog_Owner_ID = dogOwner.Insert_Dog_Owner(user_ID);

                if (dog_Owner_ID == null)
                    insertOK = false;

            }
        }
        return insertOK;
    }
    private bool DeleteDogOwners(Guid dog_ID, Guid user_ID)
    {
        bool deletedOK = false;
        List<DogOwners> lnkDogOwners;
        DogOwners dogOwners = new DogOwners(_connString);
        lnkDogOwners = dogOwners.GetDogOwnersByDog_ID(dog_ID);
        foreach (DogOwners row in lnkDogOwners)
        {
            bool ownerFound = false;
            for (int i = 0; i < Common.DogOwnerList.Count; i++)
            {
                if (Common.DogOwnerList[i].Person_ID == row.Owner_ID)
                {
                    ownerFound = true;
                }
            }
            if (!ownerFound)
            {
                DogOwners dogOwner = new DogOwners(_connString, row.Dog_Owner_ID);
                dogOwner.DeleteDogOwner = true;
                deletedOK = dogOwner.Update_Dog_Owner(row.Dog_Owner_ID, user_ID);
            }
        }
        return deletedOK;
    }
    private bool InsertDogBreeders(Guid dog_ID, Guid user_ID)
    {
        bool insertOK = true;
        for (int i = 0; i < Common.DogBreederList.Count; i++)
        {
            bool breederFound = false;
            List<DogBreeders> lnkDogBreeders;
            DogBreeders dogBreeders = new DogBreeders(_connString);
            lnkDogBreeders = dogBreeders.GetDogBreedersByDog_ID(dog_ID);
            foreach (DogBreeders row in lnkDogBreeders)
            {
                if (Common.DogBreederList[i].Person_ID == row.Breeder_ID)
                {
                    breederFound = true;
                }
            }
            if (!breederFound)
            {

                DogBreeders dogBreeder = new DogBreeders(_connString);
                dogBreeder.Dog_ID = dog_ID;
                dogBreeder.Breeder_ID = Common.DogBreederList[i].Person_ID;

                Guid? dog_Breeder_ID = dogBreeder.Insert_Dog_Breeder(user_ID);

                if (dog_Breeder_ID == null)
                    insertOK = false;

            }
        }
        return insertOK;
    }
    private bool DeleteDogBreeders(Guid dog_ID, Guid user_ID)
    {
        bool deletedOK = false;
        List<DogBreeders> lnkDogBreeders;
        DogBreeders dogBreeders = new DogBreeders(_connString);
        lnkDogBreeders = dogBreeders.GetDogBreedersByDog_ID(dog_ID);
        foreach (DogBreeders row in lnkDogBreeders)
        {
            bool breederFound = false;
            for (int i = 0; i < Common.DogBreederList.Count; i++)
            {
                if (Common.DogBreederList[i].Person_ID == row.Breeder_ID)
                {
                    breederFound = true;
                }
            }
            if (!breederFound)
            {
                DogBreeders dogBreeder = new DogBreeders(_connString, row.Dog_Breeder_ID);
                dogBreeder.DeleteDogBreeder = true;
                deletedOK = dogBreeder.Update_Dog_Breeder(row.Dog_Breeder_ID, user_ID);
            }
        }
        return deletedOK;
    }
    private bool HasChanges()
    {
        bool Changed = false;
        if (HasDogChanges())
            Changed = true;
        if (HasDamChanges())
            Changed = true;
        if (HasSireChanges())
            Changed = true;
        return Changed;
    }
    private bool HasDogChanges()
    {
        bool Changed = false;
        if (!string.IsNullOrEmpty(Current_Dog_ID))
        {
            Guid dog_ID = new Guid(Current_Dog_ID);
            Dogs dog = new Dogs(_connString, dog_ID);
            if (dog.Reg_No != Reg_No && !string.IsNullOrEmpty(Reg_No))
                Changed = true;
            if (dog.Date_Of_Birth == null && !string.IsNullOrEmpty(Date_Of_Birth))
                Changed = true;
            if (dog.Date_Of_Birth != null && !string.IsNullOrEmpty(Date_Of_Birth))
            {
                if (string.Compare(DateTime.Parse(dog.Date_Of_Birth.ToString()).ToString("yyyy-MM-dd"), Date_Of_Birth) != 0)
                    Changed = true;
            }
            if (dog.Merit_Points == null && !string.IsNullOrEmpty(Merit_Points))
                Changed = true;
            if (dog.Merit_Points != null && !string.IsNullOrEmpty(Merit_Points))
            {
                if (dog.Merit_Points != short.Parse(Merit_Points) && !string.IsNullOrEmpty(Merit_Points))
                    Changed = true;
            }
            if (dog.NLWU == null && NLWU)
                Changed = true;
            if (dog.NLWU != null)
            {
                if ((bool)dog.NLWU != NLWU)
                    Changed = true;
            }
        }
        return Changed;
    }
    private short HasOwnerChanges()
    {
        bool Changed = false;
        short del = Constants.DATA_NO_CHANGE;
        short ins = Constants.DATA_NO_CHANGE;
        List<DogOwners> lnkDogOwners;
        DogOwners dogOwners = new DogOwners(_connString);
        Guid dog_ID = new Guid(Current_Dog_ID);
        lnkDogOwners = dogOwners.GetDogOwnersByDog_ID(dog_ID);
        foreach (DogOwners dogOwnersRow in lnkDogOwners)
        {
            bool foundOwner = false;
            if (Common.DogOwnerList != null && Common.DogOwnerList.Count != 0)
            {
                for (int i = 0; i < Common.DogOwnerList.Count; i++)
                {
                    if (Common.DogOwnerList[i].Person_ID == dogOwnersRow.Owner_ID)
                        //Dog in table still exists in list
                        foundOwner = true;
                }
            }
            if (!foundOwner)
                //Dog in table no longer exists in list (deleted)
                Changed = true;
        }
        if (Changed)
            del = Constants.DATA_DELETED;

        Changed = false;
        if (Common.DogOwnerList != null && Common.DogOwnerList.Count != 0)
        {
            for (int i = 0; i < Common.DogOwnerList.Count; i++)
            {
                bool foundOwner = false;
                foreach (DogOwners dogOwnersRow in lnkDogOwners)
                {
                    if (Common.DogOwnerList[i].Person_ID == dogOwnersRow.Owner_ID)
                        //Dog in List already exists in table
                        foundOwner = true;
                }
                if (!foundOwner)
                    //Dog in list does not exist in table (inserted)
                    Changed = true;
            }
        }
        else
        {
            if (lnkDogOwners.Count > 0)
                Changed = true;
        }
        if (Changed)
            ins = Constants.DATA_INSERTED;

        return del += ins;
    }
    private short HasBreederChanges()
    {
        bool Changed = false;
        short del = Constants.DATA_NO_CHANGE;
        short ins = Constants.DATA_NO_CHANGE;
        List<DogBreeders> lnkDogBreeders;
        DogBreeders dogBreeders = new DogBreeders(_connString);
        Guid dog_ID = new Guid(Current_Dog_ID);
        lnkDogBreeders = dogBreeders.GetDogBreedersByDog_ID(dog_ID);
        foreach (DogBreeders dogBreedersRow in lnkDogBreeders)
        {
            bool foundBreeder = false;
            if (Common.DogBreederList != null && Common.DogBreederList.Count != 0)
            {
                for (int i = 0; i < Common.DogBreederList.Count; i++)
                {
                    if (Common.DogBreederList[i].Person_ID == dogBreedersRow.Breeder_ID)
                        //Dog in table still exists in list
                        foundBreeder = true;
                }
            }
            if (!foundBreeder)
                //Dog in table no longer exists in list (deleted)
                Changed = true;
        }
        if (Changed)
            del = Constants.DATA_DELETED;

        Changed = false;
        if (Common.DogBreederList != null && Common.DogBreederList.Count != 0)
        {
            for (int i = 0; i < Common.DogBreederList.Count; i++)
            {
                bool foundBreeder = false;
                foreach (DogBreeders dogBreedersRow in lnkDogBreeders)
                {
                    if (Common.DogBreederList[i].Person_ID == dogBreedersRow.Breeder_ID)
                        //Dog in List already exists in table
                        foundBreeder = true;
                }
                if (!foundBreeder)
                    //Dog in list does not exist in table (inserted)
                    Changed = true;
            }
        }
        else
        {
            if (lnkDogBreeders.Count > 0)
                Changed = true;
        }
        if (Changed)
            ins = Constants.DATA_INSERTED;

        return del += ins;
    }
    private bool HasDamChanges()
    {
        bool Changed = false;
        if (!string.IsNullOrEmpty(Current_Dog_ID))
        {
            Guid dog_ID = new Guid(Current_Dog_ID);
            DogDams dogDam = new DogDams(_connString);
            List<DogDams> lnkDogDams;
            lnkDogDams = dogDam.GetDogDamsByDog_ID(dog_ID);
            if (lnkDogDams.Count != 0)
            {
                string dam_ID;
                dam_ID = lnkDogDams[0].Dam_ID.ToString();
                if (dam_ID != Dam_ID)
                    Changed = true;
            }
            else if (!string.IsNullOrEmpty(Dam_ID))
            {
                Changed = true;
            }
        }
        return Changed;
    }
    private bool HasSireChanges()
    {
        bool Changed = false;
        if (!string.IsNullOrEmpty(Current_Dog_ID))
        {
            Guid dog_ID = new Guid(Current_Dog_ID);
            DogSires dogSire = new DogSires(_connString);
            List<DogSires> lnkDogSires;
            lnkDogSires = dogSire.GetDogSiresByDog_ID(dog_ID);
            if (lnkDogSires.Count != 0)
            {
                string sire_ID;
                sire_ID = lnkDogSires[0].Sire_ID.ToString();
                if (sire_ID != Sire_ID)
                    Changed = true;
            }
            else if (!string.IsNullOrEmpty(Sire_ID))
            {
                Changed = true;
            }
        }
        return Changed;
    }
    private void SaveFormFields()
    {
        Reg_No = txtRegNo.Text;
        if (!string.IsNullOrEmpty(Request.Form[txtDogDOB.UniqueID]))
        {
            string format = "yyyy-MM-dd";
            Date_Of_Birth = DateTime.Parse(Request.Form[txtDogDOB.UniqueID]).ToString(format);
        }
        Merit_Points = txtMeritPoints.Text;
        NLWU = chkNLWU.Checked;
    }
    private void ResetDog()
    {
        Current_Dog_ID = null;
        Common.DogBreederList = null;
        Dam_ID = null;
        Sire_ID = null;
        Reg_No = null;
        txtRegNo.Text = Reg_No;
        Date_Of_Birth = null;
        txtDogDOB.Text = Date_Of_Birth;
        Merit_Points = null;
        txtMeritPoints.Text = Merit_Points;
        NLWU = false;
        chkNLWU.Checked = NLWU;
        StoreCommon();
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
    protected void OwnerGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string owner_id = OwnerGridView.DataKeys[e.RowIndex]["Person_ID"].ToString();
        DogOwnerList ownerList = new DogOwnerList();
        ownerList.MyDogOwnerList = Common.DogOwnerList;
        int ownerCount = ownerList.DeleteDogOwner(e.RowIndex);
        PopulateOwnerGridView(ownerList.MyDogOwnerList);
        Common.DogOwnerList = ownerList.MyDogOwnerList;
    }
    protected void AddBreederToList(string breeder_ID)
    {
        Guid new_Breeder_ID = new Guid(breeder_ID);
        People person = new People(_connString, new_Breeder_ID);
        DogBreederList breederList = new DogBreederList();
        breederList.MyDogBreederList = Common.DogBreederList;
        People pp = null;
        if (breederList.MyDogBreederList != null)
            pp = breederList.MyDogBreederList.Find(delegate(People p) { return p.Person_ID == new_Breeder_ID; });
        if (pp == null)
        {
            int breederCount = breederList.AddBreeder(person);
            PopulateBreederGridView(breederList.MyDogBreederList);
            Common.DogBreederList = breederList.MyDogBreederList;
        }
    }
    private void PopulateBreederGridView(List<People> breederList)
    {
        BreederGridView.DataSource = breederList;
        BreederGridView.DataBind();
    }
    protected void BreederGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string breeder_id = BreederGridView.DataKeys[e.RowIndex]["Person_ID"].ToString();
        DogBreederList breederList = new DogBreederList();
        breederList.MyDogBreederList = Common.DogBreederList;
        int breederCount = breederList.DeleteDogBreeder(e.RowIndex);
        PopulateBreederGridView(breederList.MyDogBreederList);
        Common.DogBreederList = breederList.MyDogBreederList;
    }
}