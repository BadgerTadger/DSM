using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Judges
    {
        private string _connString = "";

        private DataTable tblJudges = null;

        private Guid _show_Entry_Class_ID;
        public Guid Show_Entry_Class_ID
        {
            get { return _show_Entry_Class_ID; }
            set { _show_Entry_Class_ID = value; }
        }

        private string _primary_Judge;
        public string Primary_Judge
        {
            get { return _primary_Judge; }
            set { _primary_Judge = value; }
        }

        private string _reserve_Judge;
        public string Reserve_Judge
        {
            get { return _reserve_Judge; }
            set { _reserve_Judge = value; }
        }

        public Judges(string connString)
        {
            _connString = connString;
        }

        public Judges(string connString, Guid show_Entry_Class_ID)
        {
            _connString = connString;

            try
            {
                JudgesBL judges = new JudgesBL(_connString);
                tblJudges = judges.GetJudgesByShow_Entry_Class_ID(show_Entry_Class_ID);
                DataRow row = tblJudges.Rows[0];

                _show_Entry_Class_ID = show_Entry_Class_ID;
                _primary_Judge = Utils.DBNullToString(row["Primary_Judge"]);
                _reserve_Judge = Utils.DBNullToString(row["Reserve_Judge"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool EntryExistsForShowClass(Guid show_Entry_Class_ID)
        {
            bool retVal = false;

            try
            {
                JudgesBL judges = new JudgesBL(_connString);
                retVal = judges.RecordExistsForShowEntryClass(show_Entry_Class_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public void InsertRecordForShowEntryClass(Guid show_Entry_Class_ID)
        {
            try
            {
                JudgesBL judges = new JudgesBL(_connString);
                judges.InsertRecordForShowEntryClass(show_Entry_Class_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void UpdateJudges()
        {
            try
            {
                JudgesBL judges = new JudgesBL(_connString);
                judges.UpdateJudges(_show_Entry_Class_ID, _primary_Judge, _reserve_Judge);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
