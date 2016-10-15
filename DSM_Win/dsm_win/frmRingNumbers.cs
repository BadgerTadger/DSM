using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

namespace dsm_win
{
    public partial class frmRingNumbers : Form
    {
        private string _connString = Utils.ConnectionString();
        private Guid _user_ID;
        private Guid _show_ID;

        public frmRingNumbers(Guid showID)
        {
            _show_ID = showID;
            InitializeComponent();
        }

        private void frmRingNumbers_Load(object sender, EventArgs e)
        {
            _connString = Utils.ConnectionString();

            Guid? userID = Utils.SetUserID();
            if (userID != null)
            {
                _user_ID = (Guid)userID;
            }

            PopulateGrid();
            btnAllocateRingNumbers.Enabled = true;
            btnResetRingNumbers.Enabled = true;
        }


        private void btnAllocateRingNumbers_Click(object sender, EventArgs e)
        {
            if (PopulateRingNumbersTable())
            {
                bool success = false;
                RingNumbers ringNumbers = new RingNumbers(_connString);
                List<RingNumbers> ringNumberList = ringNumbers.GetRing_Numbers();
                if (ringNumberList != null && ringNumberList.Count > 0)
                {
                    foreach (RingNumbers row in ringNumberList)
                    {
                        success = UpdateRingNumber(_show_ID, row.Dog_ID, row.Ring_No);
                        if (!success)
                        {
                            string msg = string.Format("Failed to update Ring Number {0}.!", row.Ring_No.ToString());
                            lblMessage.Text = msg;
                            Utils.LogToFile(msg);
                            break;
                        }
                    }
                }
                if (success)
                {
                    PopulateGrid();
                    lblMessage.Text = "Ring numbers updated successfully.";
                }
                else
                {
                    lblMessage.Text = "A problem occurred updating the Ring Numbers!";
                }
            }
            else
            {
                string msg = "Failed to populate Ring Number table";
                lblMessage.Text = msg;
                Utils.LogToFile(msg);
            }
        }

        protected bool PopulateRingNumbersTable()
        {
            Shows show = new Shows(_connString, _show_ID);
            bool success = false;
            RingNumbers ringNumbers = new RingNumbers(_connString);
            success = ringNumbers.PopulateRing_Numbers(_show_ID);

            return success;
        }

        private void btnResetRingNumbers_Click(object sender, EventArgs e)
        {
            bool success = false;
            RingNumbers ringNumbers = new RingNumbers(_connString);
            List<RingNumbers> ringNumberList = ringNumbers.GetRing_Numbers();
            if (ringNumberList != null && ringNumberList.Count > 0)
            {
                foreach (RingNumbers row in ringNumberList)
                {
                    success = UpdateRingNumber(_show_ID, row.Dog_ID, 0);
                    if (!success)
                    {
                        string msg = string.Format("Failed to reset Ring Number {0}.!", row.Ring_No.ToString());
                        lblMessage.Text = msg;
                        Utils.LogToFile(msg);
                        break;
                    }
                }
            }
            if (success)
            {
                dgvRingNumbers.DataSource = null;
                dgvRingNumbers.Refresh();
                lblMessage.Text = "Ring numbers reset successfully.";
            }
            else
            {
                lblMessage.Text = "A problem occurred resetting the Ring Numbers!";
            }
        }

        private void PopulateGrid()
        {
            DataTable gridData = new DataTable();
            gridData.Columns.Clear();
            DataColumn dcDogID = new DataColumn("DogID");
            DataColumn dcRingNumber = new DataColumn("RingNumber");
            DataColumn dcDogKCName = new DataColumn("DogKCName");
            DataColumn dcFirstName = new DataColumn("FirstName");
            DataColumn dcLastName = new DataColumn("LastName");
            gridData.Columns.Add(dcDogID);
            gridData.Columns.Add(dcRingNumber);
            gridData.Columns.Add(dcDogKCName);
            gridData.Columns.Add(dcFirstName);
            gridData.Columns.Add(dcLastName);

            object[] dataRow = new object[5];

            RingNumbers ringNumbers = new RingNumbers(_connString);
            List<RingNumbers> ringNumberList = ringNumbers.GetRing_Numbers();
            foreach (RingNumbers ringNumber in ringNumberList)
            {
                dataRow[0] = ringNumber.Dog_ID;
                dataRow[1] = ringNumber.Ring_No;
                dataRow[2] = ringNumber.Dog_KC_Name;
                dataRow[3] = ringNumber.Person_Forename;
                dataRow[4] = ringNumber.Person_Surname;

                gridData.Rows.Add(dataRow);
            }

            dgvRingNumbers.DataSource = gridData;
            dgvRingNumbers.Columns["DogID"].Visible = false;
            dgvRingNumbers.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
            //dgvRingNumbers.AutoSize = true;
        }

        private bool UpdateRingNumber(Guid show_ID, Guid dog_ID, short ring_No)
        {
            bool success = false;

            List<DogClasses> dogClassList = new List<DogClasses>();
            DogClasses dogClasses = new DogClasses(_connString);
            dogClassList = dogClasses.GetDog_ClassesByDog_ID(show_ID, dog_ID);
            foreach (DogClasses row in dogClassList)
            {
                if (row.Show_Entry_Class_ID != new Guid())
                {
                    Guid dog_Class_ID = new Guid(row.Dog_Class_ID.ToString());
                    DogClasses dogClass = new DogClasses(_connString, dog_Class_ID);
                    if (ring_No == 0)
                    {
                        dogClass.Ring_No = null;
                    }
                    else
                    {
                        dogClass.Ring_No = ring_No;
                    }
                    success = dogClass.Update_Dog_Class(dog_Class_ID, _user_ID);
                }
                else
                {
                    success = true;
                }

                if (!success)
                    return false;
            }
            return success;
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
