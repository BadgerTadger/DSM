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
    public partial class frmMain : Form
    {
        private string _connString = "";
        private Guid _user_ID;
        private Guid _club_ID;
        private Guid _show_ID;

        public frmMain()
        {
            InitializeComponent();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            _connString = Utils.ConnectionString();

            RunOnce runOnce = new RunOnce();
            if (!runOnce.FoundSystemAdmin())
            {
                runOnce.CreateAdmin();
            }
            Guid? userID = Utils.SetUserID();
            if (userID != null)
            {
                _user_ID = (Guid)userID;
            }
            PopulateClubs();
        }

        private void PopulateClubs()
        {
            Clubs clubs = new Clubs(Utils.ConnectionString());
            List<Clubs> clubList = clubs.GetClubs();
            foreach (Clubs club in clubList)
            {
                ComboBoxItem item = new ComboBoxItem();
                item.Text = club.Club_Long_Name;
                item.Value = club.Club_ID;

                cboClubs.Items.Add(item);
            }
        }

        private void cboClubs_SelectedIndexChanged(object sender, EventArgs e)
        {
            _club_ID = new Guid((cboClubs.SelectedItem as ComboBoxItem).Value.ToString());
            cboShows.Text = "";
            cboShows.DataSource = null;
            cboShows.Refresh();
            PopulateShows(_club_ID);
            cboShows.Enabled = true;
            btnManageShows.Enabled = true;
        }

        private void PopulateShows(Guid club_ID)
        {
            cboShows.Items.Clear();
            Shows shows = new Shows(Utils.ConnectionString());
            List<Shows> showList = shows.GetShowsByClub_ID(club_ID);
            foreach (Shows show in showList)
            {
                ComboBoxItem item = new ComboBoxItem();
                item.Text = show.Show_Name;
                item.Value = show.Show_ID;

                cboShows.Items.Add(item);
            }
        }

        private void cboShows_SelectedIndexChanged(object sender, EventArgs e)
        {
            _show_ID = new Guid((cboShows.SelectedItem as ComboBoxItem).Value.ToString());
            pnlButtons.Enabled = true;
        }

        private void btnManageEntry_Click(object sender, EventArgs e)
        {
            frmManageEntry manageEntryForm = new frmManageEntry(_show_ID);
            manageEntryForm.ShowDialog();
        }

        private void btnRingNumbers_Click(object sender, EventArgs e)
        {
            frmRingNumbers ringNumbersForm = new frmRingNumbers(_show_ID);
            ringNumbersForm.ShowDialog();
        }

        private void btnSplitClasses_Click(object sender, EventArgs e)
        {
            frmSplitClasses splitClasses = new frmSplitClasses(_show_ID);
            splitClasses.ShowDialog();
        }

        private void btnVerfiyPartRequests_Click(object sender, EventArgs e)
        {
            frmVerifyPartRequests verifyPartRequests = new frmVerifyPartRequests(_show_ID);
            verifyPartRequests.ShowDialog();
        }

        private void btnCommitSplitClasses_Click(object sender, EventArgs e)
        {
            FinalClassNames finalClassNames = new FinalClassNames(_connString);
            List<FinalClassNames> finalClassNameList = finalClassNames.GetFinalClassNames();

            if (finalClassNameList != null && finalClassNameList.Count > 0)
            {
                ClearFinalClassNames(finalClassNameList);
                foreach (FinalClassNames finalClassName in finalClassNameList)
                {
                    Guid? show_Final_Class_ID = null;
                    ShowEntryClasses showEntryClass = new ShowEntryClasses(_connString, finalClassName.Show_Entry_Class_ID);
                    ShowFinalClasses showFinalClass = new ShowFinalClasses(_connString);
                    showFinalClass.Show_ID = showEntryClass.Show_ID;
                    showFinalClass.Show_Entry_Class_ID = showEntryClass.Show_Entry_Class_ID;
                    showFinalClass.Show_Final_Class_Description = finalClassName.Show_Final_Class_Description;
                    showFinalClass.Show_Final_Class_No = finalClassName.OrderBy;
                    show_Final_Class_ID = showFinalClass.Insert_Show_Final_Class(_user_ID);
                    if (show_Final_Class_ID == null)
                    {
                        MessageLabel.Text = "Show Final Class Insert Failed!";
                        break;
                    }
                    else
                    {
                        MessageLabel.Text = "Show Final Class Insert Successful.";
                    }
                }
            }
        }

        private void ClearFinalClassNames(List<FinalClassNames> finalClassNameList)
        {
            StringBuilder sb = new StringBuilder("Error List:");
            if (finalClassNameList != null && finalClassNameList.Count > 0)
            {
                foreach (FinalClassNames finalClassName in finalClassNameList)
                {
                    int delCount = 0;
                    ShowFinalClasses showFinalClasses = new ShowFinalClasses(_connString);
                    delCount = showFinalClasses.DeleteShowFinalClassesByShowEntryClass(finalClassName.Show_Entry_Class_ID);
                    if (delCount <= 0)
                    {
                        sb.AppendLine(string.Format("\nShow Final Class Delete Failed for {0}!", finalClassName.Class_Name_Description));
                    }
                }
            }
            //MessageLabel.Text = sb.ToString();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnManageShows_Click(object sender, EventArgs e)
        {
            frmShowSetup showSetup = new frmShowSetup(_club_ID);
            showSetup.ShowDialog();
            PopulateShows(_club_ID);
        }

        private void btnClasses_Click(object sender, EventArgs e)
        {
            frmShowClasses showClassSetup = new frmShowClasses(_club_ID, _show_ID);
            showClassSetup.ShowDialog();
        }

        private void btnJudges_Click(object sender, EventArgs e)
        {
            frmJudges judges = new frmJudges(_club_ID, _show_ID);
            judges.ShowDialog();
        }

        private void btnAllocateDogs_Click(object sender, EventArgs e)
        {
            Guid? userID = Utils.SetUserID();

            bool success = false;
            success = SplitClasses.AllocateDogsToFinalClasses(_connString, _show_ID, _user_ID);
            if (success)
                MessageLabel.Text = "Final Class Names successfully Added to Dogs";
            else
                MessageLabel.Text = "Error Adding Class Names from Dogs!";
        }

        private void btnUnallocateDogs_Click(object sender, EventArgs e)
        {
            Guid? userID = Utils.SetUserID();

            bool success = false;
            success = SplitClasses.UnAllocateDogsFromFinalClasses(_connString, _user_ID);
            if (success)
                MessageLabel.Text = "Final Class Names successfully removed Dogs";
            else
                MessageLabel.Text = "Error Removing Class Names from Dogs!";
        }

        private void btnRunningOrders_Click(object sender, EventArgs e)
        {
            frmRunningOrders runningOrders = new frmRunningOrders(_club_ID, _show_ID);
            runningOrders.ShowDialog();
        }

        private void btnCatalogueList_Click(object sender, EventArgs e)
        {
            frmCatalogue catalogue = new frmCatalogue(_club_ID, _show_ID);
            catalogue.ShowDialog();
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
            DSM_Import.frmMain frmImportMain = new DSM_Import.frmMain();
            frmImportMain.ShowDialog();
        }
    }
}
