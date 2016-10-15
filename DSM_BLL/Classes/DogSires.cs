using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class DogSires
    {
        string _connString = "";

        private DataTable lnkDogSires = null;

        private Guid _dog_Sire_ID;
        public Guid Dog_Sire_ID
        {
            get { return _dog_Sire_ID; }
            set { _dog_Sire_ID = value; }
        }
        private Guid _dog_ID;
        public Guid Dog_ID
        {
            get { return _dog_ID; }
            set { _dog_ID = value; }
        }
        private Guid _sire_ID;
        public Guid Sire_ID
        {
            get { return _sire_ID; }
            set { _sire_ID = value; }
        }

        private bool _deleteDogSire = false;
        public bool DeleteDogSire
        {
            get { return _deleteDogSire; }
            set { _deleteDogSire = value; }
        }

        public DogSires(string connString)
        {
            _connString = connString;
        }

        public DogSires(string connString, Guid dog_Sire_ID)
        {
            _connString = connString;
            DogSiresBL dogSires = new DogSiresBL(_connString);
            lnkDogSires = dogSires.GetDog_SireByDog_Sire_ID(dog_Sire_ID);
            DataRow row = lnkDogSires.Rows[0];

            _dog_Sire_ID = dog_Sire_ID;
            _dog_ID = Utils.DBNullToGuid(row["Dog_ID"]);
            _sire_ID = Utils.DBNullToGuid(row["Sire_ID"]);
        }

        public List<DogSires> GetDogSiresByDog_ID(Guid dog_ID)
        {
            List<DogSires> dogSireList = new List<DogSires>();
            DogSiresBL dogSires = new DogSiresBL(_connString);
            lnkDogSires = dogSires.GetDog_SireByDog_ID(dog_ID);

            if (lnkDogSires != null && lnkDogSires.Rows.Count > 0)
            {
                foreach (DataRow row in lnkDogSires.Rows)
                {
                    DogSires dogSire = new DogSires(_connString, Utils.DBNullToGuid(row["Dog_Sire_ID"]));
                    dogSireList.Add(dogSire);
                }
            }
            return dogSireList;
        }

        public List<DogSires> GetDogSiresBySire_ID(Guid sire_ID)
        {
            List<DogSires> dogSireList = new List<DogSires>();
            DogSiresBL dogSires = new DogSiresBL(_connString);
            lnkDogSires = dogSires.GetDog_SiresBySire_ID(sire_ID);

            if (lnkDogSires != null && lnkDogSires.Rows.Count > 0)
            {
                foreach (DataRow row in lnkDogSires.Rows)
                {
                    DogSires dogSire = new DogSires(_connString, Utils.DBNullToGuid(row["Dog_Sire_ID"]));
                    dogSireList.Add(dogSire);
                }
            }
            return dogSireList;
        }

        public Guid? Insert_Dog_Sires(Guid user_ID)
        {
            DogSiresBL dogSires = new DogSiresBL(_connString);
            Guid? newID = dogSires.Insert_Dog_Sires(_dog_ID, _sire_ID, user_ID);

            return newID;
        }

        public bool Update_Dog_Sires(Guid original_ID, Guid user_ID)
        {
            bool success = false;

            DogSiresBL dogSires = new DogSiresBL(_connString);
            success = dogSires.Update_Dog_Sires(original_ID, _dog_ID, _sire_ID, _deleteDogSire, user_ID);

            return success;
        }
    }
}