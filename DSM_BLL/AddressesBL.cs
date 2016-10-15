using System;
using System.Collections.Generic;
using System.Text;
using DSM_DATA;

using System.ComponentModel;
using System.Data;

namespace BLL
{
    class AddressesBL
    {
        string _connString = "";

        public AddressesBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetAddresses()
        {
            DataTable retVal = null;

            string spName = "spGetAddresses";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Addresses. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }


        public DataTable GetAddressByAddress_ID(Guid address_ID)
        {
            DataTable retVal = null;

            string spName = "spGetAddressByAddress_ID";
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
                ErrorLog.LogMessage(string.Format("Failed to get Address. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetAddressesLikeAddress_1(string address_1)
        {
            DataTable retVal = null;

            string spName = "spGetAddressesLikeAddress_1";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Address_1", SSSDatabaseInfo.ParameterType.String, address_1),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Addresses. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetAddressesLikeAddress_2(string address_2)
        {
            DataTable retVal = null;

            string spName = "spGetAddressesLikeAddress_2";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Address_2", SSSDatabaseInfo.ParameterType.String, address_2),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Addresses. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetAddressesLikeAddress_Town(string address_Town)
        {
            DataTable retVal = null;

            string spName = "spGetAddressesLikeAddress_Town";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Address_Town", SSSDatabaseInfo.ParameterType.String, address_Town),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Addresses. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetAddressesLikeAddress_City(string address_City)
        {
            DataTable retVal = null;

            string spName = "spGetAddressesLikeAddress_City";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Address_City", SSSDatabaseInfo.ParameterType.String, address_City),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Addresses. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetAddressesLikeAddress_County(string address_County)
        {
            DataTable retVal = null;

            string spName = "spGetAddressesLikeAddress_County";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Address_County", SSSDatabaseInfo.ParameterType.String, address_County),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Addresses. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public DataTable GetAddressesLikeAddress_Postcode(string address_Postcode)
        {
            DataTable retVal = null;

            string spName = "spGetAddressesLikeAddress_Postcode";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Address_Postcode", SSSDatabaseInfo.ParameterType.String, address_Postcode),
            };

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, p);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Addresses. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Address(string address_1, string address_2, string address_Town,
            string address_City, string address_County, string address_Postcode, Guid user_ID)
        {
            Guid? retVal = null;

            string spName = "spInsert_tblAddresses";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Address_1", SSSDatabaseInfo.ParameterType.String, address_1),
                new SSSDatabaseInfo.DatabaseParameter("Address_2", SSSDatabaseInfo.ParameterType.String, address_2),
                new SSSDatabaseInfo.DatabaseParameter("Address_Town", SSSDatabaseInfo.ParameterType.String, address_Town),
                new SSSDatabaseInfo.DatabaseParameter("Address_City", SSSDatabaseInfo.ParameterType.String, address_City),
                new SSSDatabaseInfo.DatabaseParameter("Address_County", SSSDatabaseInfo.ParameterType.String, address_County),
                new SSSDatabaseInfo.DatabaseParameter("Address_Postcode", SSSDatabaseInfo.ParameterType.String, address_Postcode),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.String, user_ID),
            };

            try
            {
                retVal = SSSDatabaseInfo.ExecuteScalarReturnGuid(_connString, spName, p);
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to insert Address. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool Update_Address(Guid original_ID, string address_1, string address_2, string address_Town,
            string address_City, string address_County, string address_Postcode, bool deleted, Guid user_ID)
        {
            bool retVal = false;

            string spName = "spUpdate_tblAddresses";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Original_ID", SSSDatabaseInfo.ParameterType.Guid, original_ID),
                new SSSDatabaseInfo.DatabaseParameter("Address_1", SSSDatabaseInfo.ParameterType.String, address_1),
                new SSSDatabaseInfo.DatabaseParameter("Address_2", SSSDatabaseInfo.ParameterType.String, address_2),
                new SSSDatabaseInfo.DatabaseParameter("Address_Town", SSSDatabaseInfo.ParameterType.String, address_Town),
                new SSSDatabaseInfo.DatabaseParameter("Address_City", SSSDatabaseInfo.ParameterType.String, address_City),
                new SSSDatabaseInfo.DatabaseParameter("Address_County", SSSDatabaseInfo.ParameterType.String, address_County),
                new SSSDatabaseInfo.DatabaseParameter("Address_Postcode", SSSDatabaseInfo.ParameterType.String, address_Postcode),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.Bool, deleted),
                new SSSDatabaseInfo.DatabaseParameter("User_ID", SSSDatabaseInfo.ParameterType.String, user_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to update Address. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }
    }
}
