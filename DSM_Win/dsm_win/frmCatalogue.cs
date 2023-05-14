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
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace dsm_win
{
    public partial class frmCatalogue : Form
    {
        private string _connString = "";
        private Guid _userID;
        private Guid _clubID;
        private Guid _showID;
        private bool _champOnly;
        private List<CatalogueList> _catalogueListByRingNumberList;
        public List<CatalogueList> CatalogueListByRingNumberList
        {
            get
            {
                if (_catalogueListByRingNumberList == null)
                    _catalogueListByRingNumberList = new List<CatalogueList>();

                return _catalogueListByRingNumberList;
            }
            set { _catalogueListByRingNumberList = value; }
        }
        private string _previousOwner;
        public string PreviousOwner
        {
            get { return _previousOwner; }
            set { _previousOwner = value; }
        }
        Table tblCatalogueTable = new Table();

        public frmCatalogue(Guid clubID, Guid showID, bool champOnly = false)
        {
            _clubID = clubID;
            _showID = showID;
            _champOnly = champOnly;
            InitializeComponent();
        }

        private void frmCatalogue_Load(object sender, EventArgs e)
        {
            _connString = Utils.ConnectionString();

            Guid? userID = Utils.SetUserID();
            if (userID != null)
            {
                _userID = (Guid)userID;
            }

            CatalogData();
        }
        protected void CatalogData()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<html><head><style>\r\n");
            sb.Append(".CellBold { font-weight:bold; }\r\n");
            sb.Append(".CellRightBold { text-align:right; font-weight:bold; }\r\n");
            sb.Append("table.CatalogueList td { border-style:none; font-size:60%; vertical-align:top; }\r\n");
            sb.Append(".tableCellWidth1 { width: 6%; }");
            sb.Append(".tableCellWidth2 { width: 41%; }");
            sb.Append(".tableCellWidth3 { width: 28%; }");
            sb.Append(".tableCellWidth4 { width: 8%; }");
            sb.Append(".tableCellWidth5 { width: 17%; }");
            sb.Append("</style></head><body>");
            sb.Append("<div id='divCatalogueList' runat='server'>");
            sb.Append("<h5>ALPHABETICAL LIST OF ALL COMPETITORS FOLLOWS:</h5>");
            CatalogueListByRingNumberList = CatalogueList.GetCatalogueListData(_connString, _showID.ToString(), _champOnly);
            if (CatalogueListByRingNumberList != null && CatalogueListByRingNumberList.Count > 0)
            {
                tblCatalogueTable.CssClass = "CatalogueList";
                TableRow r = new TableRow();
                TableCell c1 = new TableCell();
                c1.CssClass = "tableCellWidth1";
                r.Cells.Add(c1);
                TableCell c2 = new TableCell();
                c2.CssClass = "tableCellWidth2";
                r.Cells.Add(c2);
                TableCell c3 = new TableCell();
                c3.CssClass = "tableCellWidth3";
                r.Cells.Add(c3);
                TableCell c4 = new TableCell();
                c4.CssClass = "tableCellWidth4";
                r.Cells.Add(c4);
                TableCell c5 = new TableCell();
                c5.CssClass = "tableCellWidth5";
                r.Cells.Add(c5);
                //TableCell c6 = new TableCell();
                //c6.CssClass = "tableCellWidth6";
                //r.Cells.Add(c6);
                //TableCell c7 = new TableCell();
                //c7.CssClass = "tableCellWidth7";
                //r.Cells.Add(c7);
                tblCatalogueTable.Rows.Add(r);
                short ring_No = 0;
                List<CatalogueList> displayList = new List<CatalogueList>();
                CatalogueList displayItem = new CatalogueList(_connString);
                foreach (CatalogueList row in CatalogueListByRingNumberList)
                {
                    if (row.Ring_No != ring_No && ring_No != 0)
                    {
                        //new ring number
                        CreateDisplayItem(displayItem);
                        displayList.Add(displayItem);
                        displayItem = new CatalogueList(_connString);
                    }
                    //existing ring number
                    displayItem.Ring_No = row.Ring_No;
                    displayItem.Owners.Add(row.Owner);
                    displayItem.Addresses.Add(row.Address);
                    displayItem.Dog_KC_Name = row.Dog_KC_Name;
                    displayItem.Dog_Breed_Description = row.Dog_Breed_Description;
                    displayItem.Dog_Gender = row.Dog_Gender;
                    displayItem.Date_Of_Birth = row.Date_Of_Birth;
                    displayItem.Class_NameList.Add(row.Class_Name);
                    displayItem.Catalogue = row.Catalogue;
                    ring_No = row.Ring_No;
                }
                CreateDisplayItem(displayItem);
                displayList.Add(displayItem);
            }
            StringWriter stringWriter = new StringWriter();
            using (var htmlWriter = new HtmlTextWriter(stringWriter))
            {
                tblCatalogueTable.RenderControl(htmlWriter);
                sb.Append(stringWriter.ToString());
            }
            sb.Append("</div></body></html>");
            wb.DocumentText = sb.ToString();
        }

        private void CreateDisplayItem(CatalogueList displayItem)
        {
            TableRow r1 = new TableRow();
            TableCell r1c1 = new TableCell();
            r1c1.CssClass = "CellBold";
            if (displayItem.Catalogue)
            {
                r1c1.Text = "*";
            }
            else
            {
                r1c1.Text = string.Empty;
            }
            r1.Cells.Add(r1c1);
            string ownerList = string.Empty;
            foreach (string owner in displayItem.Owners)
            {
                if (ownerList.IndexOf(owner) == -1)
                {
                    ownerList = string.Format("{0}{1}", ownerList, " & " + owner);
                }
            }
            TableCell r1c2 = new TableCell();
            r1c2.CssClass = "CellBold";
            r1c2.Text = ownerList.Substring(3);
            r1.Cells.Add(r1c2);
            TableCell r1c3 = new TableCell();
            r1c3.ColumnSpan = 3;
            r1c3.Text = displayItem.Addresses[0];
            r1.Cells.Add(r1c3);
            if (displayItem.Owners[0] != PreviousOwner)
                tblCatalogueTable.Rows.Add(r1);
            PreviousOwner = displayItem.Owners[0];

            TableRow r2 = new TableRow();
            TableCell r2c1 = new TableCell();
            r2c1.CssClass = "CellBold";
            r2c1.Text = displayItem.Ring_No.ToString();
            r2.Cells.Add(r2c1);
            TableCell r2c2 = new TableCell();
            r2c2.CssClass = "CellBold";
            r2c2.Text = displayItem.Dog_KC_Name;
            r2.Cells.Add(r2c2);
            TableCell r2c3 = new TableCell();
            r2c3.Text = displayItem.Dog_Breed_Description;
            r2.Cells.Add(r2c3);
            TableCell r2c4 = new TableCell();
            r2c4.Text = displayItem.Dog_Gender;
            r2.Cells.Add(r2c4);
            TableCell r2c5 = new TableCell();
            r2c5.Width = 5;
            r2c5.Text = displayItem.Date_Of_Birth;
            r2.Cells.Add(r2c5);
            tblCatalogueTable.Rows.Add(r2);


            string classList = string.Empty;
            foreach (string className in displayItem.Class_NameList)
            {
                if (!string.IsNullOrEmpty(className))
                {
                    if (classList.IndexOf(className) == -1)
                    {
                        classList = string.Format("{0}{1}", classList, " & " + className);
                        TableRow r3 = new TableRow();
                        TableCell r3c1 = new TableCell();
                        r3c1.ColumnSpan = 5;
                        r3c1.CssClass = "CellRightBold";
                        r3c1.Text = className;
                        r3.Cells.Add(r3c1);
                        tblCatalogueTable.Rows.Add(r3);
                    }
                }
            }
        }
    }
}
