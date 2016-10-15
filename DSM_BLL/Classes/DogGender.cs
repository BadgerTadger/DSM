using DSM_DATA;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class DogGender
    {
        private string _connString = "";

        public DataTable lkpDogGender = null;

        private int _dog_Gender_ID;
        public int Dog_Gender_ID
        {
            get { return _dog_Gender_ID; }
            set { _dog_Gender_ID = value; }
        }

        private string _description = null;
        public string Description
        {
            get { return _description; }
            set { _description = value; }
        }

        public DogGender(string connString)
        {
            _connString = connString;
        }

        public DogGender(string connString, int dog_Gender_ID)
        {
            _connString = connString;
            DogGenderBL dogGender = new DogGenderBL(_connString);
            lkpDogGender = dogGender.GetDog_GenderByDog_Gender_ID(dog_Gender_ID);
            DataRow row = lkpDogGender.Rows[0];

            _dog_Gender_ID = dog_Gender_ID;
            _description = Utils.DBNullToString(row["Dog_Gender"]);
        }

        public List<DogGender> GetDog_Gender()
        {
            List<DogGender> dogGenderList = new List<DogGender>();
            DogGenderBL dogGender = new DogGenderBL(_connString);
            lkpDogGender = dogGender.GetDog_Gender();

            if (lkpDogGender != null && lkpDogGender.Rows.Count > 0)
            {
                foreach (DataRow row in lkpDogGender.Rows)
                {
                    DogGender gender = new DogGender(_connString, Utils.DBNullToInt(row["Dog_Gender_ID"]));
                    dogGenderList.Add(gender);
                }
            }
            return dogGenderList;
        }

        public int GetDog_Gender(string gender)
        {
            int retVal = 0;

            List<DogGender> dogGenderList = new List<DogGender>();
            DogGenderBL dogGender = new DogGenderBL(_connString);
            lkpDogGender = dogGender.GetDog_GenderLikeDog_Gender(gender);

            if (lkpDogGender != null && lkpDogGender.Rows.Count > 0)
            {
                retVal = Utils.DBNullToInt(lkpDogGender.Rows[0]["Dog_Gender_ID"]);
            }

            return retVal;
        }
    }
}