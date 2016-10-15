using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class DogDams
    {
        string _connString = "";

        private DataTable lnkDogDams = null;

        private Guid _dog_Dam_ID;
        public Guid Dog_Dam_ID
        {
            get { return _dog_Dam_ID; }
            set { _dog_Dam_ID = value; }
        }
        private Guid _dog_ID;
        public Guid Dog_ID
        {
            get { return _dog_ID; }
            set { _dog_ID = value; }
        }
        private Guid _dam_ID;
        public Guid Dam_ID
        {
            get { return _dam_ID; }
            set { _dam_ID = value; }
        }

        private bool _deleteDogDam = false;
        public bool DeleteDogDam
        {
            get { return _deleteDogDam; }
            set { _deleteDogDam = value; }
        }

        public DogDams(string connString)
        {
            _connString = connString;
        }

        public DogDams(string connString, Guid dog_Dam_ID)
        {
            _connString = connString;
            DogDamsBL dogDams = new DogDamsBL(_connString);
            lnkDogDams = dogDams.GetDog_DamByDog_Dam_ID(dog_Dam_ID);
            DataRow row = lnkDogDams.Rows[0];

            _dog_Dam_ID = dog_Dam_ID;
            _dog_ID = Utils.DBNullToGuid(row["Dog_ID"]);
            _dam_ID = Utils.DBNullToGuid(row["Dam_ID"]);
        }

        public List<DogDams> GetDogDamsByDog_ID(Guid dog_ID)
        {
            List<DogDams> dogDamList = new List<DogDams>();
            DogDamsBL dogDams = new DogDamsBL(_connString);
            lnkDogDams = dogDams.GetDog_DamByDog_ID(dog_ID);

            if (lnkDogDams != null && lnkDogDams.Rows.Count > 0)
            {
                foreach (DataRow row in lnkDogDams.Rows)
                {
                    DogDams dogDam = new DogDams(_connString, Utils.DBNullToGuid(row["Dog_Dam_ID"]));
                    dogDamList.Add(dogDam);
                }
            }
            return dogDamList;
        }

        public List<DogDams> GetDogDamsByDam_ID(Guid dam_ID)
        {
            List<DogDams> dogDamList = new List<DogDams>();
            DogDamsBL dogDams = new DogDamsBL(_connString);
            lnkDogDams = dogDams.GetDog_DamsByDam_ID(dam_ID);

            if (lnkDogDams != null && lnkDogDams.Rows.Count > 0)
            {
                foreach (DataRow row in lnkDogDams.Rows)
                {
                    DogDams dogDam = new DogDams(_connString, Utils.DBNullToGuid(row["Dog_Dam_ID"]));
                    dogDamList.Add(dogDam);
                }
            }
            return dogDamList;
        }

        public Guid? Insert_Dog_Dams(Guid user_ID)
        {
            DogDamsBL dogDams = new DogDamsBL(_connString);
            Guid? newID = dogDams.Insert_Dog_Dams(_dog_ID, _dam_ID, user_ID);

            return newID;
        }

        public bool Update_Dog_Dams(Guid original_ID, Guid user_ID)
        {
            bool success = false;

            DogDamsBL dogDams = new DogDamsBL(_connString);
            success = dogDams.Update_Dog_Dams(original_ID, _dog_ID, _dam_ID, _deleteDogDam, user_ID);

            return success;
        }
    }
}