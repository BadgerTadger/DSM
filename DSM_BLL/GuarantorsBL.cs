using DSM_DATA;
using System;
using System.Data;

namespace BLL
{
    class GuarantorsBL
    {
        private string _connString = "";

        public GuarantorsBL(string connString)
        {
            _connString = connString;
        }
        
        public DataTable GetGuarantors()
        {
            DataTable retVal = null;

            string spName = "spGetGuarantors";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Guarantors. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetGuarantorByGuarantor_ID(Guid guarantor_ID)
        {
            DataTable retVal = null;

            string spName = "spGetGuarantorByGuarantor_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Guarantor_ID", SSSDatabaseInfo.ParameterType.Guid, guarantor_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Guarantors. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetGuarantorsByShow_ID(Guid show_ID)
        {
            DataTable retVal = null;

            string spName = "spGetGuarantorsByShow_ID";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Guarantors. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Guarantors(Guid? show_ID, Guid? chairman_Person_ID, Guid? secretary_Person_ID, Guid? treasurer_Person_ID,
            Guid? committee1_Person_ID, Guid? committee2_Person_ID, Guid? committee3_Person_ID, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_tblGuarantors";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Chairman_Person_ID", SSSDatabaseInfo.ParameterType.Guid, chairman_Person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Secretary_Person_ID", SSSDatabaseInfo.ParameterType.Guid, secretary_Person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Treasurer_Person_ID", SSSDatabaseInfo.ParameterType.Guid, treasurer_Person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Committee1_Person_ID", SSSDatabaseInfo.ParameterType.Guid, committee1_Person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Committee2_Person_ID", SSSDatabaseInfo.ParameterType.Guid, committee2_Person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Committee3_Person_ID", SSSDatabaseInfo.ParameterType.Guid, committee3_Person_ID),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Guarantors. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Guarantors(Guid original_ID, Guid? show_ID, Guid? chairman_Person_ID, Guid? secretary_Person_ID, Guid? treasurer_Person_ID,
            Guid? committee1_Person_ID, Guid? committee2_Person_ID, Guid? committee3_Person_ID, bool? deleted, Guid? user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_tblGuarantors";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
                new SSSDatabaseInfo.DatabaseParameter("Chairman_Person_ID", SSSDatabaseInfo.ParameterType.Guid, chairman_Person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Secretary_Person_ID", SSSDatabaseInfo.ParameterType.Guid, secretary_Person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Treasurer_Person_ID", SSSDatabaseInfo.ParameterType.Guid, treasurer_Person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Committee1_Person_ID", SSSDatabaseInfo.ParameterType.Guid, committee1_Person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Committee2_Person_ID", SSSDatabaseInfo.ParameterType.Guid, committee2_Person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Committee3_Person_ID", SSSDatabaseInfo.ParameterType.Guid, committee3_Person_ID),
                new SSSDatabaseInfo.DatabaseParameter("Deleted", SSSDatabaseInfo.ParameterType.Guid, deleted),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Guid, user_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to update Guarantors. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
