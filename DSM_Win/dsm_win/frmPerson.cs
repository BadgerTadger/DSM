using BLL;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace dsm_win
{
    public partial class frmPerson : Form
    {
        private Guid? _personID = new Guid();

        private People _person = null;

        public frmPerson()
        {
            InitializeComponent();
        }

        public frmPerson(Guid person_ID)
        {
            _personID = person_ID;

            InitializeComponent();
        }

        private void frmPerson_Load(object sender, EventArgs e)
        {
            PopulateTitle("");
        }

        private void PopulateTitle(string filter)
        {
            try
            {
                People person = new People(Program.ConnectionString());
                List<Title> titleList = person.GetTitleList();
                cboTitle.DisplayMember = "Name";
                cboTitle.ValueMember = "Value";
                cboTitle.DataSource = titleList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if(ValidPerson())
            {
                try
                {
                    Addresses address = new Addresses(Program.ConnectionString());
                    address.Address_1 = ctAddress1.Address1;
                    address.Address_2 = ctAddress1.Address2;
                    address.Address_Town = ctAddress1.Town;
                    address.Address_City = ctAddress1.City;
                    address.Address_County = ctAddress1.County;
                    address.Address_Postcode = ctAddress1.Postcode;
                    Guid? addressID = address.Insert_Address(Program.UserID());

                    People person = new People(Program.ConnectionString());
                    person.Address_ID = addressID;
                    person.Person_Title = cboTitle.Text;
                    person.Person_Forename = txtForename.Text;
                    person.Person_Surname = txtSurname.Text;
                    person.Person_Mobile = txtMobile.Text;
                    person.Person_Landline = txtLandline.Text;
                    person.Person_Email = txtEmail.Text;
                    Program.PersonID = person.Insert_Person(Program.UserID());

                    if (_personID != null)
                    {

                    }
                }
                catch (Exception ex)
                {
                    lblError.Text = ex.Message;
                    lblError.Visible = true;
                    throw ex;
                }
            }
        }

        private bool ValidPerson()
        {
            bool retVal = true;

            txtForename.BackColor = SystemColors.Window;
            txtSurname.BackColor = SystemColors.Window;
            ctAddress1.Address1ClearError();
            lblError.Visible = false;

            if (string.IsNullOrEmpty(txtForename.Text))
            {
                txtForename.BackColor = Color.MistyRose;
                retVal = false;
            }

            if(string.IsNullOrEmpty(txtSurname.Text))
            {
                txtSurname.BackColor = Color.MistyRose;
                retVal = false;
            }

            if(string.IsNullOrEmpty(ctAddress1.Address1))
            {
                ctAddress1.Address1SetError();
                retVal = false;
            }

            if (!retVal)
            {
                lblError.Text = "Please correct highlighted field(s)";
                lblError.Visible = true;
            }

            return retVal;
        }
    }

}
