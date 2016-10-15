using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class DogGenderBL
    {
        private string _connString = "";

        public DogGenderBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetDog_Gender()
        {
            DataTable retVal = null;

            string spName = "spGetDog_Gender";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Gender. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_GenderByDog_Gender_ID(int dog_Gender_ID)
        {
            DataTable retVal = null;

            string spName = "spGetDog_GenderByDog_Gender_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_Gender_ID", SSSDatabaseInfo.ParameterType.Int, dog_Gender_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Gender. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetDog_GenderLikeDog_Gender(string dog_Gender)
        {
            DataTable retVal = null;

            string spName = "spGetDog_GenderLikeDog_Gender";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Dog_Gender", SSSDatabaseInfo.ParameterType.String, dog_Gender),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Dog Gender. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
