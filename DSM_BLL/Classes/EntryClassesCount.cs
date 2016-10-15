using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;

namespace BLL
{
    public class EntryClassesCount
    {
        private string _connString = "";

        private DataTable tblEntryClassCount = null;

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
        private short _entries;
        public short Entries
        {
            get { return _entries; }
            set { _entries = value; }
        }

        public EntryClassesCount(string connString)
        {
            _connString = connString;
        }

        public EntryClassesCount(string connString, Guid show_Entry_Class_ID)
        {
            _connString = connString;

            try
            {
                EntryClassCountBL entryClasses = new EntryClassCountBL(_connString);
                tblEntryClassCount = entryClasses.GetEntryClassCountByShow_Entry_Class_ID(show_Entry_Class_ID);
                DataRow row = tblEntryClassCount.Rows[0];

                _show_Entry_Class_ID = Utils.DBNullToGuid(row["Show_Entry_Class_ID"]);
                _class_Name_Description = Utils.DBNullToString(row["Class_Name_Description"]);
                _class_No = Utils.DBNullToShort(row["Class_No"]);
                _entries = Utils.DBNullToShort(row["Entries"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<EntryClassesCount> GetEntryClassCount()
        {
            List<EntryClassesCount> retVal = new List<EntryClassesCount>();

            try
            {
                EntryClassCountBL entryClasses = new EntryClassCountBL(_connString);
                tblEntryClassCount = entryClasses.GetEntryClassCount();

                if (tblEntryClassCount != null && tblEntryClassCount.Rows.Count > 0)
                {
                    foreach (DataRow row in tblEntryClassCount.Rows)
                    {
                        EntryClassesCount entryClass = new EntryClassesCount(_connString);
                        entryClass.Show_Entry_Class_ID = Utils.DBNullToGuid(row["Show_Entry_Class_ID"]);
                        entryClass.Class_Name_Description = Utils.DBNullToString(row["Class_Name_Description"]);
                        entryClass.Class_No = Utils.DBNullToShort(row["Class_No"]);
                        entryClass.Entries = Utils.DBNullToShort(row["Entries"]);
                        retVal.Add(entryClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool PopulateEntryClassCount(Guid show_ID)
        {
            bool retVal = false;

            try
            {
                EntryClassCountBL entryClasses = new EntryClassCountBL(_connString);
                retVal = entryClasses.PopulateEntryClassCount(show_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}
