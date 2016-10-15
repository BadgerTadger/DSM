using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Windows.Forms;

namespace dsm_win
{
    public partial class frmManageEntry : Form
    {
        private Guid _show_ID;
        private Guid _entrant_ID;
        private Guid _owner_ID;
        private Guid _dog_ID;
        private Guid _prev_Owner_ID = new Guid();
        private DataTable _entrantData = new DataTable();


        public frmManageEntry(Guid showID)
        {
            _show_ID = showID;
            InitializeComponent();
        }

        private void frmManageEntry_Load(object sender, EventArgs e)
        {
            Rectangle screen = Screen.GetWorkingArea(this);
            this.Location = screen.Location;
            this.Width = screen.Width;
            this.Height = screen.Height;
            PositionControls();
            PopulateEntrants();
        }

        private void PositionControls()
        {
            btnBack.Location = new Point(this.Width - (btnBack.Width + 25), this.Height - (btnBack.Height + 50));
            dgvDogClasses.Width = (this.Width - 30);
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmManageEntry_Resize(object sender, EventArgs e)
        {
            PositionControls();
        }


        private void PopulateEntrants()
        {
            _entrantData.Columns.Clear();
            DataColumn dcFullName = new DataColumn("FullName");
            DataColumn dcEntrantID = new DataColumn("EntrantID");
            _entrantData.Columns.Add(dcFullName);
            _entrantData.Columns.Add(dcEntrantID);
            object[] dataRow = new object[2];

            string connString = Utils.ConnectionString();
            Entrants entrants = new Entrants(connString);
            List<Entrants> entrantList = entrants.GetEntrantsByShow_ID(_show_ID, true);
            foreach (Entrants entrant in entrantList)
            {
                DogClasses dc = new DogClasses(connString);
                List<DogClasses> dcList = dc.GetDog_ClassesByEntrant_ID((Guid)entrant.Entrant_ID);
                foreach (DogClasses dogClass in dcList)
                {
                    DogOwners dogOwners = new DogOwners(connString);
                    List<DogOwners> doList = dogOwners.GetDogOwnersByDog_ID((Guid)dogClass.Dog_ID);
                    foreach (DogOwners owner in doList)
                    {
                        if (owner.Owner_ID != _prev_Owner_ID)
                        {
                            People person = new People(connString, (Guid)owner.Owner_ID);
                            dataRow[0] = person.Person_FullName;
                            dataRow[1] = entrant.Entrant_ID;

                            _entrantData.Rows.Add(dataRow);
                        }
                        _prev_Owner_ID = owner.Owner_ID;
                    }
                }
            }
            selectEntrant.PeopleData = _entrantData;
        }

        private void PopulateDogClassesGrid(string entrantID)
        {
            string connString = Utils.ConnectionString();

            Guid entrant_ID = new Guid(entrantID);

            DogClasses dogClasses = new DogClasses(connString);
            List<DogClasses> dcList = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);

            DataTable dt = new DataTable();

            DataColumn dcDogClassID = new DataColumn("DogClassID");
            DataColumn dcEntrantID = new DataColumn("EntrantID");
            DataColumn dcDogID = new DataColumn("DogID");
            DataColumn dcKCName = new DataColumn("KCName");
            DataColumn dcBreed = new DataColumn("Breed");
            DataColumn dcGender = new DataColumn("Gender");
            DataColumn dcRegNo = new DataColumn("RegNo");
            DataColumn dcDOB = new DataColumn("DOB");
            DataColumn dcMeritPoints = new DataColumn("MeritPoints");
            DataColumn dcBreeder = new DataColumn("Breeder");
            DataColumn dcSire = new DataColumn("Sire");
            DataColumn dcDam = new DataColumn("Dam");
            DataColumn dcEntryClassName = new DataColumn("EntryClassName");
            DataColumn dcPreferredPart = new DataColumn("PreferredPart");
            DataColumn dcFinalClassName = new DataColumn("FinalClassName");
            DataColumn dcHandler = new DataColumn("Handler");
            DataColumn dcRingNo = new DataColumn("RingNo");
            DataColumn dcRunningOrder = new DataColumn("RunningOrder");
            DataColumn dcSpecialRequest = new DataColumn("SpecialRequest");

            dt.Columns.Add(dcDogClassID);
            dt.Columns.Add(dcEntrantID);
            dt.Columns.Add(dcDogID);
            dt.Columns.Add(dcKCName);
            dt.Columns.Add(dcBreed);
            dt.Columns.Add(dcGender);
            dt.Columns.Add(dcRegNo);
            dt.Columns.Add(dcDOB);
            dt.Columns.Add(dcMeritPoints);
            dt.Columns.Add(dcBreeder);
            dt.Columns.Add(dcSire);
            dt.Columns.Add(dcDam);
            dt.Columns.Add(dcEntryClassName);
            dt.Columns.Add(dcPreferredPart);
            dt.Columns.Add(dcFinalClassName);
            dt.Columns.Add(dcHandler);
            dt.Columns.Add(dcRingNo);
            dt.Columns.Add(dcRunningOrder);
            dt.Columns.Add(dcSpecialRequest);

            object[] dogRow = new object[19];
            foreach (DogClasses dc in dcList)
            {
                Dogs dog = new Dogs(connString, (Guid)dc.Dog_ID);
                ShowEntryClasses sec = new ShowEntryClasses(connString, (Guid)dc.Show_Entry_Class_ID);
                ClassNames cn = new ClassNames(connString, (int)sec.Class_Name_ID);
                DogBreeds db = new DogBreeds(connString, (int)dog.Dog_Breed_ID);
                DogGender dg = new DogGender(connString, (int)dog.Dog_Gender_ID);

                dogRow[0] = dc.Dog_Class_ID;
                dogRow[1] = entrant_ID;
                dogRow[2] = dog.Dog_ID;
                dogRow[3] = dog.Dog_KC_Name;
                dogRow[4] = db.Description;
                dogRow[5] = dg.Description;
                dogRow[6] = dog.Reg_No;
                DateTime DOB = (DateTime)dog.Date_Of_Birth;
                dogRow[7] = string.Format("{0}/{1}/{2}", DOB.Day, DOB.Month, DOB.Year);
                dogRow[8] = dog.Merit_Points;
                dogRow[9] = dog.Breeder;
                dogRow[10] = dog.Sire;
                dogRow[11] = dog.Dam;
                dogRow[12] = cn.Class_Name_Description;
                dogRow[13] = dc.Preferred_Part.ToString();
                if (dc.Show_Final_Class_ID != null && dc.Show_Final_Class_ID != new Guid())
                {
                    ShowFinalClasses sfc = new ShowFinalClasses(connString, (Guid)dc.Show_Final_Class_ID);
                    dogRow[14] = sfc.Show_Final_Class_Description;
                }
                else
                {
                    dogRow[14] = "Not Yet Assigned";
                }
                People handler = new People(connString, (Guid)dc.Handler_ID);
                dogRow[15] = handler.Person_FullName;
                dogRow[16] = string.IsNullOrWhiteSpace(dc.Ring_No.ToString()) ? "Not Yet Assigned" : dc.Ring_No.ToString();
                dogRow[17] = string.IsNullOrWhiteSpace(dc.Running_Order.ToString()) ? "Not Yet Assigned" : dc.Running_Order.ToString();
                dogRow[18] = dc.Special_Request;

                dt.Rows.Add(dogRow);

            }
            dgvDogClasses.DataSource = dt;
            dgvDogClasses.Columns["DogClassID"].Visible = false;
            dgvDogClasses.Columns["EntrantID"].Visible = false;
            dgvDogClasses.Columns["DogID"].Visible = false;
            dgvDogClasses.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
            dgvDogClasses.AutoSize = true;
        }

