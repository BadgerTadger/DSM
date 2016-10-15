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
    public partial class frmJudges : Form
    {
        private string _connString = "";
        private Guid _user_ID;
        private Guid _clubID;
        private Guid _showID;
        private Guid _showClassID;

        public frmJudges(Guid clubID, Guid showID)
        {
            _clubID = clubID;
            _showID = showID;
            InitializeComponent();
            PopulateClasses();
        }


        private void frmJudges_Load(object sender, EventArgs e)
        {
            _connString = Utils.ConnectionString();

            Guid? userID = Utils.SetUserID();
            if (userID != null)
            {
                _user_ID = (Guid)userID;
            }

            PopulateClasses();
        }
        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
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
        }

        private void cboShowClasses_SelectedIndexChanged(object sender, EventArgs e)
        {
            _showClassID = new Guid((cboShowClasses.SelectedItem as ComboBoxItem).Value.ToString());
            Judges judges = new Judges(_connString);
            if (judges.EntryExistsForShowClass(_showClassID))
            {
                PopulateJudges();
            }
            else
            {
                txtPrimaryJudge.Text = "";
                txtReserveJudge.Text = "";
                judges.InsertRecordForShowEntryClass(_showClassID);
            }
        }


        private void PopulateJudges()
        {
            Judges judges = new Judges(_connString, _showClassID);
            txtPrimaryJudge.Text = judges.Primary_Judge;
            txtReserveJudge.Text = judges.Reserve_Judge;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            Judges judges = new Judges(_connString, _showClassID);
            judges.Primary_Judge = txtPrimaryJudge.Text;
            judges.Reserve_Judge = txtReserveJudge.Text;
            judges.UpdateJudges();
        }
    }
}
