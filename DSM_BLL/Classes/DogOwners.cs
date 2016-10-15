using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class DogOwners
    {
        private string _connString = "";

        private DataTable lnkDogOwners = null;

        private Guid _dog_Owner_ID;
        public Guid Dog_Owner_ID
        {
            get { return _dog_Owner_ID; }
            set { _dog_Owner_ID = value; }
        }
        private Guid _dog_ID;
        public Guid Dog_ID
        {
            get { return _dog_ID; }
            set { _dog_ID = value; }
        }
        private Guid _owner_ID;
        public Guid Owner_ID
        {
            get { return _owner_ID; }
            set { _owner_ID = value; }
        }

        private bool _deleteDogOwner = false;
        public bool DeleteDogOwner
        {
            get { return _deleteDogOwner; }
            set { _deleteDogOwner = value; }
        }

        public DogOwners(string connString)
        {
            _connString = connString;
        }

        public DogOwners(string connString, Guid dog_Owner_ID)
        {
            _connString = connString;
            DogOwnersBL dogOwners = new DogOwnersBL(_connString);
            lnkDogOwners = dogOwners.GetDog_OwnersByDog_Owner_ID(dog_Owner_ID);
            DataRow row = lnkDogOwners.Rows[0];

            Dog_Owner_ID = dog_Owner_ID;
            Dog_ID = Utils.DBNullToGuid(row["Dog_ID"]);
            Owner_ID = Utils.DBNullToGuid(row["Owner_ID"]);
        }

        public List<DogOwners> GetDogOwnersByDog_ID(Guid dog_ID)
        {
            List<DogOwners> dogOwnerList = new List<DogOwners>();
            DogOwnersBL dogOwners = new DogOwnersBL(_connString);
            lnkDogOwners = dogOwners.GetDog_OwnersByDog_ID(dog_ID);

            if (lnkDogOwners != null && lnkDogOwners.Rows.Count > 0)
            {
                foreach (DataRow row in lnkDogOwners.Rows)
                {
                    DogOwners dogOwner = new DogOwners(_connString, Utils.DBNullToGuid(row["Dog_Owner_ID"]));
                    dogOwnerList.Add(dogOwner);
                }
            }

            return dogOwnerList;
        }

        public List<DogOwners> GetDogOwnersByOwner_ID(Guid owner_ID)
        {
            List<DogOwners> dogOwnerList = new List<DogOwners>();
            DogOwnersBL dogOwners = new DogOwnersBL(_connString);
            lnkDogOwners = dogOwners.GetDog_OwnersByOwner_ID(owner_ID);

            if (lnkDogOwners != null && lnkDogOwners.Rows.Count > 0)
            {
                foreach (DataRow row in lnkDogOwners.Rows)
                {
                    DogOwners dogOwner = new DogOwners(_connString, Utils.DBNullToGuid(row["Dog_Owner_ID"]));
                    dogOwnerList.Add(dogOwner);
                }
            }

            return dogOwnerList;
        }

        public List<DogOwners> GetDogOwnersByShow_ID(Guid show_ID)
        {
            List<DogOwners> dogOwnerList = new List<DogOwners>();
            DogOwnersBL dogOwners = new DogOwnersBL(_connString);
            lnkDogOwners = dogOwners.GetDog_OwnersByShow_ID(show_ID);

            if (lnkDogOwners != null && lnkDogOwners.Rows.Count > 0)
            {
                foreach (DataRow row in lnkDogOwners.Rows)
                {
                    DogOwners dogOwner = new DogOwners(_connString, Utils.DBNullToGuid(row["Dog_Owner_ID"]));
                    dogOwnerList.Add(dogOwner);
                }
            }

            return dogOwnerList;
        }

        public Guid? Insert_Dog_Owner(Guid user_ID)
        {
            DogOwnersBL dogOwners = new DogOwnersBL(_connString);
            Guid? retVal = null;
            if (Dog_ID != null && Owner_ID != null)
                retVal = dogOwners.Insert_Dog_Owners(_dog_ID, _owner_ID, user_ID);

            return retVal;
        }

        public bool Update_Dog_Owner(Guid original_ID, Guid user_ID)
        {
            bool retVal = false;

            DogOwnersBL dogOwners = new DogOwnersBL(_connString);
            retVal = dogOwners.Update_Dog_Owners(original_ID, _dog_ID, _owner_ID, _deleteDogOwner, user_ID);

            return retVal;
        }
    }

    public class DogOwnerList
    {
        private List<People> _myDogOwnerList;
        public List<People> MyDogOwnerList
        {
            get { return _myDogOwnerList; }
            set { _myDogOwnerList = value; }
        }

        public DogOwnerList()
        {
            GetDogOwnerList();
        }
        public List<People> GetDogOwnerList()
        {
            return MyDogOwnerList;
        }
        public int AddOwner(People owner)
        {
            if (MyDogOwnerList == null)
                MyDogOwnerList = new List<People>();
            bool foundOwner = false;
            foreach (People o in MyDogOwnerList)
            {
                if (o.Person_ID == owner.Person_ID)
                    foundOwner = true;
            }
            if (!foundOwner)
                MyDogOwnerList.Add(owner);

            return MyDogOwnerList.Count;
        }
        public List<People> Sort()
        {
            MyDogOwnerList.Sort(
                delegate(People p1, People p2)
                {
                    return p1.Person_Surname.CompareTo(p2.Person_Surname);
                }
            );
            return MyDogOwnerList;
        }
        public int DeleteDogOwner(int owner)
        {
            if (MyDogOwnerList == null)
                MyDogOwnerList = new List<People>();
            MyDogOwnerList.RemoveAt(owner);
            return MyDogOwnerList.Count;
        }
        public int ClearDogList()
        {
            if (MyDogOwnerList == null)
                MyDogOwnerList = new List<People>();
            MyDogOwnerList.Clear();
            return MyDogOwnerList.Count;
        }
    }
}