using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace dsm_win
{
    public partial class SelectPerson : UserControl
    {
        private const int LIST_HIDDEN = 45;
        private const int LIST_SHOWN = 205;

        public int MaxHeight
        {
            get { return LIST_SHOWN; }
        }

        private DataTable _peopleData;
        public DataTable PeopleData
        {
            get { return _peopleData; }
            set { _peopleData = value; }
        }

        private string _selectedPerson;
        public string SelectedPerson
        {
            get { return _selectedPerson; }
            set { _selectedPerson = value; }
        }

        private string _selectedID;
        public string SelectedID
        {
            get { return _selectedID; }
            set { _selectedID = value; }
        }

        private string _caption;

        public string Caption
        {
            get { return _caption; }
            set 
            { 
                _caption = value;
                lblCaption.Text = _caption;
            }
        }
        
        public SelectPerson()
        {
            InitializeComponent();
            SetStyle(ControlStyles.SupportsTransparentBackColor, true);
            this.BackColor = Color.Transparent;
        }

        //public event KeyPressEventHandler KeyPress
        //{
        //    add { txtPerson.KeyPress += value; }
        //    remove { txtPerson.KeyPress -= value; }
        //}

        public event EventHandler PersonSelected
        {
            add { lstPeople.Click += value; }
            remove { lstPeople.Click -= value; }
        }
        
        private void txtPerson_KeyPress(object sender, KeyPressEventArgs e)
        {
            string name = "";

            if (e.KeyChar == (char)Keys.Back)
            {
                if (!string.IsNullOrWhiteSpace(txtPerson.Text))
                {
                    name = txtPerson.Text.Substring(0, (txtPerson.Text.Length - 1));

                }
            }
            else if (e.KeyChar == (char)Keys.Escape || e.KeyChar == (char)Keys.Delete)
            {
                name = "";
            }
            else
            {
                name = string.Format("{0}{1}", txtPerson.Text, e.KeyChar.ToString());
            }
            DataRow[] rows = _peopleData.Select(string.Format("FullName LIKE '%{0}%'", name));
            DataTable filteredTable = _peopleData.Clone();
            foreach (DataRow r in rows)
            {
                filteredTable.ImportRow(r);
            }
            lstPeople.DataSource = null;
            lstPeople.DataSource = filteredTable;
            lstPeople.DisplayMember = "FullName";
            lstPeople.Visible = filteredTable.Rows.Count > 0;
            this.Height = lstPeople.Visible ? LIST_SHOWN : LIST_HIDDEN;
        }

        private void lstPeople_Click(object sender, EventArgs e)
        {
            DataRowView drv = (DataRowView)lstPeople.SelectedItem;
            _selectedPerson = drv["FullName"].ToString();
            _selectedID = drv["EntrantID"].ToString();
            txtPerson.Text = _selectedPerson;
            lstPeople.Visible = false;
            this.Height = LIST_HIDDEN;
        }

        private void SelectPerson_Load(object sender, EventArgs e)
        {
            this.Height = LIST_HIDDEN;
        }
    }
}
