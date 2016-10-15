using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using BLL;
using System.Configuration;

public partial class ShowAdmin_AddClasses : System.Web.UI.Page
{
    private string _connString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        _connString = ConfigurationManager.ConnectionStrings["SSSDbConnDev"].ConnectionString;
        Common.ConnString = _connString;

        if (!string.IsNullOrEmpty(Common.Show_Entry_Class_ID))
        {
            Show_Entry_Class_ID = Common.Show_Entry_Class_ID;
        }

        if (!string.IsNullOrEmpty(Common.Club_ID))
        {
            Club_ID = Common.Club_ID;
            divGetClub.Visible = false;
            divClubDetails.Visible = true;
        }
        else
        {
            divGetClub.Visible = true;
            divClubDetails.Visible = false;
        }

        if (!string.IsNullOrEmpty(Common.Show_ID))
        {
            Show_ID = Common.Show_ID;
            divGetShow.Visible = false;
            divShowDetails.Visible = true;
        }
        else
        {
            divGetShow.Visible = true;
            divShowDetails.Visible = false;
        }

        if (!string.IsNullOrEmpty(Common.Class_Name_ID))
        {
            Class_Name_ID = Common.Class_Name_ID;
            lstClassNames.SelectedValue = Class_Name_ID;
        }
        if (!string.IsNullOrEmpty(Common.Class_No))
        {
            Class_No = Common.Class_No;
            txtClassNo.Text = Class_No;
        }
        if (string.IsNullOrEmpty(Common.Class_Gender))
        {
            Class_Gender = Common.Class_Gender;
            lstClassGender.SelectedValue = Class_Gender;
        }

