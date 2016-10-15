using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;

namespace BLL
{
    public class DogBreeders
    {
        private string _connString = "";

        private DataTable lnkDogBreeders = null;

        private Guid _dog_Breeder_ID;
        public Guid Dog_Breeder_ID
        {
            get { return _dog_Breeder_ID; }
            set { _dog_Breeder_ID = value; }
        }
        private Guid _dog_ID;
        public Guid Dog_ID
        {
            get { return _dog_ID; }
            set { _dog_ID = value; }
        }
        private Guid _breeder_ID;
        public Guid Breeder_ID
        {
            get { return _breeder_ID; }
            set { _breeder_ID = value; }
        }

        private bool _deleteDogBreeder = false;
        public bool DeleteDogBreeder
        {
            get { return _deleteDogBreeder; }
            set { _deleteDogBreeder = value; }
        }

        public DogBreeders(string connString)
        {
            _connString = connString;
        }

        public DogBreeders(string connString, Guid dog_Breeder_ID)
        {
            _connString = connString;

            try
            {
                DogBreedersBL dogBreeders = new DogBreedersBL(_connString);
                lnkDogBreeders = dogBreeders.GetDog_BreedersByDog_Breeder_ID(dog_Breeder_ID);
                DataRow row = lnkDogBreeders.Rows[0];

                _dog_Breeder_ID = dog_Breeder_ID;
                _dog_ID = Utils.DBNullToGuid(row["Dog_ID"]);
                _breeder_ID = Utils.DBNullToGuid(row["Breeder_ID"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<DogBreeders> GetDogBreedersByDog_ID(Guid dog_ID)
        {
            List<DogBreeders> dogBreederList = new List<DogBreeders>();

            try
            {
                DogBreedersBL dogBreeders = new DogBreedersBL(_connString);
                lnkDogBreeders = dogBreeders.GetDog_BreedersByDog_ID(dog_ID);

                if (lnkDogBreeders != null && lnkDogBreeders.Rows.Count > 0)
                {
                    foreach (DataRow row in lnkDogBreeders.Rows)
                    {
                        DogBreeders dogBreeder = new DogBreeders(_connString, Utils.DBNullToGuid(row["Dog_Breeder_ID"]));
                        dogBreederList.Add(dogBreeder);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return dogBreederList;
        }

        public List<DogBreeders> GetDogBreedersByBreeder_ID(Guid breeder_ID)
        {
            List<DogBreeders> dogBreederList = new List<DogBreeders>();

            try
            {
                DogBreedersBL dogBreeders = new DogBreedersBL(_connString);
                lnkDogBreeders = dogBreeders.GetDog_BreedersByBreeder_ID(breeder_ID);

                if (lnkDogBreeders != null && lnkDogBreeders.Rows.Count > 0)
                {
                    foreach (DataRow row in lnkDogBreeders.Rows)
                    {
                        DogBreeders dogBreeder = new DogBreeders(_connString, Utils.DBNullToGuid(row["Dog_Breeder_ID"]));
                        dogBreederList.Add(dogBreeder);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return dogBreederList;
        }

        public Guid? Insert_Dog_Breeder(Guid user_ID)
        {
            Guid? retVal = null;

            try
            {
                DogBreedersBL dogBreeders = new DogBreedersBL(_connString);
                if (_dog_ID != null && _breeder_ID != null)
                {
                    retVal = dogBreeders.Insert_Dog_Breeders(_dog_ID, _breeder_ID, user_ID);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Dog_Breeder(Guid original_ID, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                DogBreedersBL dogBreeders = new DogBreedersBL(_connString);
                retVal = dogBreeders.Update_Dog_Breeders(original_ID, _dog_ID, _breeder_ID, _deleteDogBreeder, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }

    public class DogBreederList
    {
        private List<People> _myDogBreederList;
        public List<People> MyDogBreederList
        {
            get { return _myDogBreederList; }
            set { _myDogBreederList = value; }
        }

        public DogBreederList()
        {
            GetDogBreederList();
        }

        public List<People> GetDogBreederList()
        {
            return MyDogBreederList;
        }

        public int AddBreeder(People breeder)
        {
            if (MyDogBreederList == null)
            {
                MyDogBreederList = new List<People>();
            }

            MyDogBreederList.Add(breeder);

            return MyDogBreederList.Count;
        }

        public int DeleteDogBreeder(int breeder)
        {
            if (MyDogBreederList == null)
            {
                MyDogBreederList = new List<People>();
            }

            MyDogBreederList.RemoveAt(breeder);
            
            return MyDogBreederList.Count;
        }

        public int ClearDogList()
        {
            if (MyDogBreederList == null)
            {
                MyDogBreederList = new List<People>();
            }

            MyDogBreederList.Clear();
            
            return MyDogBreederList.Count;
        }
    }
}