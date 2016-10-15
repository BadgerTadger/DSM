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
    public partial class frmVerifyPartRequests : Form
    {
        private string _connString = "";
        private Guid _show_ID;

        public frmVerifyPartRequests(Guid showID)
        {
            _show_ID = showID;
            InitializeComponent();
        }

        private void frmVerifyPartRequests_Load(object sender, EventArgs e)
        {
            _connString = Utils.ConnectionString();
            lblMismatch.Visible = false;
            PopulateClassListComboBox();
        }

        private void PopulateClassListComboBox()
        {
            ShowFinalClasses showFinalClasses = new ShowFinalClasses(_connString);
            List<ShowFinalClasses> splitClassList = showFinalClasses.GetSplitClassParts(_show_ID);
            foreach (ShowFinalClasses finalClass in splitClassList)
            {
                ComboBoxItem item = new ComboBoxItem();
                item.Value = finalClass.Show_Final_Class_ID.ToString();
                item.Text = finalClass.Show_Final_Class_Description;
                cboClassParts.Items.Add(item);
            }
        }

        private void cboClassParts_SelectedIndexChanged(object sender, EventArgs e)
        {
            //No of part requests is greater than the number in the part
            int classPart = 0;
            int requiredCount = 0;
            int actualCount = 0;

            ShowFinalClasses showFinalClasses = new ShowFinalClasses(_connString, new Guid((cboClassParts.SelectedItem as ComboBoxItem).Value.ToString()));
            FinalClassNames finalClassNames = new FinalClassNames(_connString, showFinalClasses.Show_Final_Class_No);
            requiredCount = (int)finalClassNames.Entries;
            DogClasses dogClasses = new DogClasses(_connString);
            List<DogClasses> dogClassList = dogClasses.GetDog_ClassesByShow_Entry_Class_ID((Guid)showFinalClasses.Show_Entry_Class_ID);
            int.TryParse(showFinalClasses.Show_Final_Class_Description.Substring(showFinalClasses.Show_Final_Class_Description.Length - 1), out classPart);
            if(classPart>0)
            {
                foreach (DogClasses dogClass in dogClassList)
                {
                    if(dogClass.Preferred_Part==classPart)
                    {
                        actualCount++;
                    }
                }
            }

            lblRequiredCount.Text = requiredCount.ToString();
            lblActualCount.Text = actualCount.ToString();

            if(actualCount>requiredCount)
            {
                lblActualCount.ForeColor = Color.Red;
                lblRequiredCount.ForeColor = Color.Red;
            }
            else
            {
                lblActualCount.ForeColor = Color.Lime;
                lblRequiredCount.ForeColor = Color.Lime;
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
