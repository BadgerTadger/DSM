using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class Dogs
    {
        private string _connString = "";

        private DataTable tblDogs = null;

        private Guid _dog_ID;
        public Guid Dog_ID
        {
            get { return _dog_ID; }
            set { _dog_ID = value; }
        }
        private bool _isDog_KC_NameNull;
        public bool IsDog_KC_NameNull
        {
            get { return _isDog_KC_NameNull; }
            set { _isDog_KC_NameNull = value; }
        }
        private string _dog_KC_Name = null;
        public string Dog_KC_Name
        {
            get { return _dog_KC_Name; }
            set { _dog_KC_Name = value; }
        }
        private bool _isDog_Pet_NameNull;
        public bool IsDog_Pet_NameNull
        {
            get { return _isDog_Pet_NameNull; }
            set { _isDog_Pet_NameNull = value; }
        }
        private string _dog_Pet_Name = null;
        public string Dog_Pet_Name
        {
            get { return _dog_Pet_Name; }
            set { _dog_Pet_Name = value; }
        }
        private bool _isDog_Breed_IDNull;
        public bool IsDog_Breed_IDNull
        {
            get { return _isDog_Breed_IDNull; }
            set { _isDog_Breed_IDNull = value; }
        }
        private int? _dog_Breed_ID = null;
        public int? Dog_Breed_ID
        {
            get { return _dog_Breed_ID; }
            set { _dog_Breed_ID = value; }
        }
        private string _dog_Breed_Description;
        public string Dog_Breed_Description
        {
            get { return _dog_Breed_Description; }
            set { _dog_Breed_Description = value; }
        }
        private bool _isDog_Gender_IDNull;
        public bool IsDog_Gender_IDNull
        {
            get { return _isDog_Gender_IDNull; }
            set { _isDog_Gender_IDNull = value; }
        }
        private int? _dog_Gender_ID = null;
        public int? Dog_Gender_ID
        {
            get { return _dog_Gender_ID; }
            set { _dog_Gender_ID = value; }
        }
        private string _dog_Gender;
        public string Dog_Gender
        {
            get { return _dog_Gender; }
            set { _dog_Gender = value; }
        }
        private bool _isReg_NoNull;
        public bool IsReg_NoNull
        {
            get { return _isReg_NoNull; }
            set { _isReg_NoNull = value; }
        }
        private string _reg_No = null;
        public string Reg_No
        {
            get { return _reg_No; }
            set { _reg_No = value; }
        }
        private bool _isDate_Of_BirthNull;
        public bool IsDate_Of_BirthNull
        {
            get { return _isDate_Of_BirthNull; }
            set { _isDate_Of_BirthNull = value; }
        }
        private DateTime? _date_Of_Birth = null;
        public DateTime? Date_Of_Birth
        {
            get { return _date_Of_Birth; }
            set { _date_Of_Birth = value; }
        }
        private bool _isYear_Of_BirthNull;
        public bool IsYear_Of_BirthNull
        {
            get { return _isYear_Of_BirthNull; }
            set { _isYear_Of_BirthNull = value; }
        }
        private short? _year_Of_Birth = null;
        public short? Year_Of_Birth
        {
            get { return _year_Of_Birth; }
            set { _year_Of_Birth = value; }
        }
        private bool _isMerit_PointsNull;
        public bool IsMerit_PointsNull
        {
            get { return _isMerit_PointsNull; }
            set { _isMerit_PointsNull = value; }
        }
        private short? _merit_Points = null;
        public short? Merit_Points
        {
            get { return _merit_Points; }
            set { _merit_Points = value; }
        }
        private bool _isNLWUNull;
        public bool IsNLWUNull
        {
            get { return _isNLWUNull; }
            set { _isNLWUNull = value; }
        }
        private bool? _nLWU = null;
        public bool? NLWU
        {
            get { return _nLWU; }
            set { _nLWU = value; }
        }
        private bool _isBreederNull;
        public bool IsBreederNull
        {
            get { return _isBreederNull; }
            set { _isBreederNull = value; }
        }
        private string _breeder;
        public string Breeder
        {
            get { return _breeder; }
            set { _breeder = value; }
        }
        private bool _isSireNull;
        public bool IsSireNull
        {
            get { return _isSireNull; }
            set { _isSireNull = value; }
        }
        private string _sire;
        public string Sire
        {
            get { return _sire; }
            set { _sire = value; }
        }
        private bool _isDamNull;
        public bool IsDamNull
        {
            get { return _isDamNull; }
            set { _isDamNull = value; }
        }
        private string _dam;
        public string Dam
        {
            get { return _dam; }
            set { _dam = value; }
        }
        
        
        private bool? _deleteDog = null;
        public bool? DeleteDog
        {
            get { return _deleteDog; }
            set { _deleteDog = value; }
        }

        public Dogs(string connString)
        {
            _connString = connString;
        }

        public Dogs(string connString, Guid dog_ID)
        {
            _connString = connString;

            try
            {
                DogsBL dogs = new DogsBL(_connString);
                tblDogs = dogs.GetDogsByDog_ID(dog_ID);
                DataRow row = tblDogs.Rows[0];

                _dog_ID = dog_ID;
                _dog_KC_Name = Utils.DBNullToString(row["Dog_KC_Name"]);
                _dog_Pet_Name = Utils.DBNullToString(row["Dog_Pet_Name"]);
                _dog_Breed_ID = Utils.DBNullToInt(row["Dog_Breed_ID"]);
                _dog_Gender_ID = Utils.DBNullToInt(row["Dog_Gender_ID"]);
                _reg_No = Utils.DBNullToString(row["Reg_No"]);
                _date_Of_Birth = Utils.DBNullToDate(row["Date_Of_Birth"]);
                _year_Of_Birth = Utils.DBNullToShort(row["Year_Of_Birth"]);
                _merit_Points = Utils.DBNullToShort(row["Merit_Points"]);
                _nLWU = Utils.DBNullToBool(row["NLWU"]);
                _breeder = Utils.DBNullToString(row["Breeder"]);
                _sire = Utils.DBNullToString(row["Sire"]);
                _dam = Utils.DBNullToString(row["Dam"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Dogs> GetDogs()
        {
            List<Dogs> retVal = new List<Dogs>();

            try
            {
                DogsBL dogs = new DogsBL(_connString);
                tblDogs = dogs.GetDogs();

                if (tblDogs != null && tblDogs.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogs.Rows)
                    {
                        Dogs dog = new Dogs(_connString, Utils.DBNullToGuid(row["Dog_ID"]));
                        retVal.Add(dog);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Dogs> GetDogsLikeDog_KC_Name(string dog_KC_Name)
        {
            List<Dogs> retVal = new List<Dogs>();

            try
            {
                DogsBL dogs = new DogsBL(_connString);
                tblDogs = dogs.GetDogsLikeDog_KC_Name(dog_KC_Name);

                if (tblDogs != null && tblDogs.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogs.Rows)
                    {
                        Dogs dog = new Dogs(_connString, Utils.DBNullToGuid(row["Dog_ID"]));
                        retVal.Add(dog);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Dogs> GetDogsLikeDog_Pet_Name(string dog_Pet_Name)
        {
            List<Dogs> retVal = new List<Dogs>();

            try
            {
                DogsBL dogs = new DogsBL(_connString);
                tblDogs = dogs.GetDogsLikeDog_Pet_Name(dog_Pet_Name);

                if (tblDogs != null && tblDogs.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogs.Rows)
                    {
                        Dogs dog = new Dogs(_connString, Utils.DBNullToGuid(row["Dog_ID"]));
                        retVal.Add(dog);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Dogs> GetDogByRegNo(string reg_No)
        {
            List<Dogs> retVal = new List<Dogs>();

            try
            {
                DogsBL dogs = new DogsBL(_connString);
                tblDogs = dogs.GetDogByRegNo(reg_No);

                if (tblDogs != null && tblDogs.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogs.Rows)
                    {
                        Dogs dog = new Dogs(_connString, Utils.DBNullToGuid(row["Dog_ID"]));
                        retVal.Add(dog);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<Dogs> GetDogsByDog_Breed_ID(List<DogBreeds> lkpDogBreeds)
        {
            List<Dogs> retVal = new List<Dogs>();

            string dog_Breed_IDs = null;
            foreach (DogBreeds dog_Breed in lkpDogBreeds)
            {
                dog_Breed_IDs += dog_Breed.Dog_Breed_ID + ", ";
            }
            string Breed_IDs = dog_Breed_IDs.Substring(0, dog_Breed_IDs.Length - 2);


            try
            {
                DogsBL dogs = new DogsBL(_connString);
                tblDogs = dogs.GetDogsWhereBreed_IDInList(Breed_IDs);

                if (tblDogs != null && tblDogs.Rows.Count > 0)
                {
                    foreach (DataRow row in tblDogs.Rows)
                    {
                        Dogs dog = new Dogs(_connString, Utils.DBNullToGuid(row["Dog_ID"]));
                        retVal.Add(dog);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public int GetMaxNAFNo()
        {
            int retVal = -1;

            try
            {
                DogsBL dogs = new DogsBL(_connString);
                retVal = dogs.GetMaxNAFNo();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Dog(Guid user_ID)
        {
            Guid? retVal = null;

            try
            {
                DogsBL dogs = new DogsBL(_connString);
                retVal = dogs.Insert_Dogs(_dog_KC_Name, _dog_Pet_Name, _dog_Breed_ID, _dog_Gender_ID,
                    _reg_No, _date_Of_Birth, _year_Of_Birth, _merit_Points, _nLWU, _breeder, _sire, _dam, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Dog(Guid dog_ID, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                DogsBL dogs = new DogsBL(_connString);
                retVal = dogs.Update_Dogs(dog_ID, _dog_KC_Name, _dog_Pet_Name, _dog_Breed_ID, _dog_Gender_ID,
                    _reg_No, _date_Of_Birth, _year_Of_Birth, _merit_Points, _nLWU, _breeder, _sire, _dam, _deleteDog, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }

    public class DogList
    {
        private List<Dogs> _myDogList;
        public List<Dogs> MyDogList
        {
            get { return _myDogList; }
            set { _myDogList = value; }
        }

        public DogList()
        {
            GetDogList();
        }
        public List<Dogs> GetDogList()
        {
            return MyDogList;
        }
        public int AddDog(Dogs dog)
        {
            if (MyDogList == null)
                MyDogList = new List<Dogs>();
            bool foundDog = false;
            foreach (Dogs d in MyDogList)
            {
                if (d.Dog_ID == dog.Dog_ID)
                    foundDog = true;
            }
            if (!foundDog)
                MyDogList.Add(dog);

            return MyDogList.Count;
        }
        public int DeleteDog(int dog)
        {
            if (MyDogList == null)
                MyDogList = new List<Dogs>();
            MyDogList.RemoveAt(dog);
            return MyDogList.Count;
        }
        public int ClearDogList()
        {
            if (MyDogList == null)
                MyDogList = new List<Dogs>();
            MyDogList.Clear();
            return MyDogList.Count;
        }
        public void SortDogList()
        {
            if (MyDogList != null)
                MyDogList.Sort(delegate(Dogs d1, Dogs d2) { return d1.Dog_KC_Name.CompareTo(d2.Dog_KC_Name); });
        }
    }
}