        private void dgvDogClasses_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            var senderGrid = (DataGridView)sender;

            if (e.RowIndex >= 0)
            {
                if (e.ColumnIndex == 5 || senderGrid.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString() == "Not Yet Assigned")
                {
                    MessageBox.Show("It is not possible to edit this field");
                }
                else
                {
                    string dogClassID = senderGrid.Rows[e.RowIndex].Cells["DogClassID"].Value.ToString();
                    string entrantID = senderGrid.Rows[e.RowIndex].Cells["EntrantID"].Value.ToString();
                    string dogID = senderGrid.Rows[e.RowIndex].Cells["DogID"].Value.ToString();

                    frmEditField editField = new frmEditField();
                    editField.ShowID = _show_ID.ToString();
                    editField.EntrantID = entrantID;
                    editField.DogID = dogID;
                    editField.DogClassID = dogClassID;
                    editField.GridColumn = e.ColumnIndex;
                    if (editField.ShowDialog(this) == DialogResult.OK)
                    {
                        PopulateDogClassesGrid(_entrant_ID.ToString());
                    }
                    editField.Dispose();
                }
            }
        }

        private void selectEntrant_PersonSelected(object sender, EventArgs e)
        {
            _entrant_ID = new Guid(selectEntrant.SelectedID);
            PopulateDogClassesGrid(selectEntrant.SelectedID);
        }
    }
}
