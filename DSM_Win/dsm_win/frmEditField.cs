using BLL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace dsm_win
{
    public partial class frmEditField : Form
    {
        private string _connString = "";

        private string _showID;
        public string ShowID
        {
            get { return _showID; }
            set { _showID = value; }
        }

        private string _entrantID;
        public string EntrantID
        {
            get { return _entrantID; }
            set { _entrantID = value; }
        }

        private string _dogID;
        public string DogID
        {
            get { return _dogID; }
            set { _dogID = value; }
        }

        private string _dogClassID;
        public string DogClassID
        {
            get { return _dogClassID; }
            set { _dogClassID = value; }
        }

        private int _gridColumn;
        public int GridColumn
        {
            get { return _gridColumn; }
            set { _gridColumn = value; }
        }

        private Guid user_ID;
        private TextBox txtNewValue = null;
        private ComboBox cboNewValue = null;
        private NumericUpDown numNewValue = null;
        private SelectPerson selectPerson = null;
        private Dogs dog = null;
        private DogClasses dogClass = null;

        public frmEditField()
        {
            InitializeComponent();
        }

        private void frmEditField_Load(object sender, EventArgs e)
        {
            _connString = Utils.ConnectionString();

            Guid? userID = Utils.SetUserID();
            if (userID != null)
            {
                user_ID = (Guid)userID;
            }

            switch (_gridColumn)
            {
                case 3: //KC Name
                    EditKCName();
                    break;
                case 4: //Breed
                    EditBreed();
                    break;
                case 5: //Gender
                    //Cannot edit Gender
                    break;
                case 6: //Reg No
                    EditRegNo();
                    break;
                case 7: //DOB
                    EditDOB();
                    break;
                case 8: //Merit Points
                    EditMeritPoints();
                    break;
                case 9: //Breeder
                    EditBreeder();
                    break;
                case 10: //Sire
                    EditSire();
                    break;
                case 11: //Dam
                    EditDam();
                    break;
                case 12: //Entry Class
                    EditEntryClass();
                    break;
                case 13: //Preferred Part
                    EditPreferredPart();
                    break;
                case 14: //Final Class
                    EditFinalClass();
                    break;
                case 15: //Handler
                    EditHandler();
                    break;
                case 16: //Ring Number
                    EditRingNumber();
                    break;
                case 17: //Running Order
                    EditRunningOrder();
                    break;
                case 18: //Special Request
                    EditSpecialRequest();
                    break;
                default:
                    break;
            }
        }

        private void EditKCName()
        {
            txtNewValue = new TextBox();
            txtNewValue.Width = panel1.Width;
            panel1.Controls.Add(txtNewValue);
            dog = new Dogs(_connString, new Guid(_dogID));
            lblCurrentValue.Text = dog.Dog_KC_Name;
            lblCurrentValue.Visible = true;
            txtNewValue.Text = dog.Dog_KC_Name;
        }

        private void EditBreed()
        {
            int selectedBreed = -1;
            cboNewValue = new ComboBox();
            cboNewValue.Width = panel1.Width;
            panel1.Controls.Add(cboNewValue);
            dog = new Dogs(_connString, new Guid(_dogID));
            DogBreeds db = new DogBreeds(_connString);
            List<DogBreeds> breedList = db.GetDog_Breeds();
            foreach (DogBreeds breed in breedList)
            {
                ComboBoxItem item = new ComboBoxItem();
                item.Text = breed.Description;
                item.Value = breed.Dog_Breed_ID;
                cboNewValue.Items.Add(item);
                if (dog.Dog_Breed_ID == breed.Dog_Breed_ID)
                {
                    selectedBreed = breed.Dog_Breed_ID;
                    lblCurrentValue.Text = breed.Description;
                    lblCurrentValue.Visible = true;
                }
            }
        }

        private void EditRegNo()
        {
            txtNewValue = new TextBox();
            txtNewValue.Width = panel1.Width;
            panel1.Controls.Add(txtNewValue);
            dog = new Dogs(_connString, new Guid(_dogID));
            lblCurrentValue.Text = dog.Reg_No;
            lblCurrentValue.Visible = true;
            txtNewValue.Text = dog.Reg_No;
        }

        private void EditDOB()
        {
            txtNewValue = new TextBox();
            txtNewValue.Width = panel1.Width;
            panel1.Controls.Add(txtNewValue);
            dog = new Dogs(_connString, new Guid(_dogID));
            DateTime DOB = (DateTime)dog.Date_Of_Birth;
            string dob = string.Format("{0}/{1}/{2}", DOB.Day, DOB.Month, DOB.Year);
            lblCurrentValue.Text = dob;
            lblCurrentValue.Visible = true;
            txtNewValue.Text = dob;
        }

        private void EditMeritPoints()
        {
            numNewValue = new NumericUpDown();
            numNewValue.Minimum = 0;            
            panel1.Controls.Add(numNewValue);
            dog = new Dogs(_connString, new Guid(_dogID));
            lblCurrentValue.Text = dog.Merit_Points.ToString();
            lblCurrentValue.Visible = true;
            numNewValue.Value = (decimal)dog.Merit_Points;
        }

        private void EditBreeder()
        {
            txtNewValue = new TextBox();
            txtNewValue.Width = panel1.Width;
            panel1.Controls.Add(txtNewValue);
            dog = new Dogs(_connString, new Guid(_dogID));
            lblCurrentValue.Text = dog.Breeder;
            lblCurrentValue.Visible = true;
            txtNewValue.Text = dog.Breeder;
        }

        private void EditSire()
        {
            txtNewValue = new TextBox();
            txtNewValue.Width = panel1.Width;
            panel1.Controls.Add(txtNewValue);
            dog = new Dogs(_connString, new Guid(_dogID));
            lblCurrentValue.Text = dog.Sire;
            lblCurrentValue.Visible = true;
            txtNewValue.Text = dog.Sire;
        }

        private void EditDam()
        {
            txtNewValue = new TextBox();
            txtNewValue.Width = panel1.Width;
            panel1.Controls.Add(txtNewValue);
            dog = new Dogs(_connString, new Guid(_dogID));
            lblCurrentValue.Text = dog.Dam;
            lblCurrentValue.Visible = true;
            txtNewValue.Text = dog.Dam;
        }

        private void EditEntryClass()
        {
            cboNewValue = new ComboBox();
            cboNewValue.Width = panel1.Width;
            panel1.Controls.Add(cboNewValue);
            dog = new Dogs(_connString, new Guid(_dogID));
            dogClass = new DogClasses(_connString, new Guid(_dogClassID));
            ShowEntryClasses sec = new ShowEntryClasses(_connString);
            List<ShowEntryClasses> secList = sec.GetShow_Entry_ClassesByShow_ID(new Guid(_showID));
            foreach (ShowEntryClasses showEntryClass in secList)
            {
                ClassNames cn = new ClassNames(_connString, (int)showEntryClass.Class_Name_ID);
                ComboBoxItem item = new ComboBoxItem();
                item.Text = cn.Description;
                item.Value = showEntryClass.Show_Entry_Class_ID;
                cboNewValue.Items.Add(item);
                if (dogClass.Show_Entry_Class_ID == showEntryClass.Show_Entry_Class_ID)
                {
                    lblCurrentValue.Text = cn.Description;
                    lblCurrentValue.Visible = true;
                }
            }
        }

        private void EditPreferredPart()
        {
            numNewValue = new NumericUpDown();
            numNewValue.Minimum = 0;
            panel1.Controls.Add(numNewValue);
            dogClass = new DogClasses(_connString, new Guid(_dogClassID));
            lblCurrentValue.Text = dogClass.Preferred_Part.ToString();
            lblCurrentValue.Visible = true;
            numNewValue.Value = dogClass.Preferred_Part;
        }

        private void EditFinalClass()
        {
            cboNewValue = new ComboBox();
            cboNewValue.Width = panel1.Width;
            panel1.Controls.Add(cboNewValue);
            dog = new Dogs(_connString, new Guid(_dogID));
            dogClass = new DogClasses(_connString, new Guid(_dogClassID));
            ShowFinalClasses sfc = new ShowFinalClasses(_connString);
            List<ShowFinalClasses> sfcList = sfc.GetShow_Final_ClassesByShow_Entry_Class_ID((Guid)dogClass.Show_Entry_Class_ID);
            if (sfcList.Count == 0)
            {
                this.DialogResult = System.Windows.Forms.DialogResult.Abort;
            }
            else
            {
                foreach (ShowFinalClasses showFinalClass in sfcList)
                {
                    ComboBoxItem item = new ComboBoxItem();
                    item.Text = showFinalClass.Show_Final_Class_Description;
                    item.Value = showFinalClass.Show_Final_Class_ID;
                    cboNewValue.Items.Add(item);
                    if (dogClass.Show_Final_Class_ID == showFinalClass.Show_Final_Class_ID)
                    {
                        lblCurrentValue.Text = showFinalClass.Show_Final_Class_Description; ;
                        lblCurrentValue.Visible = true;
                    }
                }
            }
        }

        private void EditHandler()
        {
            selectPerson = new SelectPerson();
            panel1.Height = selectPerson.MaxHeight;
            panel1.Controls.Add(selectPerson);
            selectPerson.Caption = "Handler";
            dogClass = new DogClasses(_connString, new Guid(_dogClassID));
            People handlers = new People(_connString);
            List<People> handlerList = handlers.GetPeople();
            if (handlerList.Count == 0)
            {
                this.DialogResult = System.Windows.Forms.DialogResult.Abort;
            }
            else
            {
                DataTable handlerData = new DataTable();
                DataColumn dcFullName = new DataColumn("FullName");
                DataColumn dcPersonID = new DataColumn("EntrantID");
                handlerData.Columns.Add(dcFullName);
                handlerData.Columns.Add(dcPersonID);
                object[] dataRow = new object[2];
                foreach (People handler in handlerList)
                {
                    dataRow[0] = handler.Person_FullName;
                    dataRow[1] = handler.Person_ID;
                    if (dogClass.Handler_ID == handler.Person_ID)
                    {
                        lblCurrentValue.Text = handler.Person_FullName;
                        lblCurrentValue.Visible = true;
                    }
                    handlerData.Rows.Add(dataRow);
                }
                selectPerson.PeopleData = handlerData;
                PositionControls();
            }
        }

        private void EditRingNumber()
        {
            numNewValue = new NumericUpDown();
            numNewValue.Minimum = 0;
            numNewValue.Maximum = 9999;
            panel1.Controls.Add(numNewValue);
            dogClass = new DogClasses(_connString, new Guid(_dogClassID));
            lblCurrentValue.Text = dogClass.Ring_No.ToString();
            lblCurrentValue.Visible = true;
            numNewValue.Value = (decimal)dogClass.Ring_No;
        }

        private void EditRunningOrder()
        {
            numNewValue = new NumericUpDown();
            numNewValue.Minimum = 0;
            panel1.Controls.Add(numNewValue);
            dogClass = new DogClasses(_connString, new Guid(_dogClassID));
            lblCurrentValue.Text = dogClass.Running_Order.ToString();
            lblCurrentValue.Visible = true;
            numNewValue.Value = (decimal)dogClass.Running_Order;
        }

        private void EditSpecialRequest()
        {
            txtNewValue = new TextBox();
            panel1.Controls.Add(txtNewValue);
            dogClass = new DogClasses(_connString, new Guid(_dogClassID));
            lblCurrentValue.Text = dogClass.Special_Request;
            lblCurrentValue.Visible = true;
            txtNewValue.Text = dogClass.Special_Request;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            string err = "";

            switch (_gridColumn)
            {
                case 3: //KC Name
                    err = SaveKCName();
                    break;
                case 4: //Breed
                    err = SaveBreed();
                    break;
                case 5: //Gender
                    //Cannot edit Gender
                    break;
                case 6: //Reg No
                    err = SaveRegNo();
                    break;
                case 7: //DOB
                    err = SaveDOB();
                    break;
                case 8: //Merit Points
                    err = SaveMeritPoints();
                    break;
                case 9: //Breeder
                    err = SaveBreeder();
                    break;
                case 10: //Sire
                    err = SaveSire();
                    break;
                case 11: //Dam
                    err = SaveDam();
                    break;
                case 12: //Entry Class
                    err = SaveEntryClass();
                    break;
                case 13: //Preferred Part
                    err = SavePreferredPart();
                    break;
                case 14: //Final Class
                    err = SaveFinalClass();
                    break;
                case 15: //Handler
                    err = SaveHandler();
                    break;
                case 16: //Ring Number
                    err = SaveRingNumber();
                    break;
                case 17: //Running Order
                    err = SaveRunningOrder();
                    break;
                case 18: //Special Request
                    err = SaveSpecialRequest();
                    break;
                default:
                    break;
            }
            if (!string.IsNullOrWhiteSpace(err))
            {
                lblError.Text = err;
                lblError.Visible = true;
            }
            else
            {
                this.DialogResult = DialogResult.OK;
            }
        }

        private string SaveKCName()
        {
            string retVal = "";

            if (txtNewValue != null && !string.IsNullOrWhiteSpace(txtNewValue.Text))
            {
                if (dog != null)
                {
                    dog.Dog_KC_Name = txtNewValue.Text;
                    dog.Update_Dog(dog.Dog_ID, user_ID);
                }
            }
            else
            {
                retVal = "You must provide a KC Name";
            }

            return retVal;
        }

        private string SaveBreed()
        {
            string retVal = "";

            if (cboNewValue.SelectedItem != null)
            {
                if (dog != null)
                {
                    dog.Dog_Breed_ID = int.Parse((cboNewValue.SelectedItem as ComboBoxItem).Value.ToString());
                    dog.Update_Dog(dog.Dog_ID, user_ID);
                }
            }
            else
            {
                retVal = "You must select a Breed";
            }

            return retVal;
        }

        private string SaveRegNo()
        {
            string retVal = "";

            if (txtNewValue != null && !string.IsNullOrWhiteSpace(txtNewValue.Text))
            {
                Dogs dogs = new Dogs(_connString);
                List<Dogs> dogList = dogs.GetDogByRegNo(txtNewValue.Text);
                if (dogList.Count > 0)
                {
                    retVal = "A dog with this KC Registration Number already exists";
                }
                else if (dog != null)
                {
                    dog.Reg_No = txtNewValue.Text;
                    dog.Update_Dog(dog.Dog_ID, user_ID);
                }
            }
            else
            {
                retVal = "You must provide a KC Registration Number";
            }

            return retVal;
        }

        private string SaveDOB()
        {
            string retVal = "";

            if (txtNewValue != null && !string.IsNullOrWhiteSpace(txtNewValue.Text))
            {
                if (dog != null)
                {
                    DateTime dob;
                    if (DateTime.TryParse(txtNewValue.Text, out dob))
                    {
                        dog.Date_Of_Birth = dob;
                        dog.Update_Dog(dog.Dog_ID, user_ID);
                    }
                    else
                    {
                        retVal = "Invalid date format entered for Date Of Birth";
                    }
                }
            }
            else
            {
                retVal = "You must provide a Date Of Birth";
            }

            return retVal;
        }

        private string SaveMeritPoints()
        {
            string retVal = "";

            if (numNewValue != null)
            {
                if (dog != null)
                {
                    dog.Merit_Points = (short)numNewValue.Value;
                    dog.Update_Dog(dog.Dog_ID, user_ID);
                }
            }

            return retVal;
        }

        private string SaveBreeder()
        {
            string retVal = "";

            if (txtNewValue != null)
            {
                if (dog != null)
                {
                    dog.Breeder = txtNewValue.Text;
                    dog.Update_Dog(dog.Dog_ID, user_ID);
                }
            }

            return retVal;
        }

        private string SaveSire()
        {
            string retVal = "";

            if (txtNewValue != null)
            {
                if (dog != null)
                {
                    dog.Sire = txtNewValue.Text;
                    dog.Update_Dog(dog.Dog_ID, user_ID);
                }
            }

            return retVal;
        }

        private string SaveDam()
        {
            string retVal = "";

            if (txtNewValue != null)
            {
                if (dog != null)
                {
                    dog.Dam = txtNewValue.Text;
                    dog.Update_Dog(dog.Dog_ID, user_ID);
                }
            }

            return retVal;
        }

        private string SaveEntryClass()
        {
            string retVal = "";

            if (cboNewValue.SelectedItem != null)
            {
                if (dogClass != null)
                {
                    dogClass.Show_Entry_Class_ID = new Guid((cboNewValue.SelectedItem as ComboBoxItem).Value.ToString());
                    dogClass.Update_Dog_Class((Guid)dogClass.Dog_Class_ID, user_ID);
                }
            }
            else
            {
                retVal = "You must select an Entry Class";
            }

            return retVal;
        }

        private string SavePreferredPart()
        {
            string retVal = "";

            if (numNewValue != null)
            {
                if (dogClass != null)
                {
                    dogClass.Preferred_Part = (short)numNewValue.Value;
                    dogClass.Update_Dog_Class((Guid)dogClass.Dog_Class_ID, user_ID);
                }
            }

            return retVal;
        }

        private string SaveFinalClass()
        {
            string retVal = "";

            if (cboNewValue.SelectedItem != null)
            {
                if (dogClass != null)
                {
                    dogClass.Show_Final_Class_ID = new Guid((cboNewValue.SelectedItem as ComboBoxItem).Value.ToString());
                    dogClass.Update_Dog_Class((Guid)dogClass.Dog_Class_ID, user_ID);
                }
            }
            else
            {
                retVal = "You must select a Final Class";
            }

            return retVal;
        }

        private string SaveHandler()
        {
            string retVal = "";

            if (selectPerson.SelectedPerson != null)
            {
                if (dogClass != null)
                {
                    dogClass.Handler_ID = new Guid(selectPerson.SelectedID);
                    dogClass.Update_Dog_Class((Guid)dogClass.Dog_Class_ID, user_ID);
                }
            }
            else
            {
                retVal = "You must select a Handler";
            }

            return retVal;
        }

        private string SaveRingNumber()
        {
            string retVal = "";

            if (numNewValue != null)
            {
                if (dogClass != null)
                {
                    dogClass.Ring_No = (short)numNewValue.Value;
                    dogClass.Update_Dog_Class((Guid)dogClass.Dog_Class_ID, user_ID);
                }
            }

            return retVal;
        }

        private string SaveRunningOrder()
        {
            string retVal = "";

            if (numNewValue != null)
            {
                if (dogClass != null)
                {
                    dogClass.Running_Order = (short)numNewValue.Value;
                    dogClass.Update_Dog_Class((Guid)dogClass.Dog_Class_ID, user_ID);
                }
            }

            return retVal;
        }

        private string SaveSpecialRequest()
        {
            string retVal = "";

            if (txtNewValue != null)
            {
                if (dogClass != null)
                {
                    dogClass.Special_Request = txtNewValue.Text;
                    dogClass.Update_Dog_Class((Guid)dogClass.Dog_Class_ID, user_ID);
                }
            }

            return retVal;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void PositionControls()
        {
            lblError.Top = panel1.Bottom + 20;
            btnSave.Top = lblError.Bottom + 20;
            btnCancel.Top = lblError.Bottom + 20;
            this.Height = btnSave.Bottom + 100;
        }
    }
}
