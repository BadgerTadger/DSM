using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class ShowEntryClasses
    {
        private string _connString = "";

        private DataTable tblShowEntryClasses = null;

        private Guid _show_Entry_Class_ID;
        public Guid Show_Entry_Class_ID
        {
            get { return _show_Entry_Class_ID; }
            set { _show_Entry_Class_ID = value; }
        }

        private Guid? _show_ID = null;
        public Guid? Show_ID
        {
            get { return _show_ID; }
            set { _show_ID = value; }
        }

        private int? _class_Name_ID = null;
        public int? Class_Name_ID
        {
            get { return _class_Name_ID; }
            set { _class_Name_ID = value; }
        }

        private string _class_Name_Description;
        public string Class_Name_Description
        {
            get { return _class_Name_Description; }
            set { _class_Name_Description = value; }
        }

        private short? _class_No = null;
        public short? Class_No
        {
            get { return _class_No; }
            set { _class_No = value; }
        }

        private short? _class_Gender = null;
        public short? Class_Gender
        {
            get { return _class_Gender; }
            set { _class_Gender = value; }
        }

        private bool _deleteShowEntryClass = false;
        public bool DeleteShowEntryClass
        {
            get { return _deleteShowEntryClass; }
            set { _deleteShowEntryClass = value; }
        }

        private bool _isNFC = false;
        public bool IsNFC
        {
            get { return _isNFC; }
            set { _isNFC = value; }
        }

        public ShowEntryClasses(string connString)
        {
            _connString = connString;
        }

        public ShowEntryClasses(string connString, Guid show_Entry_Class_ID)
        {
            _connString = connString;

            try
            {
                ShowEntryClassesBL showEntryClasses = new ShowEntryClassesBL(_connString);
                tblShowEntryClasses = showEntryClasses.GetShow_Entry_ClassByShow_Entry_Class_ID(show_Entry_Class_ID);
                DataRow row = tblShowEntryClasses.Rows[0];

                _show_Entry_Class_ID = show_Entry_Class_ID;
                _show_ID = Utils.DBNullToGuid(row["Show_ID"]);
                _class_Name_ID = Utils.DBNullToInt(row["Class_Name_ID"]);
                _isNFC = Utils.DBNullToString(row["Class_Name_Description"]) == "NFC";
                _class_No = Utils.DBNullToShort(row["Class_No"]);
                _class_Gender = Utils.DBNullToShort(row["Gender"]);
                _class_Name_Description = string.Format("{0} : {1}", _class_No, Utils.DBNullToString(row["Class_Name_Description"]));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<ShowEntryClasses> GetShow_Entry_ClassesByShow_ID(Guid show_ID)
        {
            List<ShowEntryClasses> retVal = new List<ShowEntryClasses>();

            try
            {
                ShowEntryClassesBL showEntryClasses = new ShowEntryClassesBL(_connString);
                tblShowEntryClasses = showEntryClasses.GetShow_Entry_ClassesByShow_ID(show_ID);

                if (tblShowEntryClasses != null && tblShowEntryClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShowEntryClasses.Rows)
                    {
                        ShowEntryClasses showEntryClass = new ShowEntryClasses(_connString, Utils.DBNullToGuid(row["Show_Entry_Class_ID"]));
                        retVal.Add(showEntryClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public ShowEntryClasses GetShowEntryClassByShowAndClassNo(Guid show_ID, int class_No)
        {
            ShowEntryClasses retVal = null;

            try
            {
                ShowEntryClassesBL showEntryClasses = new ShowEntryClassesBL(_connString);
                tblShowEntryClasses = showEntryClasses.GetShowEntryClassByShowAndClassNo(show_ID, class_No);

                if (tblShowEntryClasses != null && tblShowEntryClasses.Rows.Count > 0)
                {
                    retVal = new ShowEntryClasses(_connString, new Guid(tblShowEntryClasses.Rows[0]["Show_Entry_Class_ID"].ToString()));
                }
            }
            catch (Exception ex)
            {                
                throw ex;
            }

            return retVal;
        }

        public List<ShowEntryClasses> GetShow_Entry_Classes()
        {
            List<ShowEntryClasses> retVal = new List<ShowEntryClasses>();

            try
            {
                ShowEntryClassesBL showEntryClasses = new ShowEntryClassesBL(_connString);
                tblShowEntryClasses = showEntryClasses.GetShow_Entry_Classes();

                if (tblShowEntryClasses != null && tblShowEntryClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShowEntryClasses.Rows)
                    {
                        ShowEntryClasses showEntryClass = new ShowEntryClasses(_connString, Utils.DBNullToGuid(row["Show_Entry_Class_ID"]));
                        retVal.Add(showEntryClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Show_Entry_Class(Guid user_ID)
        {
            Guid? retVal = null;

            try
            {
                ShowEntryClassesBL showEntryClasses = new ShowEntryClassesBL(_connString);
                retVal = (Guid?)showEntryClasses.Insert_Show_Entry_Classes(_show_ID, _class_Name_ID, _class_No, _class_Gender, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Show_Entry_Class(Guid show_Entry_Class_ID, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                ShowEntryClassesBL showEntryClasses = new ShowEntryClassesBL(_connString);
                retVal = showEntryClasses.Update_Show_Entry_Classes(show_Entry_Class_ID, _show_ID, _class_Name_ID, _class_No,
                    _class_Gender, _deleteShowEntryClass, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}