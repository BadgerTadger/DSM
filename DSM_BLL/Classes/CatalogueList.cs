using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using DSM_DATA;

namespace BLL
{
    public class CatalogueList
    {
        private string _connString = "";

        private DataTable tblCatalogueListByRingNumber = null;

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
        private List<string> _owners = null;
        public List<string> Owners
        {
            get
            {
                if (_owners == null)
                    _owners = new List<string>();

                return _owners;
            }
            set { _owners = value; }
        }
        private string _address = null;
        public string Address
        {
            get { return _address; }
            set { _address = value; }
        }
        private List<string> _addresses = null;
        public List<string> Addresses
        {
            get
            {
                if (_addresses == null)
                    _addresses = new List<string>();

                return _addresses;
            }
            set { _addresses = value; }
        }
        private string _dog_KC_Name = null;
        public string Dog_KC_Name
        {
            get { return _dog_KC_Name; }
            set { _dog_KC_Name = value; }
        }
        private string _dog_Breed_Description = null;
        public string Dog_Breed_Description
        {
            get { return _dog_Breed_Description; }
            set { _dog_Breed_Description = value; }
        }
        private string _dog_Gender = null;
        public string Dog_Gender
        {
            get { return _dog_Gender; }
            set { _dog_Gender = value; }
        }
        private string _date_Of_Birth = null;
        public string Date_Of_Birth
        {
            get { return _date_Of_Birth; }
            set { _date_Of_Birth = value; }
        }
        private string _class_Name = null;
        public string Class_Name
        {
            get { return _class_Name; }
            set { _class_Name = value; }
        }
        private bool _breederIsOwner = false;
        public bool BreederIsOwner
        {
            get { return _breederIsOwner; }
            set { _breederIsOwner = value; }
        }
        private bool _catalogue;
        public bool Catalogue
        {
            get { return _catalogue; }
            set { _catalogue = value; }
        }
        private List<string> _class_NameList = null;
        public List<string> Class_NameList
        {
            get
            {
                if (_class_NameList == null)
                    _class_NameList = new List<string>();

                return _class_NameList;
            }
            set { _class_NameList = value; }
        }

        public CatalogueList(string connString)
        {
            _connString = connString;
        }

        public List<CatalogueList> GetCatalogueListByRingNumber()
        {
            List<CatalogueList> retVal = new List<CatalogueList>();

            try
            {
                CatalogueListBL catalogueListByRingNumbers = new CatalogueListBL(_connString);
                tblCatalogueListByRingNumber = catalogueListByRingNumbers.GetCatalogueListOrderByRingNumber();
                if (tblCatalogueListByRingNumber != null && tblCatalogueListByRingNumber.Rows.Count > 0)
                {
                    foreach (DataRow row in tblCatalogueListByRingNumber.Rows)
                    {
                        CatalogueList catalogueListByRingNumber = new CatalogueList(_connString);
                        catalogueListByRingNumber.Ring_No = Utils.DBNullToShort(row["Ring_No"]);
                        catalogueListByRingNumber.Owner = Utils.DBNullToString(row["Owner"]);
                        catalogueListByRingNumber.Address = Utils.DBNullToString(row["Address"]);
                        catalogueListByRingNumber.Dog_KC_Name = Utils.DBNullToString(row["Dog_KC_Name"]);
                        catalogueListByRingNumber.Dog_Breed_Description = Utils.DBNullToString(row["Dog_Breed_Description"]);
                        catalogueListByRingNumber.Dog_Gender = Utils.DBNullToString(row["Dog_Gender"]);
                        catalogueListByRingNumber.Date_Of_Birth = Utils.DBNullToString(row["Date_Of_Birth"]);
                        catalogueListByRingNumber.Class_Name = Utils.DBNullToString(row["Class_Name"]);
                        catalogueListByRingNumber.Catalogue = Utils.DBNullToBool(row["Catalogue"]);

                        retVal.Add(catalogueListByRingNumber);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }


            return retVal;
        }

        public bool PopulateCatalogueListByRingNumber(Guid show_ID)
        {
            bool retVal = false;

            try
            {
                CatalogueListBL catalogueListByRingNumbers = new CatalogueListBL(_connString);
                retVal = catalogueListByRingNumbers.PopulateCatalogueListByRingNumber(show_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public static List<CatalogueList> GetCatalogueListData(string connString, string Show_ID)
        {
            List<CatalogueList> retVal = new List<CatalogueList>();

            try
            {
                CatalogueList catalogue = new CatalogueList(connString);
                Guid show_ID = new Guid(Show_ID);
                if (catalogue.PopulateCatalogueListByRingNumber(show_ID))
                {
                    retVal = catalogue.GetCatalogueListByRingNumber();
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
