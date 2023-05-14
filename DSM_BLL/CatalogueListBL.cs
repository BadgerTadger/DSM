using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel;
using System.Data;
using DSM_DATA;

namespace BLL
{
    class CatalogueListBL
    {
        string _connString = "";

        public CatalogueListBL(string connString)
        {
            _connString = connString;
        }

        public DataTable GetCatalogueListOrderByRingNumber()
        {
            DataTable retVal = null;

            string spName = "spGetCatalogueListByRingNumber";

            try
            {
                DataSet ds = SSSDatabaseInfo.ExecuteDataSet(_connString, spName, null);
                retVal = ds.Tables[0];
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Catalogue List. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;
        }

        public bool PopulateCatalogueListByRingNumber(Guid show_ID, bool ChampOnly = false)
        {
            bool retVal = false;

            string spName = ChampOnly ? "spPopulateChampCatalogueListByRingNumber" : "spPopulateCatalogueListByRingNumber";
            SSSDatabaseInfo.DatabaseParameter[] p = new SSSDatabaseInfo.DatabaseParameter[]
            {
                new SSSDatabaseInfo.DatabaseParameter("Show_ID", SSSDatabaseInfo.ParameterType.Guid, show_ID),
            };

            try
            {
                SSSDatabaseInfo.ExecuteNonQuery(_connString, spName, p);
                retVal = true;
            }
            catch (Exception ex)
            {
                ErrorLog.LogMessage(string.Format("Failed to get Catalogue List. Error: {0}", ex.Message));
                throw ex;
            }

            return retVal;

        }
    }
}
