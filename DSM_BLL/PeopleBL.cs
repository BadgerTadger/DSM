using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class PeopleBL
    {
        private string _connString = "";

        public PeopleBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetPeople()
        {
            DataTable retVal = null;

            string spName = "spGetPeople";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get People. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetPersonByPerson_ID(Guid person_ID)
        {
            DataTable retVal = null;

            string spName = "spGetPersonByPerson_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Person_ID", SSSDatabaseInfo.ParameterType.Guid, person_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Person. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetPeopleByAddress_ID(Guid address_ID)
        {
            DataTable retVal = null;

            string spName = "spGetPeopleByAddress_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Address_ID", SSSDatabaseInfo.ParameterType.Guid, address_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get People. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetPeopleByPerson_Forename(string person_Forename)
        {
            DataTable retVal = null;

            string spName = "spGetPeopleLikePerson_Forename";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Person_Forename", SSSDatabaseInfo.ParameterType.String, person_Forename),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get People. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetPeopleByPerson_Surname(string person_Surname)
        {
            DataTable retVal = null;

            string spName = "spGetPeopleLikePerson_Surname";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Person_Surname", SSSDatabaseInfo.ParameterType.String, person_Surname),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get People. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetPeopleBySurnameForenameEmail(string person_Surname, string person_Forename, string person_Email)
        {
            DataTable retVal = null;

            string spName = "spGetPeopleBySurnameForenameEmail";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Person_Surname", SSSDatabaseInfo.ParameterType.String, person_Surname),
                new SSSDatabaseInfo.DatabaseParameter("Person_Forename", SSSDatabaseInfo.ParameterType.String, person_Forename),
                new SSSDatabaseInfo.DatabaseParameter("Person_Email", SSSDatabaseInfo.ParameterType.String, person_Email),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get People. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetTitleList()
        {
            DataTable retVal = null;

            string spName = "spGetTitles";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Titles. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_People(string person_Title, string person_Surname, string person_Forename, Guid? address_ID, string person_Mobile,
            string person_Landline, string person_Email, Guid user_ID, long person_OE_Owner_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_tblPeople";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Person_Title", SSSDatabaseInfo.ParameterType.String, person_Title),
                new SSSDatabaseInfo.DatabaseParameter("Person_Surname", SSSDatabaseInfo.ParameterType.String, person_Surname),
                new SSSDatabaseInfo.DatabaseParameter("Person_Forename", SSSDatabaseInfo.ParameterType.String, person_Forename),
                new SSSDatabaseInfo.DatabaseParameter("Address_ID", SSSDatabaseInfo.ParameterType.Guid, address_ID),
                new SSSDatabaseInfo.DatabaseParameter("Person_Mobile", SSSDatabaseInfo.ParameterType.String, person_Mobile),
                new SSSDatabaseInfo.DatabaseParameter("Person_Landline", SSSDatabaseInfo.ParameterType.String, person_Landline),
                new SSSDatabaseInfo.DatabaseParameter("Person_Email", SSSDatabaseInfo.ParameterType.String, person_Email),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
                new SSSDatabaseInfo.DatabaseParameter("Person_OE_Owner_ID", SSSDatabaseInfo.ParameterType.Long, person_OE_Owner_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Person. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_People(Guid original_ID, string person_Title, string person_Surname, string person_Forename, Guid? address_ID, string person_Mobile,
            string person_Landline, string person_Email, bool? deleted, Guid user_ID, long person_OE_Owner_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_tblPeople";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Person_Title", SSSDatabaseInfo.ParameterType.String, person_Title),
                new SSSDatabaseInfo.DatabaseParameter("Person_Surname", SSSDatabaseInfo.ParameterType.String, person_Surname),
                new SSSDatabaseInfo.DatabaseParameter("Person_Forename", SSSDatabaseInfo.ParameterType.String, person_Forename),
                new SSSDatabaseInfo.DatabaseParameter("Address_ID", SSSDatabaseInfo.ParameterType.Guid, address_ID),
                new SSSDatabaseInfo.DatabaseParameter("Person_Mobile", SSSDatabaseInfo.ParameterType.String, person_Mobile),
                new SSSDatabaseInfo.DatabaseParameter("Person_Landline", SSSDatabaseInfo.ParameterType.String, person_Landline),
                new SSSDatabaseInfo.DatabaseParameter("Person_Email", SSSDatabaseInfo.ParameterType.String, person_Email),
                new SSSDatabaseInfo.DatabaseParameter("Deleted", SSSDatabaseInfo.ParameterType.Bool, deleted),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
                new SSSDatabaseInfo.DatabaseParameter("Person_OE_Owner_ID", SSSDatabaseInfo.ParameterType.Long, person_OE_Owner_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to update Person. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
