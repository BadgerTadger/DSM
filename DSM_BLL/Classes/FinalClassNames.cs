using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;

namespace BLL
{
    public class FinalClassNames
    {
        private string _connString = "";

        private DataTable tblFinalClassNames = null;

        private Guid _show_Entry_Class_ID;
        public Guid Show_Entry_Class_ID
        {
            get { return _show_Entry_Class_ID; }
            set { _show_Entry_Class_ID = value; }
        }
        private string _class_Name_Description = null;
        public string Class_Name_Description
        {
            get { return _class_Name_Description; }
            set { _class_Name_Description = value; }
        }
        private short _class_No;
        public short Class_No
        {
            get { return _class_No; }
            set { _class_No = value; }
        }
        private string _show_Final_Class_Description = null;
        public string Show_Final_Class_Description
        {
            get { return _show_Final_Class_Description; }
            set { _show_Final_Class_Description = value; }
        }
        private short _entries;
        public short Entries
        {
            get { return _entries; }
            set { _entries = value; }
        }
        private short _orderBy;
        public short OrderBy
        {
            get { return _orderBy; }
            set { _orderBy = value; }
        }

        public FinalClassNames(string connString)
        {
            _connString = connString;
        }

        public FinalClassNames(string connString, short orderBy)
        {
            _connString = connString;

            try
            {
                FinalClassNamesBL finalClassNames = new FinalClassNamesBL(_connString);
                tblFinalClassNames = finalClassNames.GetFinalClassNamesByOrderBy(orderBy);
                DataRow row = tblFinalClassNames.Rows[0];

                if (tblFinalClassNames != null && tblFinalClassNames.Rows.Count > 0)
                {
                    _show_Entry_Class_ID = Utils.DBNullToGuid(row["Show_Entry_Class_ID"]);
                    _class_Name_Description = Utils.DBNullToString(row["Class_Name_Description"]);
                    _class_No = Utils.DBNullToShort(row["Class_No"]);
                    _show_Final_Class_Description = Utils.DBNullToString(row["Show_Final_Class_Description"]);
                    _entries = Utils.DBNullToShort(row["Entries"]);
                    _orderBy = Utils.DBNullToShort(row["OrderBy"]);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<FinalClassNames> GetFinalClassNames()
        {
            List<FinalClassNames> retVal = new List<FinalClassNames>();

            try
            {
                FinalClassNamesBL finalClassNames = new FinalClassNamesBL(_connString);
                tblFinalClassNames = finalClassNames.GetFinalClassNames();

                if (tblFinalClassNames != null && tblFinalClassNames.Rows.Count > 0)
                {
                    foreach (DataRow row in tblFinalClassNames.Rows)
                    {
                        FinalClassNames finalClassName = new FinalClassNames(_connString);
                        finalClassName.Show_Entry_Class_ID = Utils.DBNullToGuid(row["Show_Entry_Class_ID"]);
                        finalClassName.Class_Name_Description = Utils.DBNullToString(row["Class_Name_Description"]);
                        finalClassName.Class_No = Utils.DBNullToShort(row["Class_No"]);
                        finalClassName.Show_Final_Class_Description = Utils.DBNullToString(row["Show_Final_Class_Description"]);
                        finalClassName.Entries = Utils.DBNullToShort(row["Entries"]);
                        finalClassName.OrderBy = Utils.DBNullToShort(row["OrderBy"]);
                        retVal.Add(finalClassName);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool ClearFinalClassNames()
        {
            bool retVal = false;

            try
            {
                FinalClassNamesBL finalClassNames = new FinalClassNamesBL(_connString);
                retVal = finalClassNames.ClearFinalClassNames();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool InsertFinalClassNames()
        {
            bool retVal = false;

            try
            {
                FinalClassNamesBL finalClassNames = new FinalClassNamesBL(_connString);
                retVal = finalClassNames.InsertFinalClassNames(_show_Entry_Class_ID, _class_Name_Description, _class_No,
                    _show_Final_Class_Description, _entries, _orderBy);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool UpdateFinalClassNames()
        {
            bool retVal = false;

            try
            {
                FinalClassNamesBL finalClassNames = new FinalClassNamesBL(_connString);
                retVal = finalClassNames.UpdateFinalClassNames(_show_Entry_Class_ID, _class_Name_Description, _class_No,
                    _show_Final_Class_Description, _entries, _orderBy);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}
