using BLL;
using System;
using System.Collections.Generic;
using System.Windows.Forms;

namespace dsm_win
{
    public partial class frmSplitClasses : Form
    {
        private string _connString = "";
        private Guid _user_ID;
        private Guid _show_ID;

        public frmSplitClasses(Guid showID)
        {
            _show_ID = showID;
            InitializeComponent();
        }

        private void frmSplitClasses_Load(object sender, EventArgs e)
        {
            _connString = Utils.ConnectionString();

            Guid? userID = Utils.SetUserID();
            if (userID != null)
            {
                _user_ID = (Guid)userID;
            }

            btnGetEntryClasses.Enabled = true;
        }

        private void btnGetEntryClasses_Click(object sender, EventArgs e)
        {
            PopulateEntryClassesCountTable();
        }

        protected void PopulateEntryClassesCountTable()
        {
            bool success = false;

            EntryClassesCount entryClasses = new EntryClassesCount(_connString);
            success = entryClasses.PopulateEntryClassCount(_show_ID);
            if (success)
            {
                PopulateEntryClassGridView();
            }
            else
            {
                string msg = "Failed to populate the Entry Class Count table";
                lblMessage.Text = msg;
                Utils.LogToFile(msg);
            }
        }

        protected void PopulateEntryClassGridView()
        {
            EntryClassesCount entryClasses = new EntryClassesCount(_connString);
            List < EntryClassesCount> EntryClassList = entryClasses.GetEntryClassCount();

            if (EntryClassList != null && EntryClassList.Count > 0)
            {
                dgvEntryClasses.DataSource = EntryClassList;
                dgvEntryClasses.Columns[0].Visible = false;
                dgvEntryClasses.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
                btnGetFinalClasses.Enabled = true;
                dgvFinalClassNames.Enabled = true;
            }
            else
            {
                string msg = "No Data for this Show";
                lblMessage.Text = msg;
                Utils.LogToFile(msg);
            }
        }

        private void btnGetFinalClasses_Click(object sender, EventArgs e)
        {
            bool success = SplitClasses.PopulateFinalClassNames(_connString, (int)numMaxClassSize.Value);
            if (success)
            {
                PopulateFinalClassGridView();
            }
        }

        private void PopulateFinalClassGridView()
        {
            List<FinalClassNames> FinalClassNameList = SplitClasses.DisplayFinalClassNames(_connString);
            if (FinalClassNameList != null && FinalClassNameList.Count > 0)
            {
                dgvFinalClassNames.DataSource = FinalClassNameList;
                dgvFinalClassNames.Columns[0].Visible = false;
                dgvFinalClassNames.Columns[5].Visible = false;
                dgvFinalClassNames.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
                //Enable buttons
            }
            else
            {
                string msg = "Failed to populate the Final Class Names Grid";
                lblMessage.Text = msg;
                Utils.LogToFile(msg);
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }


    }
}
