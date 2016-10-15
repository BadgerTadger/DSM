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
    public partial class frmRunningOrders : Form
    {
        private string _connString = "";
        private Guid _userID;
        private Guid _clubID;
        private Guid _showID;
        private Guid _showClassID;
        private string _show_Final_Class_ID;

        public frmRunningOrders(Guid clubID, Guid showID)
        {
            _clubID = clubID;
            _showID = showID;
            InitializeComponent();
            pnlRunningOrders.Enabled = false;
        }

        private void frmRunningOrders_Load(object sender, EventArgs e)
        {
            _connString = Utils.ConnectionString();

            Guid? userID = Utils.SetUserID();
            if (userID != null)
            {
                _userID = (Guid)userID;
            }

            PopulateClasses();
        }

        private void PopulateClasses()
        {
            cboShowClasses.Items.Clear();
            ShowFinalClasses showFinalClasses = new ShowFinalClasses(Utils.ConnectionString());
            List<ShowFinalClasses> showFinalClassList = showFinalClasses.GetShow_Final_ClassesByShow_ID(_showID);
            ComboBoxItem item = null;
            foreach (ShowFinalClasses sfc in showFinalClassList)
            {
                item = new ComboBoxItem();
                item.Text = sfc.Show_Final_Class_Description;
                item.Value = sfc.Show_Final_Class_ID;

                cboShowClasses.Items.Add(item);
            }
        }

        private void cboShowClasses_SelectedIndexChanged(object sender, EventArgs e)
        {
            _showClassID = new Guid((cboShowClasses.SelectedItem as ComboBoxItem).Value.ToString());
            pnlRunningOrders.Enabled = true;
            FillRunningOrdersGrid(dgvRunningOrders, true);
        }

        private void btnGetRunningOrderList_Click(object sender, EventArgs e)
        {
            FillRunningOrdersGrid(dgvRunningOrders, true);
        }

        public void FillRunningOrdersGrid(DataGridView gv, bool display)
        {
            List<Guid> showList = new List<Guid>();
            showList.Add(_showID);
            LinkedShows ls = new LinkedShows(_connString);
            List<LinkedShows> lsList = ls.GetLinked_ShowsByParent_ID(_showID);
            if (lsList != null && lsList.Count > 0)
            {
                foreach (LinkedShows linkedShow in lsList)
                {
                    showList.Add(linkedShow.Child_Show_ID);
                }
            }
            RunningOrders.SetDay1Show_ID(_connString, showList);
            List<OwnersDogsClassesDrawn> oDCDList = OwnersDogsClassesDrawn.GetOwnersDogsClassesDrawnListData(_connString, _showID, _showClassID, display);
            gv.DataSource = oDCDList;
            //gv.Columns[0].Visible = false;
            //gv.Columns[5].Visible = false;
            gv.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
        }
        private void btnAllocateRunningOrders_Click(object sender, EventArgs e)
        {
            RunningOrders.AllocateRunningOrders(_connString, _showID.ToString(), _userID);
        }

        private void btnClearRunningOrders_Click(object sender, EventArgs e)
        {
            RunningOrders.ClearRunningOrders(_connString, _showID.ToString(), _userID);
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
