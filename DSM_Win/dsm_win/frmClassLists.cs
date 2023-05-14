using BLL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace dsm_win
{
    public partial class frmClassLists : Form
    {
        private string _connString = "";
        private List<ClassLists> _classLists;

        public List<ClassLists> ClassLists
        {
            get
            {
                if (_classLists == null)
                    _classLists = new List<ClassLists>();

                return _classLists;
            }
            set { _classLists = value; }
        }

        private List<ClassCounts> _classCountsList;

        public List<ClassCounts> ClassCountsList
        {
            get { return _classCountsList; }
            set { _classCountsList = value; }
        }



        Table tblClassListsTable = new Table();

        public frmClassLists()
        {
            InitializeComponent();
        }

        private void frmClassLists_Load(object sender, EventArgs e)
        {
            _connString = Utils.ConnectionString();

            ClassListData();
        }

        protected void ClassListData()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<html><head><style>\r\n");
            sb.Append(".CellBold { font-weight:bold; }\r\n");
            sb.Append(".CellRightBold { text-align:right; font-weight:bold; }\r\n");
            sb.Append(".CellCenter { text-align:center; }\r\n");
            //sb.Append("table.ClassList td { border-style:none; font-size:60%; vertical-align:top; }\r\n");
            sb.Append("table.ClassList td { border-style:none; vertical-align:top; }\r\n");
            sb.Append(".tableCellWidth1 { width: 10%; }");
            sb.Append(".tableCellWidth4 { width: 10%; }");
            sb.Append(".tableCellWidth3 { width: 10%; }");
            sb.Append(".tableCellWidth2 { width: 20%; }");
            sb.Append(".tableCellWidth5 { width: 20%; }");
            sb.Append(".tableCellWidth6 { width: 20%; }");
            sb.Append(".tableCellWidth7 { width: 10%; }");
            sb.Append("</style></head><body>");
            sb.Append("<div id='divClassList' runat='server'>");
            ClassLists = BLL.ClassLists.GetClassListsData(_connString);
            if (ClassLists != null && ClassLists.Count > 0)
            {
                ClassCounts classCountsForClass = null;
                GetClassCounts(ClassLists);
                tblClassListsTable.CssClass = "ClassList";
                AddBlankRow();
                string className = "";
                int recCount = 0;
                List<ClassLists> displayList = new List<ClassLists>();
                BLL.ClassLists displayItem = new ClassLists(_connString);
                foreach (BLL.ClassLists row in ClassLists)
                {
                    recCount++;
                    displayItem.ClassName = row.ClassName;
                    displayItem.Judge = row.Judge;
                    displayItem.RunningOrder = row.RunningOrder;
                    displayItem.Ring_No = row.Ring_No;
                    displayItem.Owner = row.Owner;
                    displayItem.DogKCName = row.DogKCName;
                    displayItem.Breed = row.Breed;
                    displayItem.Gender = row.Gender;
                    if (row.ClassName != className)
                    {
                        recCount = 0;
                        AddBlankRow();
                        classCountsForClass = GetClassCountForClass(row.ClassName);
                        displayItem.DogsInClass = classCountsForClass.DogsInClassCount;

                        CreateDisplayHeading(displayItem);
                        displayList.Add(displayItem);
                        //displayItem = new ClassLists(_connString);
                    }
                    className = row.ClassName;
                    if (classCountsForClass != null && classCountsForClass.RunningOrderCount == recCount)
                    {
                        AddBlankRow();
                    }
                    CreateDisplayItem(displayItem);
                    displayList.Add(displayItem);
                }
            }

            StringWriter stringWriter = new StringWriter();
            using (var htmlWriter = new HtmlTextWriter(stringWriter))
            {
                tblClassListsTable.RenderControl(htmlWriter);
                sb.Append(stringWriter.ToString());
            }
            sb.Append("</div></body></html>");
            wbClassLists.DocumentText = sb.ToString();
        }

        private ClassCounts GetClassCountForClass(string className)
        {
            ClassCounts retVal = null;
            if (ClassCountsList != null)
            {
                foreach (ClassCounts classCounts in ClassCountsList)
                {
                    if (classCounts.ClassName == className)
                    {
                        retVal = classCounts;
                        return retVal;
                    }
                }

            }
            return retVal;
        }

        private void GetClassCounts(List<ClassLists> classLists)
        {
            string className = "";
            ClassCounts classCounts = null;
            _classCountsList = new List<ClassCounts>();
            foreach (BLL.ClassLists row in ClassLists)
            {
                if (row.ClassName != className)
                {
                    if (className != "")
                    {
                        _classCountsList.Add(classCounts);
                    }
                    classCounts = new ClassCounts();
                }
                classCounts.ClassName = row.ClassName;
                classCounts.DogsInClassCount++;
                if (row.RunningOrder != 999)
                {
                    classCounts.RunningOrderCount++;
                }
                className = row.ClassName;
            }
            _classCountsList.Add(classCounts);
        }

        private void AddBlankRow()
        {
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
            TableCell c6 = new TableCell();
            c6.CssClass = "tableCellWidth6";
            r.Cells.Add(c6);
            TableCell c7 = new TableCell();
            c7.CssClass = "tableCellWidth7";
            r.Cells.Add(c7);
            tblClassListsTable.Rows.Add(r);
        }

        private void CreateDisplayHeading(ClassLists displayItem)
        {
            TableRow r1 = new TableRow();
            TableCell r1c1 = new TableCell();
            r1c1.CssClass = "CellBold";
            r1c1.ColumnSpan = 4;
            r1c1.Text = displayItem.ClassName;
            r1.Cells.Add(r1c1);
            //TableCell r1c2 = new TableCell();
            //r1c2.CssClass = "CellBold";
            //r1c2.Text = "";
            //r1.Cells.Add(r1c2);
            //TableCell r1c3 = new TableCell();
            //r1c3.CssClass = "CellBold";
            //r1c3.Text = "";
            //r1.Cells.Add(r1c3);
            //TableCell r1c4 = new TableCell();
            //r1c4.CssClass = "CellBold";
            //r1c4.Text = "";
            //r1.Cells.Add(r1c4);
            TableCell r1c5 = new TableCell();
            r1c5.CssClass = "CellBold";
            r1c5.Text = "";
            r1.Cells.Add(r1c5);
            TableCell r1c6 = new TableCell();
            r1c6.CssClass = "CellBold";
            r1c6.Text = string.Concat("Judge: ", displayItem.Judge);
            r1.Cells.Add(r1c6);
            TableCell r1c7 = new TableCell();
            r1c7.CssClass = "CellBold";
            r1c7.Text = displayItem.DogsInClass.ToString();
            r1.Cells.Add(r1c7);
            tblClassListsTable.Rows.Add(r1);

            TableRow r2 = new TableRow();
            TableCell r2c1 = new TableCell();
            r2c1.CssClass = "CellBold";
            r2c1.Text = "";
            r2.Cells.Add(r2c1);
            TableCell r2c2 = new TableCell();
            r2c2.CssClass = "CellBold";
            r2c2.Text = "Running Order";
            r2.Cells.Add(r2c2);
            TableCell r2c3 = new TableCell();
            r2c3.CssClass = "CellBold";
            r2c3.Text = "Ring No";
            r2.Cells.Add(r2c3);
            TableCell r2c4 = new TableCell();
            r2c4.CssClass = "CellBold";
            r2c4.Text = "Owner";
            r2.Cells.Add(r2c4);
            TableCell r2c5 = new TableCell();
            //r2c5.Width = 5;
            r2c5.CssClass = "CellBold";
            r2c5.Text = "Dog KC Name";
            r2.Cells.Add(r2c5);
            TableCell r2c6 = new TableCell();
            r2c6.CssClass = "CellBold";
            r2c6.Text = "Breed";
            r2.Cells.Add(r2c6);
            TableCell r2c7 = new TableCell();
            r2c7.CssClass = "CellBold";
            r2c7.Text = "Gender";
            r2.Cells.Add(r2c7);
            tblClassListsTable.Rows.Add(r2);

        }


        private void CreateDisplayItem(ClassLists displayItem)
        {
            TableRow r1 = new TableRow();
            TableCell r1c1 = new TableCell();
            r1c1.Text = "";
            r1.Cells.Add(r1c1);
            TableCell r1c2 = new TableCell();
            r1c2.CssClass = "CellCenter";
            r1c2.Text = displayItem.RunningOrder == 999 ? "" : displayItem.RunningOrder.ToString();
            r1.Cells.Add(r1c2);
            TableCell r1c3 = new TableCell();
            r1c3.CssClass = "CellCenter";
            r1c3.Text = displayItem.Ring_No.ToString();
            r1.Cells.Add(r1c3);
            TableCell r1c4 = new TableCell();
            r1c4.Text = displayItem.Owner;
            r1.Cells.Add(r1c4);
            TableCell r1c5 = new TableCell();
            //r2c5.Width = 5;
            r1c5.Text = displayItem.DogKCName;
            r1.Cells.Add(r1c5);
            TableCell r1c6 = new TableCell();
            r1c6.Text = displayItem.Breed;
            r1.Cells.Add(r1c6);
            TableCell r1c7 = new TableCell();
            r1c7.Text = displayItem.Gender;
            r1.Cells.Add(r1c7);
            tblClassListsTable.Rows.Add(r1);
        }

    }
}
