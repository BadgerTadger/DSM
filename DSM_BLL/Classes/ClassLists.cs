using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using DSM_DATA;

namespace BLL
{
    public class ClassLists
    {
        private string _connString = "";

        private DataTable tblClassLists = null;

        private string _className;
        public string ClassName
        {
            get { return _className; }
            set { _className = value; }
        }

        private string _judge;
        public string Judge
        {
            get { return _judge; }
            set { _judge = value; }
        }

        private int _dogsInClass;
        public int DogsInClass
        {
            get { return _dogsInClass; }
            set { _dogsInClass = value; }
        }

        private short _runningOrder;
        public short RunningOrder
        {
            get { return _runningOrder; }
            set { _runningOrder = value; }
        }

        private short _ring_No;
        public short Ring_No
        {
            get { return _ring_No; }
            set { _ring_No = value; }
        }

        private string _owner = null;
        public string Owner
        {
            get { return _owner; }
            set { _owner = value; }
        }

        private string _dogKCName;
        public string DogKCName
        {
            get { return _dogKCName; }
            set { _dogKCName = value; }
        }

        private string _breed;
        public string Breed
        {
            get { return _breed; }
            set { _breed = value; }
        }

        private string _gender;
        public string Gender
        {
            get { return _gender; }
            set { _gender = value; }
        }

        public ClassLists(string connString)
        {
            _connString = connString;
        }

        public List<ClassLists> GetClassLists()
        {
            List<ClassLists> retVal = new List<ClassLists>();

            try
            {
                ClassListBL classList = new ClassListBL(_connString);
                tblClassLists = classList.GetClassLists();
                if (tblClassLists != null && tblClassLists.Rows.Count > 0)
                {
                    foreach (DataRow row in tblClassLists.Rows)
                    {
                        ClassLists classLists = new ClassLists(_connString);
                        classLists.ClassName = Utils.DBNullToString(row["classname"]);
                        classLists.Judge = Utils.DBNullToString(row["Judge"]);
                        classLists.RunningOrder = Utils.DBNullToShort(row["RunningOrder"]);
                        classLists.Ring_No = Utils.DBNullToShort(row["Ring_No"]);
                        classLists.Owner = Utils.DBNullToString(row["Owner"]);
                        classLists.DogKCName = Utils.DBNullToString(row["Dog_KC_Name"]);
                        classLists.Breed = Utils.DBNullToString(row["Dog_Breed_Description"]);
                        classLists.Gender = Utils.DBNullToString(row["Dog_Gender"]);

                        retVal.Add(classLists);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public static List<ClassLists> GetClassListsData(string connString)
        {
            List<ClassLists> retVal = new List<ClassLists>();

            try
            {
                ClassLists classLists = new ClassLists(connString);

                retVal = classLists.GetClassLists();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

    }

    public class ClassCounts
    {
        private string _className;

        public string ClassName
        {
            get { return _className; }
            set { _className = value; }
        }

        private int _RunningOrderCount;

        public int RunningOrderCount
        {
            get { return _RunningOrderCount; }
            set { _RunningOrderCount = value; }
        }

        private int _dogsInClassCount;
            
        public int DogsInClassCount
        {
            get { return _dogsInClassCount; }
            set { _dogsInClassCount = value; }
        }

    }
}
