using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class DogsBL
    {
        private string _connString = "";

        public DogsBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetDogs()
        {
            DataTable retVal = null;

            string spName = "spGetDogs";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dogs. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDogsByDog_ID(Guid dog_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDogByDog_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_ID", SSSDatabaseInfo.ParameterType.Guid, dog_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dogs. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDogsWhereBreed_IDInList(string breed_IDs)
        {
            DataTable retVal = null;

            string spName = "spGetDogsWhereDog_Breed_IDInList";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("breed_IDs", SSSDatabaseInfo.ParameterType.String, breed_IDs),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dogs. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDogsLikeDog_KC_Name(string dog_KC_Name)
        {
            DataTable retVal = null;

            string spName = "spGetDogsLikeDog_KC_Name";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_KC_Name", SSSDatabaseInfo.ParameterType.String, dog_KC_Name),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dogs. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDogsLikeDog_Pet_Name(string dog_Pet_Name)
        {
            DataTable retVal = null;

            string spName = "spGetDogsLikeDog_Pet_Name";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_Pet_Name", SSSDatabaseInfo.ParameterType.String, dog_Pet_Name),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dogs. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDogByRegNo(string regNo)
        {
            DataTable retVal = null;

            string spName = "spGetDogByRegNo";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Reg_No", SSSDatabaseInfo.ParameterType.String, regNo),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dogs. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public int GetMaxNAFNo()
        {
            int retVal = -1;

            string spName = "spGetMaxNAFNo";

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnInt(_connString, spName, null);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Max NAF Number. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Dogs(string dog_KC_Name, string dog_Pet_Name, int? dog_Breed_ID, int? dog_Gender_ID,
            string reg_No, DateTime? date_Of_Birth, short? year_Of_Birth,
            short? merit_Points, bool? nLWU, string breeder, string sire, string dam, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_tblDogs";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_KC_Name", SSSDatabaseInfo.ParameterType.String, dog_KC_Name),
                new SSSDatabaseInfo.DatabaseParameter("Dog_Pet_Name", SSSDatabaseInfo.ParameterType.String, dog_Pet_Name),
                new SSSDatabaseInfo.DatabaseParameter("Dog_Breed_ID", SSSDatabaseInfo.ParameterType.Int, dog_Breed_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dog_Gender_ID", SSSDatabaseInfo.ParameterType.Int, dog_Gender_ID),
                new SSSDatabaseInfo.DatabaseParameter("Reg_No", SSSDatabaseInfo.ParameterType.String, reg_No),
                new SSSDatabaseInfo.DatabaseParameter("Date_Of_Birth", SSSDatabaseInfo.ParameterType.DateTime, date_Of_Birth),
                new SSSDatabaseInfo.DatabaseParameter("Year_Of_Birth", SSSDatabaseInfo.ParameterType.Short, year_Of_Birth),
                new SSSDatabaseInfo.DatabaseParameter("Merit_Points", SSSDatabaseInfo.ParameterType.Short, merit_Points),
                new SSSDatabaseInfo.DatabaseParameter("NLWU", SSSDatabaseInfo.ParameterType.Bool, nLWU),
                new SSSDatabaseInfo.DatabaseParameter("Breeder", SSSDatabaseInfo.ParameterType.String, breeder),
                new SSSDatabaseInfo.DatabaseParameter("Sire", SSSDatabaseInfo.ParameterType.String, sire),
                new SSSDatabaseInfo.DatabaseParameter("Dam", SSSDatabaseInfo.ParameterType.String, dam),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Dog. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Dogs(Guid original_ID, string dog_KC_Name, string dog_Pet_Name, int? dog_Breed_ID, int? dog_Gender_ID,
            string reg_No, DateTime? date_Of_Birth, short? year_Of_Birth,
            short? merit_Points, bool? nLWU, string breeder, string sire, string dam, bool? deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_tblDogs";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dog_KC_Name", SSSDatabaseInfo.ParameterType.String, dog_KC_Name),
                new SSSDatabaseInfo.DatabaseParameter("Dog_Pet_Name", SSSDatabaseInfo.ParameterType.String, dog_Pet_Name),
                new SSSDatabaseInfo.DatabaseParameter("Dog_Breed_ID", SSSDatabaseInfo.ParameterType.Int, dog_Breed_ID),
                new SSSDatabaseInfo.DatabaseParameter("Dog_Gender_ID", SSSDatabaseInfo.ParameterType.Int, dog_Gender_ID),
                new SSSDatabaseInfo.DatabaseParameter("Reg_No", SSSDatabaseInfo.ParameterType.String, reg_No),
                new SSSDatabaseInfo.DatabaseParameter("Date_Of_Birth", SSSDatabaseInfo.ParameterType.DateTime, date_Of_Birth),
                new SSSDatabaseInfo.DatabaseParameter("Year_Of_Birth", SSSDatabaseInfo.ParameterType.Short, year_Of_Birth),
                new SSSDatabaseInfo.DatabaseParameter("Merit_Points", SSSDatabaseInfo.ParameterType.Short, merit_Points),
                new SSSDatabaseInfo.DatabaseParameter("NLWU", SSSDatabaseInfo.ParameterType.Bool, nLWU),
                new SSSDatabaseInfo.DatabaseParameter("Breeder", SSSDatabaseInfo.ParameterType.String, breeder),
                new SSSDatabaseInfo.DatabaseParameter("Sire", SSSDatabaseInfo.ParameterType.String, sire),
                new SSSDatabaseInfo.DatabaseParameter("Dam", SSSDatabaseInfo.ParameterType.String, dam),
                new SSSDatabaseInfo.DatabaseParameter("Deleted", SSSDatabaseInfo.ParameterType.Bool, deleted),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to update Dog. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
