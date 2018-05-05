using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DSM_Import
{
    class ExcelDataItem
    {
        private int _rowNumber;
        public int RowNumber
        {
            get { return _rowNumber; }
            set { _rowNumber = value; }
        }

        private string _show_Name;
        public string Show_Name
        {
            get { return _show_Name; }
            set { _show_Name = value; }
        }
        
        private int _owner_ID;
        public int Owner_ID
        {
            get { return _owner_ID; }
            set { _owner_ID = value; }
        }

        private string _owner_Title;
        public string Owner_Title
        {
            get { return _owner_Title; }
            set { _owner_Title = value; }
        }

        private string _owner_First_Name;
        public string Owner_First_Name
        {
            get { return _owner_First_Name; }
            set { _owner_First_Name = value; }
        }

        private string _owner_Last_Name;
        public string Owner_Last_Name
        {
            get { return _owner_Last_Name; }
            set { _owner_Last_Name = value; }
        }

        private string _owner_Address_1;
        public string Owner_Address_1
        {
            get { return _owner_Address_1; }
            set { _owner_Address_1 = value; }
        }

        private string _owner_Address_2;
        public string Owner_Address_2
        {
            get { return _owner_Address_2; }
            set { _owner_Address_2 = value; }
        }

        private string _owner_Town;
        public string Owner_Town
        {
            get { return _owner_Town; }
            set { _owner_Town = value; }
        }

        private string _owner_County;
        public string Owner_County
        {
            get { return _owner_County; }
            set { _owner_County = value; }
        }

        private string _owner_Postcode;
        public string Owner_Postcode
        {
            get { return _owner_Postcode; }
            set { _owner_Postcode = value; }
        }

        private string _owner_Country;
        public string Owner_Country
        {
            get { return _owner_Country; }
            set { _owner_Country = value; }
        }

        private string _owner_Phone;
        public string Owner_Phone
        {
            get { return _owner_Phone; }
            set { _owner_Phone = value; }
        }

        private string _owner_Email;
        public string Owner_Email
        {
            get { return _owner_Email; }
            set { _owner_Email = value; }
        }

        private string _owner_Registered_Name;
        public string Owner_Registered_Name
        {
            get { return _owner_Registered_Name; }
            set { _owner_Registered_Name = value; }
        }

        private string _vehicle_Registration;
        public string Vehicle_Registration
        {
            get { return _vehicle_Registration; }
            set { _vehicle_Registration = value; }
        }

        private string _registered_Name;
        public string Registered_Name
        {
            get { return _registered_Name; }
            set { _registered_Name = value; }
        }

        private string _registered_Number;
        public string Registered_Number
        {
            get { return _registered_Number; }
            set { _registered_Number = value; }
        }

        private string _breed;
        public string Breed
        {
            get { return _breed; }
            set { _breed = value; }
        }

        private string _sex;
        public string Sex
        {
            get { return _sex; }
            set { _sex = value; }
        }

        private DateTime _date_Of_Birth;
        public DateTime Date_Of_Birth
        {
            get { return _date_Of_Birth; }
            set { _date_Of_Birth = value; }
        }

        private short _year_Of_Birth;
        public short Year_Of_Birth
        {
            get { return _year_Of_Birth; }
            set { _year_Of_Birth = value; }
        }

        //private string _breeder;
        //public string Breeder
        //{
        //    get { return _breeder; }
        //    set { _breeder = value; }
        //}

        //private string _sire;
        //public string Sire
        //{
        //    get { return _sire; }
        //    set { _sire = value; }
        //}

        //private string _dam;
        //public string Dam
        //{
        //    get { return _dam; }
        //    set { _dam = value; }
        //}

        private int _merit_Points;
        public int Merit_Points
        {
            get { return _merit_Points; }
            set { _merit_Points = value; }
        }

        private int _entered_Class;
        public int Entered_Class
        {
            get { return _entered_Class; }
            set { _entered_Class = value; }
        }

        private string _preferred_Judge;
        public string Preferred_Judge
        {
            get { return _preferred_Judge; }
            set { _preferred_Judge = value; }
        }

        private string _extras;
        public string Extras
        {
            get { return _extras; }
            set { _extras = value; }
        }

        private bool _confirmed_Acceptance_Of_Declaration;
        public bool Confirmed_Acceptance_Of_Declaration
        {
            get { return _confirmed_Acceptance_Of_Declaration; }
            set { _confirmed_Acceptance_Of_Declaration = value; }
        }

        private bool _withdraw_All_Entries_If_Balloted_Out_Of_Championship_C;
        public bool Withdraw_All_Entries_If_Balloted_Out_Of_Championship_C
        {
            get { return _withdraw_All_Entries_If_Balloted_Out_Of_Championship_C; }
            set { _withdraw_All_Entries_If_Balloted_Out_Of_Championship_C = value; }
        }

        private bool _show_Address_In_Catalogue;
        public bool Show_Address_In_Catalogue
        {
            get { return _show_Address_In_Catalogue; }
            set { _show_Address_In_Catalogue = value; }
        }

        private string _notes_To_Organiser;
        public string Notes_To_Organiser
        {
            get { return _notes_To_Organiser; }
            set { _notes_To_Organiser = value; }
        }

        private DateTime? _date_Of_Entry;
        public DateTime? Date_Of_Entry
        {
            get { return _date_Of_Entry; }
            set { _date_Of_Entry = value; }
        }
        
        private bool _importRecord;
        public bool ImportRecord
        {
            get { return _importRecord; }
            set { _importRecord = value; }
        }

        private short _runningOrder;
        public short RunningOrder
        {
            get { return _runningOrder; }
            set { _runningOrder = value; }
        }
    }
}
