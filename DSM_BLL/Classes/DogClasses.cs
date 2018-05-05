using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;

namespace BLL
{
    public class DogClasses
    {
        private string _connString = "";

        private DataTable tblDogClasses = null;

        private Guid? _dog_Class_ID = null;
        public Guid? Dog_Class_ID
        {
            get { return _dog_Class_ID; }
            set { _dog_Class_ID = value; }
        }
        private bool _isEntrant_IDNull;
        public bool IsEntrant_IDNull
        {
            get { return _isEntrant_IDNull; }
            set { _isEntrant_IDNull = value; }
        }
        private Guid? _entrant_ID = null;
        public Guid? Entrant_ID
        {
            get { return _entrant_ID; }
            set { _entrant_ID = value; }
        }
        private bool _isDog_IDNull;
        public bool IsDog_IDNull
        {
            get { return _isDog_IDNull; }
            set { _isDog_IDNull = value; }
        }
        private Guid? _dog_ID = null;
        public Guid? Dog_ID
        {
            get { return _dog_ID; }
            set { _dog_ID = value; }
        }
        private string _dog_KC_Name = null;
        public string Dog_KC_Name
        {
            get { return _dog_KC_Name; }
            set { _dog_KC_Name = value; }
        }
        private bool _isShow_Entry_Class_IDNull;
        public bool IsShow_Entry_Class_IDNull
        {
            get { return _isShow_Entry_Class_IDNull; }
            set { _isShow_Entry_Class_IDNull = value; }
        }
        private Guid? _show_Entry_Class_ID = null;
        public Guid? Show_Entry_Class_ID
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
        private int _preferred_Part;
        public int Preferred_Part
        {
            get { return _preferred_Part; }
            set { _preferred_Part = value; }
        }
        private bool _isShow_Final_Class_IDNull;
        public bool IsShow_Final_Class_IDNull
        {
            get { return _isShow_Final_Class_IDNull; }
            set { _isShow_Final_Class_IDNull = value; }
        }
        private Guid? _show_Final_Class_ID = null;
        public Guid? Show_Final_Class_ID
        {
            get { return _show_Final_Class_ID; }
            set { _show_Final_Class_ID = value; }
        }
        private bool _isHandler_IDNull;
        public bool IsHandler_IDNull
        {
            get { return _isHandler_IDNull; }
            set { _isHandler_IDNull = value; }
        }
        private Guid? _handler_ID = null;
        public Guid? Handler_ID
        {
            get { return _handler_ID; }
            set { _handler_ID = value; }
        }
        private string _handler_Name;
        public string Handler_Name
        {
            get { return _handler_Name; }
            set { _handler_Name = value; }
        }
        private bool _isRing_NoNull;
        public bool IsRing_NoNull
        {
            get { return _isRing_NoNull; }
            set { _isRing_NoNull = value; }
        }
        private short? _ring_No = null;
        public short? Ring_No
        {
            get { return _ring_No; }
            set { _ring_No = value; }
        }
        private bool _isRunning_OrderNull;
        public bool IsRunning_OrderNull
        {
            get { return _isRunning_OrderNull; }
            set { _isRunning_OrderNull = value; }
        }
        private short? _running_Order = null;
        public short? Running_Order
        {
            get { return _running_Order; }
            set { _running_Order = value; }
        }
        private bool _isSpecial_RequestNull;
        public bool IsSpecial_RequestNull
        {
            get { return _isSpecial_RequestNull; }
            set { _isSpecial_RequestNull = value; }
        }
        private string _special_Request = null;
        public string Special_Request
        {
            get { return _special_Request; }
            set { _special_Request = value; }
        }

        private bool _deleteDogClass = false;
        public bool DeleteDogClass
        {
            get { return _deleteDogClass; }
            set { _deleteDogClass = value; }
        }
        private bool _isNFC = false;
        public bool IsNFC
        {
            get { return _isNFC; }
            set { _isNFC = value; }
        }


        public DogClasses(string connString)
        {
            _connString = connString;
        }

