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
    public partial class CTAddress : UserControl
    {
        public CTAddress()
        {
            InitializeComponent();
        }

        private Guid _addressID;
        public Guid AddressID
        {
            get { return _addressID; }
            set { _addressID = value; }
        }
        
        public string Address1
        {
            get { return txtAddress1.Text; }
            set { txtAddress1.Text = value; }
        }

        public string Address2
        {
            get { return txtAddress2.Text; }
            set { txtAddress2.Text = value; }
        }

        public string Town
        {
            get { return txtTown.Text; }
            set { txtTown.Text = value; }
        }

        public string City
        {
            get { return txtCity.Text; }
            set { txtCity.Text = value; }
        }

        public string County
        {
            get { return txtCounty.Text; }
            set { txtCounty.Text = value; }
        }

        public string Postcode
        {
            get { return txtPostcode.Text; }
            set { txtPostcode.Text = value; }
        }

        public void Address1SetError()
        {
            txtAddress1.BackColor = Color.MistyRose;
        }

        public void Address1ClearError()
        {
            txtAddress1.BackColor = SystemColors.Window;
        }

    }
}
