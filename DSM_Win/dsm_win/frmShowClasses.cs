using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;

namespace dsm_win
{
    public partial class frmShowClasses : Form
    {
        private string _connString = "";
        private Guid _user_ID;
        private Guid _clubID;
        private Guid _showID;
        private Guid _showClassID;
        private bool _populated = false;

        public frmShowClasses(Guid clubID, Guid showID)
        {
            _clubID = clubID;
            _showID = showID;
            InitializeComponent();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmShowClasses_Load(object sender, EventArgs e)
        {
            _connString = Utils.ConnectionString();

            Guid? userID = Utils.SetUserID();
            if (userID != null)
            {
                _user_ID = (Guid)userID;
            }

            PopulateClasses();
        }

        private void PopulateClasses()
        {
            cboShowClasses.Items.Clear();
            ShowEntryClasses showEntryClasses = new ShowEntryClasses(Utils.ConnectionString());
            List<ShowEntryClasses> showEntryClassList = showEntryClasses.GetShow_Entry_ClassesByShow_ID(_showID);
            ComboBoxItem item = null;
            foreach (ShowEntryClasses sec in showEntryClassList)
            {
                item = new ComboBoxItem();
                item.Text = sec.Class_Name_Description;
                item.Value = sec.Show_Entry_Class_ID;

                cboShowClasses.Items.Add(item);
            }
            item = new ComboBoxItem();
            item.Text = "Add New";
            item.Value = null;

            cboShowClasses.Items.Add(item);
        }

        private void cboShowClasses_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboShowClasses.SelectedItem.ToString() != "Add New")
            {
                _showClassID = new Guid((cboShowClasses.SelectedItem as ComboBoxItem).Value.ToString());
                PopulateShowClass();
            }
            else
            {
                _showClassID = new Guid();
                if (!_populated)
                {
                    PopulateClassNames(1);
                    PopulateClassGenders(0);
                    _populated = true;
                }
            }
        }

        private void PopulateShowClass()
        {
            ShowEntryClasses showEntryClass = new ShowEntryClasses(_connString, _showClassID);
            PopulateClassNames(int.Parse(showEntryClass.Class_Name_ID.ToString()));
            numClassNumber.Value = decimal.Parse(showEntryClass.Class_No.ToString());
            PopulateClassGenders((short)showEntryClass.Class_Gender);
        }

        private void PopulateClassNames(int val)
        {
            ClassNames classNames = new ClassNames(_connString);
            List<ClassNames> classNameList = classNames.GetClass_Names();
            foreach (ClassNames className in classNameList)
            {
                ComboBoxItem item = new ComboBoxItem();
                item.Text = className.Description;
                item.Value = className.Class_Name_ID;

                cboClassNames.Items.Add(item);
                if (className.Class_Name_ID == val)
                {
                    cboClassNames.Text = className.Description;
                }
            }
        }

        private void PopulateClassGenders(short val)
        {
            List<ComboBoxItem> classGenderList = new List<ComboBoxItem>();

            ComboBoxItem classGenderNS = new ComboBoxItem();
            classGenderNS.Text = "Please Select...";
            classGenderNS.Value = Constants.CLASS_GENDER_NS.ToString();
            cboClassGender.Items.Add(classGenderNS);

            ComboBoxItem classGenderDB = new ComboBoxItem();
            classGenderDB.Text = "Dog & Bitch";
            classGenderDB.Value = Constants.CLASS_GENDER_DB.ToString();
            cboClassGender.Items.Add(classGenderDB);

            ComboBoxItem classGenderD = new ComboBoxItem();
            classGenderD.Text = "Dog";
            classGenderD.Value = Constants.CLASS_GENDER_D.ToString();
            cboClassGender.Items.Add(classGenderD);

            ComboBoxItem classGenderB = new ComboBoxItem();
            classGenderB.Text = "Bitch";
            classGenderB.Value = Constants.CLASS_GENDER_B.ToString();
            cboClassGender.Items.Add(classGenderB);

            switch (val)
            {
                case 1:
                    cboClassGender.Text = "Dog & Bitch";
                    break;
                case 2:
                    cboClassGender.Text = "Dog";
                    break;
                case 3:
                    cboClassGender.Text = "Bitch";
                    break;
                default:
                    cboClassGender.Text = "Please Select...";
                    break;
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            bool valid = true;
            if (cboClassNames.SelectedIndex == -1 || cboClassNames.SelectedIndex == 0)
            {
                MessageLabel.Text = "You must select a Class Name";
                valid = false;
            }
            else if (numClassNumber.Value == -1)
            {
                MessageLabel.Text = "You must enter a Class Number";
                valid = false;
            }
            else if (cboClassGender.SelectedIndex == -1 || cboClassGender.SelectedIndex == 0)
            {
                MessageLabel.Text = "You must select a Class Gender";
                valid = false;
            }
            if (valid)
            {
                int class_Name_ID = Convert.ToInt32((cboClassNames.SelectedItem as ComboBoxItem).Value.ToString());
                short class_No = Convert.ToInt16(numClassNumber.Value.ToString());
                short class_Gender = Convert.ToInt16((cboClassGender.SelectedItem as ComboBoxItem).Value.ToString());

                ShowEntryClasses showEntryClasses = new ShowEntryClasses(_connString);
                showEntryClasses.Show_ID = _showID;
                showEntryClasses.Class_Name_ID = class_Name_ID;
                showEntryClasses.Class_No = class_No;
                showEntryClasses.Class_Gender = class_Gender;

                if (_showClassID == new Guid())
                {
                    Guid? show_Entry_Class_ID = showEntryClasses.Insert_Show_Entry_Class(_user_ID);
                    if (show_Entry_Class_ID != null)
                    {
                        MessageLabel.Text = "The Class Name was added successfully";
                    }
                }
                else
                {
                    if(showEntryClasses.Update_Show_Entry_Class(_showClassID, _user_ID))
                    {
                        MessageLabel.Text = "The Class Name was saved successfully";
                    }
                }
            }
        }
    }
}