        public DogClasses(string connString, Guid dog_Class_ID)
        {
            _connString = connString;

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                tblDogClasses = dogClasses.GetDog_ClassByDog_Class_ID(dog_Class_ID);
                DataRow row = tblDogClasses.Rows[0];

                _dog_Class_ID = dog_Class_ID;
                _entrant_ID = Utils.DBNullToGuid(row["Entrant_ID"]);
                _dog_ID = Utils.DBNullToGuid(row["Dog_ID"]);
                _show_Entry_Class_ID = Utils.DBNullToGuid(row["Show_Entry_Class_ID"]);
                _preferred_Part = Utils.DBNullToInt(row["Preferred_Part"]);
                _show_Final_Class_ID = Utils.DBNullToGuid(row["Show_Final_Class_ID"]);
                _handler_ID = Utils.DBNullToGuid(row["Handler_ID"]);
                _ring_No = Utils.DBNullToShort(row["Ring_No"]);
                _running_Order = Utils.DBNullToShort(row["Running_Order"]);
                _special_Request = Utils.DBNullToString(row["Special_Request"]);
                if (_show_Entry_Class_ID != null && _show_Entry_Class_ID != new Guid())
                {
                    Guid sec_id = new Guid(_show_Entry_Class_ID.ToString());
                    ShowEntryClasses sec = new ShowEntryClasses(_connString, sec_id);
                    if (sec.IsNFC)
                        IsNFC = true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<DogClasses> GetDog_Classes()
        {
            List<DogClasses> retVal = new List<DogClasses>();

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                tblDogClasses = dogClasses.GetDog_Classes();

                if (tblDogClasses != null && tblDogClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogClasses.Rows)
                    {
                        DogClasses dogClass = new DogClasses(_connString, Utils.DBNullToGuid(row["Dog_Class_ID"]));
                        retVal.Add(dogClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }


        public List<DogClasses> GetDog_ClassesByDog_ID(Guid show_ID, Guid dog_ID)
        {
            List<DogClasses> retVal = new List<DogClasses>();

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                tblDogClasses = dogClasses.GetDog_ClassesByDog_ID(show_ID, dog_ID);

                if (tblDogClasses != null && tblDogClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogClasses.Rows)
                    {
                        DogClasses dogClass = new DogClasses(_connString, Utils.DBNullToGuid(row["Dog_Class_ID"]));
                        retVal.Add(dogClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<DogClasses> GetDog_ClassesByEntrant_ID_Dog_ID(Guid entrant_ID, Guid dog_ID)
        {
            List<DogClasses> retVal = new List<DogClasses>();

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                tblDogClasses = dogClasses.GetDog_ClassesByEntrant_ID_Dog_ID(entrant_ID, dog_ID);

                if (tblDogClasses != null && tblDogClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogClasses.Rows)
                    {
                        DogClasses dogClass = new DogClasses(_connString, Utils.DBNullToGuid(row["Dog_Class_ID"]));
                        retVal.Add(dogClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<DogClasses> GetDog_ClassesByEntrant_ID(Guid entrant_ID)
        {
            List<DogClasses> retVal = new List<DogClasses>();

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                tblDogClasses = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);

                if (tblDogClasses != null && tblDogClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogClasses.Rows)
                    {
                        DogClasses dogClass = new DogClasses(_connString, Utils.DBNullToGuid(row["Dog_Class_ID"]));
                        retVal.Add(dogClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<DogClasses> GetDog_ClassesByEntrant_ID(Guid entrant_ID, bool excl_NFC)
        {
            List<DogClasses> retVal = new List<DogClasses>();

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                tblDogClasses = dogClasses.GetDog_ClassesByEntrant_ID(entrant_ID);

                if (tblDogClasses != null && tblDogClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogClasses.Rows)
                    {
                        DogClasses dogClass = new DogClasses(_connString, Utils.DBNullToGuid(row["Dog_Class_ID"]));
                        if ((excl_NFC && !dogClass.IsNFC) || !excl_NFC)
                        {
                            retVal.Add(dogClass);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<DogClasses> GetDog_ClassesByHandler_ID(Guid handler_ID)
        {
            List<DogClasses> retVal = new List<DogClasses>();

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                tblDogClasses = dogClasses.GetDog_ClassesByHandler_ID(handler_ID);

                if (tblDogClasses != null && tblDogClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogClasses.Rows)
                    {
                        DogClasses dogClass = new DogClasses(_connString, Utils.DBNullToGuid(row["Dog_Class_ID"]));
                        retVal.Add(dogClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<DogClasses> GetDog_ClassesByShow_Entry_Class_ID(Guid show_Entry_Class_ID)
        {
            List<DogClasses> retVal = new List<DogClasses>();

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                tblDogClasses = dogClasses.GetDog_ClassesByShow_Entry_Class_ID(show_Entry_Class_ID);

                if (tblDogClasses != null && tblDogClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogClasses.Rows)
                    {
                        DogClasses dogClass = new DogClasses(_connString, Utils.DBNullToGuid(row["Dog_Class_ID"]));
                        retVal.Add(dogClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<DogClasses> GetDog_ClassesByShow_Final_Class_ID(Guid show_Final_Class_ID)
        {
            List<DogClasses> retVal = new List<DogClasses>();

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                tblDogClasses = dogClasses.GetDog_ClassesByShow_Final_Class_ID(show_Final_Class_ID);

                if (tblDogClasses != null && tblDogClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogClasses.Rows)
                    {
                        DogClasses dogClass = new DogClasses(_connString, Utils.DBNullToGuid(row["Dog_Class_ID"]));
                        retVal.Add(dogClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<DogClasses> GetDog_ClassesByDog_IDAndShow_Entry_Class_ID(Guid dog_ID, Guid show_Entry_Class_ID)
        {
            List<DogClasses> retVal = new List<DogClasses>();

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                tblDogClasses = dogClasses.GetDog_ClassesByDog_IDAndShow_Entry_Class_ID(dog_ID, show_Entry_Class_ID);

                if (tblDogClasses != null && tblDogClasses.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogClasses.Rows)
                    {
                        DogClasses dogClass = new DogClasses(_connString, Utils.DBNullToGuid(row["Dog_Class_ID"]));
                        retVal.Add(dogClass);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public short GetMaxRunningOrderForClass(Guid show_Final_Class_ID)
        {
            short retVal = 0;

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                retVal = dogClasses.GetMaxRunningOrderForClass(show_Final_Class_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
        public int GetEntryCountByShow_Final_Class_ID(Guid show_Final_Class_ID)
        {
            int retVal = 0;

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                retVal = dogClasses.GetEntryCountByShow_Final_Class_ID(show_Final_Class_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Dog_Class(Guid user_ID)
        {
            Guid? retVal = null;

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                retVal = (Guid?)dogClasses.Insert_Dog_Classes(_entrant_ID, _dog_ID, _show_Entry_Class_ID,
                    _preferred_Part, _handler_ID, _special_Request, _running_Order, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Dog_Class(Guid dog_Class_ID, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                DogClassesBL dogClasses = new DogClassesBL(_connString);
                retVal = dogClasses.Update_Dog_Classes(dog_Class_ID, _entrant_ID, _dog_ID, _show_Entry_Class_ID, _preferred_Part,
                    _show_Final_Class_ID, _handler_ID, _ring_No, _running_Order, _special_Request, _deleteDogClass, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}