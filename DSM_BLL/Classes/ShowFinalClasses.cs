using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class ShowFinalClasses
    {
        private string _connString = "";

        private DataTable tblShowFinalClasses = null;

        private Guid _show_Final_Class_ID;
        public Guid Show_Final_Class_ID
        {
            get { return _show_Final_Class_ID; }
            set { _show_Final_Class_ID = value; }
        }
        private Guid? _show_ID = null;
        public Guid? Show_ID
        {
            get { return _show_ID; }
            set { _show_ID = value; }
        }

        private Guid? _show_Entry_Class_ID = null;
        public Guid? Show_Entry_Class_ID
        {
            get { return _show_Entry_Class_ID; }
            set { _show_Entry_Class_ID = value; }
        }

        private string _show_Final_Class_Description = null;
        public string Show_Final_Class_Description
        {
            get { return _show_Final_Class_Description; }
            set { _show_Final_Class_Description = value; }
        }

        private short _show_Final_Class_No;
        public short Show_Final_Class_No
        {
            get { return _show_Final_Class_No; }
            set { _show_Final_Class_No = value; }
        }

        private Guid? _judge_ID = null;
        public Guid? Judge_ID
        {
            get { return _judge_ID; }
            set { _judge_ID = value; }
        }

        private DateTime? _stay_Time = null;
        public DateTime? Stay_Time
        {
            get { return _stay_Time; }
            set { _stay_Time = value; }
        }

        private DateTime? _lunch_Time = null;
        public DateTime? Lunch_Time
        {
            get { return _lunch_Time; }
            set { _lunch_Time = value; }
        }

        private bool _deleteShowFinalClass = false;
        public bool DeleteShowFinalClass
        {
            get { return _deleteShowFinalClass; }
            set { _deleteShowFinalClass = value; }
        }

        public ShowFinalClasses(string connString)
        {
            _connString = connString;
        }

        public ShowFinalClasses(string connString, Guid show_Final_Class_ID)
        {
            _connString = connString;

            if (show_Final_Class_ID != new Guid())
            {
                try
                {
                    ShowFinalClassesBL showfinalclasses = new ShowFinalClassesBL(_connString);
                    tblShowFinalClasses = showfinalclasses.GetShow_Final_ClassByShow_Final_Class_ID(show_Final_Class_ID);
                    DataRow row = tblShowFinalClasses.Rows[0];

                    Show_Final_Class_ID = show_Final_Class_ID;
                    Show_ID = Utils.DBNullToGuid(row["Show_ID"]);
                    Show_Entry_Class_ID = Utils.DBNullToGuid(row["Show_Entry_Class_ID"]);
                    Show_Final_Class_Description = Utils.DBNullToString(row["Show_Final_Class_Description"]);
                    Show_Final_Class_No = Utils.DBNullToShort(row["Show_Final_Class_No"]);
                    Judge_ID = Utils.DBNullToGuid(row["Judge_ID"]);
                    Stay_Time = Utils.DBNullToDate(row["Stay_Time"]);
                    Lunch_Time = Utils.DBNullToDate(row["Lunch_Time"]);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public List<ShowFinalClasses> GetShow_Final_Classes()
        {
            List<ShowFinalClasses> retVal = new List<ShowFinalClasses>();

            try
            {
                ShowFinalClassesBL showfinalclasses = new ShowFinalClassesBL(_connString);
                tblShowFinalClasses = showfinalclasses.GetShow_Final_Classes();

                if (tblShowFinalClasses != null && tblShowFinalClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShowFinalClasses.Rows)
                    {
                        ShowFinalClasses showFinalClass = new ShowFinalClasses(_connString, Utils.DBNullToGuid(row["Show_Final_Class_ID"]));
                        retVal.Add(showFinalClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<ShowFinalClasses> GetShow_Final_ClassesByShow_ID(Guid show_ID)
        {
            List<ShowFinalClasses> retVal = new List<ShowFinalClasses>();

            try
            {
                ShowFinalClassesBL showfinalclasses = new ShowFinalClassesBL(_connString);
                tblShowFinalClasses = showfinalclasses.GetShow_Final_ClassesByShow_ID(show_ID);

                if (tblShowFinalClasses != null && tblShowFinalClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShowFinalClasses.Rows)
                    {
                        ShowFinalClasses showFinalClass = new ShowFinalClasses(_connString, Utils.DBNullToGuid(row["Show_Final_Class_ID"]));
                        retVal.Add(showFinalClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<ShowFinalClasses> GetShow_Final_ClassesByShow_Entry_Class_ID(Guid show_Entry_Class_ID)
        {
            List<ShowFinalClasses> retVal = new List<ShowFinalClasses>();

            try
            {
                ShowFinalClassesBL showfinalclasses = new ShowFinalClassesBL(_connString);
                tblShowFinalClasses = showfinalclasses.GetShow_Final_ClassByShow_Entry_Class_ID(show_Entry_Class_ID);

                if (tblShowFinalClasses != null && tblShowFinalClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShowFinalClasses.Rows)
                    {
                        ShowFinalClasses showFinalClass = new ShowFinalClasses(_connString, Utils.DBNullToGuid(row["Show_Final_Class_ID"]));
                        retVal.Add(showFinalClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<ShowFinalClasses> GetSplitClassParts(Guid show_ID)
        {
            List<ShowFinalClasses> retVal = new List<ShowFinalClasses>();

            try
            {
                ShowFinalClassesBL showfinalclasses = new ShowFinalClassesBL(_connString);
                tblShowFinalClasses = showfinalclasses.GetSplitClassParts(show_ID);

                if (tblShowFinalClasses != null && tblShowFinalClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblShowFinalClasses.Rows)
                    {
                        ShowFinalClasses showFinalClass = new ShowFinalClasses(_connString, Utils.DBNullToGuid(row["Show_Final_Class_ID"]));
                        retVal.Add(showFinalClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Show_Final_Class(Guid user_ID)
        {
            Guid? retVal = null;
            try
            {
                ShowFinalClassesBL showfinalclasses = new ShowFinalClassesBL(_connString);
                retVal = (Guid?)showfinalclasses.Insert_Show_Final_Classes(_show_ID, _show_Entry_Class_ID,
                    _show_Final_Class_Description, _show_Final_Class_No, _judge_ID, _stay_Time, _lunch_Time, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Show_Final_Class(Guid show_Final_Class_ID, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                ShowFinalClassesBL showfinalclasses = new ShowFinalClassesBL(_connString);
                retVal = showfinalclasses.Update_Show_Final_Classes(show_Final_Class_ID, _show_ID, _show_Entry_Class_ID,
                    _show_Final_Class_Description, _show_Final_Class_No, _judge_ID, _stay_Time, _lunch_Time, _deleteShowFinalClass, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public int DeleteShowFinalClassesByShowEntryClass(Guid show_Entry_Class_ID)
        {
            int retVal = 0;

            try
            {
                ShowFinalClassesBL showFinalClasses = new ShowFinalClassesBL(_connString);
                retVal = showFinalClasses.DeleteShowFinalClassesByShowEntryClass(show_Entry_Class_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}