        if (!string.IsNullOrEmpty(Club_ID))
            PopulateClub(Club_ID);
        if (!string.IsNullOrEmpty(Show_ID))
        {
            PopulateShow(Show_ID);
            PopulateClassGridview(Show_ID);
        }
        if (!Page.IsPostBack)
        {

            string returnChars = Request.QueryString["return"];
            btnReturn.PostBackUrl = Common.ReturnPath(Request.QueryString, returnChars, null);

            // Populate the ShowType listbox
            ClassNames classNames = new ClassNames(_connString);
            List<ClassNames> lkpClassNames;
            lkpClassNames = classNames.GetClass_Names();
            lstClassNames.DataSource = lkpClassNames;
            lstClassNames.DataBind();
            // Populate the ClassGender ListBox
            ListItemCollection classGenderList = new ListItemCollection();
            ListItem classGenderNS = new ListItem("Please Select...", Constants.CLASS_GENDER_NS.ToString());
            classGenderList.Add(classGenderNS);
            ListItem classGenderDB = new ListItem("Dog & Bitch", Constants.CLASS_GENDER_DB.ToString());
            classGenderList.Add(classGenderDB);
            ListItem classGenderD = new ListItem("Dog", Constants.CLASS_GENDER_D.ToString());
            classGenderList.Add(classGenderD);
            ListItem classGenderB = new ListItem("Bitch", Constants.CLASS_GENDER_B.ToString());
            classGenderList.Add(classGenderB);
            lstClassGender.DataSource = classGenderList;
            lstClassGender.DataBind();
        }
    }

    protected void btnAddClass_Click(object sender, EventArgs e)
    {
        bool valid = true;
        if (string.IsNullOrEmpty(Club_ID))
        {
            MessageLabel.Text = "You must specify the Club";
        }
        else if (string.IsNullOrEmpty(Show_ID))
        {
            MessageLabel.Text = "You must specify the Show";
            valid = false;
        }
        else if (lstClassNames.SelectedIndex == -1 || lstClassNames.SelectedIndex == 0)
        {
            MessageLabel.Text = "You must select a Class Name";
            valid = false;
        }
        else if (string.IsNullOrEmpty(txtClassNo.Text))
        {
            MessageLabel.Text = "You must enter a Class Number";
            valid = false;
        }
        else if (lstClassGender.SelectedIndex == -1 || lstClassGender.SelectedIndex == 0)
        {
            MessageLabel.Text = "You must select a Class Gender";
            valid = false;
        }
        if (valid)
        {
            MembershipUser userInfo = Membership.GetUser();
            Guid user_ID = (Guid)userInfo.ProviderUserKey;

            if (string.IsNullOrEmpty(Class_Name_ID))
                Class_Name_ID = lstClassNames.SelectedValue;
            if (string.IsNullOrEmpty(Class_No))
                Class_No = txtClassNo.Text;
            if (string.IsNullOrEmpty(Class_Gender))
                Class_Gender = lstClassGender.SelectedValue;

            Guid show_ID = new Guid(Show_ID);
            int class_Name_ID = Convert.ToInt32(Class_Name_ID);
            short class_No = Convert.ToInt16(Class_No);
            short class_Gender = Convert.ToInt16(Class_Gender);

            ShowEntryClasses showEntryClasses = new ShowEntryClasses(_connString);
            showEntryClasses.Show_ID = show_ID;
            showEntryClasses.Class_Name_ID = class_Name_ID;
            showEntryClasses.Class_No = class_No;
            showEntryClasses.Class_Gender = class_Gender;

            Guid? show_Entry_Class_ID = showEntryClasses.Insert_Show_Entry_Class(user_ID);
            if (show_Entry_Class_ID != null)
            {
                Show_Entry_Class_ID = show_Entry_Class_ID.ToString();
                Common.Show_Entry_Class_ID = Show_Entry_Class_ID;
                MessageLabel.Text = "The Class Name was added successfully";
                ClearEntryFields();
                PopulateClassGridview(Show_ID);
                if (!string.IsNullOrEmpty(btnReturn.PostBackUrl))
                {
                    DivReturn.Visible = true;
                    divAddClasses.Visible = true;
                }
            }
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        Common.Reset();
        Club_ID = null;
        Show_ID = null;
        Class_Name_ID = null;
        Class_Gender = null;
        Response.Redirect(Request.ServerVariables["URL"]);
    }

    private string _show_Entry_Class_ID;
    public string Show_Entry_Class_ID
    {
        get { return _show_Entry_Class_ID; }
        set { _show_Entry_Class_ID = value; }
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

    private string _class_Name_ID;
    public string Class_Name_ID
    {
        get { return _class_Name_ID; }
        set { _class_Name_ID = value; }
    }

    private string _class_No;
    public string Class_No
    {
        get { return _class_No; }
        set { _class_No = value; }
    }

    private string _class_Gender;
    public string Class_Gender
    {
        get { return _class_Gender; }
        set { _class_Gender = value; }
    }

    private void PopulateClub(string club_ID)
    {
        Guid Club_ID = new Guid(club_ID);
        Clubs club = new Clubs(_connString, Club_ID);

        txtClubLongName.Text = club.Club_Long_Name;
        divGetClub.Visible = false;
        divClubDetails.Visible = true;
    }

    private void PopulateShow(string show_ID)
    {
        Guid Show_ID = new Guid(show_ID);
        Shows show = new Shows(_connString, Show_ID);

        txtShowName.Text = show.Show_Name;
        divGetShow.Visible = false;
        divShowDetails.Visible = true;
    }

    private void ClearEntryFields()
    {
        Show_Entry_Class_ID = null;
        Common.Show_Entry_Class_ID = Show_Entry_Class_ID;
        Class_Name_ID = null;
        Common.Class_Name_ID = Class_Name_ID;
        Class_No = null;
        Common.Class_No = Class_No;
        Class_Gender = null;
        Common.Class_Gender = Class_Gender;
        lstClassGender.SelectedIndex = -1;
        lstClassNames.SelectedIndex = -1;
        txtClassNo.Text = string.Empty;
    }

    private void PopulateClassGridview(string show_ID)
    {
        bool valid = false;
        if (!string.IsNullOrEmpty(show_ID))
        {
            valid = true;
        }
        if (valid)
        {
            if (!string.IsNullOrEmpty(show_ID))
            {
                Guid newShow_ID = new Guid(show_ID);
                ShowEntryClasses showEntryClasses = new ShowEntryClasses(_connString);
                List<ShowEntryClasses> tblShowEntryClasses;
                tblShowEntryClasses = showEntryClasses.GetShow_Entry_ClassesByShow_ID(newShow_ID);
                ClassGridView.DataSource = tblShowEntryClasses;
                ClassGridView.DataBind();
            }
        }
        divClassList.Visible = valid;
    }
    protected void btnGetClub_Click(object sender, EventArgs e)
    {
        StoreFormFields();
        string returnChars = Common.AppendReturnChars(Request.QueryString, "sac");
        Server.Transfer("~/ShowAdmin/ClubSetup.aspx?" + returnChars);
    }

    protected void btnGetShow_Click(object sender, EventArgs e)
    {
        StoreFormFields();
        string returnChars = Common.AppendReturnChars(Request.QueryString, "sac");
        Server.Transfer("~/ShowAdmin/ShowSetup.aspx?" + returnChars);
    }
    protected void ClassGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        MembershipUser userInfo = Membership.GetUser();
        Guid user_ID = (Guid)userInfo.ProviderUserKey;

        string sec_id = ClassGridView.DataKeys[e.RowIndex]["Show_Entry_Class_ID"].ToString();
        Guid Show_Entry_Class_ID = new Guid(sec_id);
        ShowEntryClasses showEntryClasses = new ShowEntryClasses(_connString);
        showEntryClasses.DeleteShowEntryClass = true;
        if (showEntryClasses.Update_Show_Entry_Class(Show_Entry_Class_ID, user_ID))
        {
            PopulateClassGridview(Show_ID);
        }
    }
    private void StoreFormFields()
    {
        Common.Class_Name_ID = lstClassNames.SelectedValue;
        Common.Class_No = txtClassNo.Text;
        Common.Class_Gender = lstClassGender.SelectedValue;
    }
    protected void lstClassEntry_SelectedIndexChanged(object sender, EventArgs e)
    {
        StoreFormFields();
    }
    protected void lstClassGender_SelectedIndexChanged(object sender, EventArgs e)
    {
        StoreFormFields();
    }
}