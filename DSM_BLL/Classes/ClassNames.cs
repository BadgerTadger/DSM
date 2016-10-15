using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using DSM_DATA;


namespace BLL
{
    public class ClassNames
    {
        private string _connString = "";

        private DataTable lkpClassNames;

        private int _class_Name_ID;
        public int Class_Name_ID
        {
            get { return _class_Name_ID; }
            set { _class_Name_ID = value; }
        }
        private string _description = null;
        public string Description
        {
            get { return _description; }
            set { _description = value; }
        }
        private string _class_Name_Description = null;
        public string Class_Name_Description
        {
            get { return _class_Name_Description; }
            set { _class_Name_Description = value; }
        }

        public ClassNames(string connString)
        {
            _connString = connString;

            try
            {
                ClassNamesBL classNames = new ClassNamesBL(_connString);
                lkpClassNames = classNames.GetClass_Names();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public ClassNames(string connString, int class_Name_ID)
        {
            _connString = connString;

            try
            {
                ClassNamesBL classNames = new ClassNamesBL(_connString);
                lkpClassNames = classNames.GetClass_NameByClass_Name_ID(class_Name_ID);
                DataRow row = lkpClassNames.Rows[0];

                _class_Name_ID = class_Name_ID;
                _description = Utils.DBNullToString(row["Class_Name_Description"]);
                _class_Name_Description = Description;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<ClassNames> GetClass_Names()
        {
            List<ClassNames> retVal = new List<ClassNames>();

            try
            {
                ClassNamesBL classNames = new ClassNamesBL(_connString);
                lkpClassNames = classNames.GetClass_Names();

                if (lkpClassNames != null && lkpClassNames.Rows.Count > 0)
                {
                    foreach (DataRow row in lkpClassNames.Rows)
                    {
                        ClassNames className = new ClassNames(_connString, Utils.DBNullToInt(row["Class_Name_ID"]));
                        retVal.Add(className);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}