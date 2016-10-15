using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class OwnersDogsClassesHandlers
    {
        private string _connString = "";

        private DataTable tblOwnersDogsClassesHandlers = null;

        private Guid _dog_Class_ID;
        public Guid Dog_Class_ID
        {
            get { return _dog_Class_ID; }
            set { _dog_Class_ID = value; }
        }
        private Guid _owner_ID;
        public Guid Owner_ID
        {
            get { return _owner_ID; }
            set { _owner_ID = value; }
        }
        private Guid _handler_ID;
        public Guid Handler_ID
        {
            get { return _handler_ID; }
            set { _handler_ID = value; }
        }
        private string _owner = null;
        public string Owner
        {
            get { return _owner; }
            set { _owner = value; }
        }
        private string _dog_KC_Name = null;
        public string Dog_KC_Name
        {
            get { return _dog_KC_Name; }
            set { _dog_KC_Name = value; }
        }
        private string _class = null;
        public string Class
        {
            get { return _class; }
            set { _class = value; }
        }
        private string _handler = null;
        public string Handler
        {
            get { return _handler; }
            set { _handler = value; }
        }

        public OwnersDogsClassesHandlers(string connString)
        {
            _connString = connString;
        }

        public List<OwnersDogsClassesHandlers> GetOwnersDogsClassesHandlers(Guid owner_ID)
        {
            List<OwnersDogsClassesHandlers> retVal = new List<OwnersDogsClassesHandlers>();

            try
            {
                OwnersDogsClassesHandlersBL ownersDogsClassesHandlers = new OwnersDogsClassesHandlersBL(_connString);
                tblOwnersDogsClassesHandlers = ownersDogsClassesHandlers.GetOwnersDogsClassesHandlers(owner_ID);

                if (tblOwnersDogsClassesHandlers != null && tblOwnersDogsClassesHandlers.Rows.Count > 0)
                {
                    foreach (DataRow row in tblOwnersDogsClassesHandlers.Rows)
                    {
                        OwnersDogsClassesHandlers oDCH = new OwnersDogsClassesHandlers(_connString);
                        oDCH.Dog_Class_ID = Utils.DBNullToGuid(row["Dog_Class_ID"]);
                        oDCH.Owner_ID = Utils.DBNullToGuid(row["Owner_ID"]);
                        oDCH.Handler_ID = Utils.DBNullToGuid(row["Handler_ID"]);
                        oDCH.Owner = Utils.DBNullToString(row["Owner"]);
                        oDCH.Dog_KC_Name = Utils.DBNullToString(row["Dog_KC_Name"]);
                        oDCH.Class = Utils.DBNullToString(row["Class"]);
                        oDCH.Handler = Utils.DBNullToString(row["Handler"]);
                        retVal.Add(oDCH);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool PopulateOwnersDogsClassesHandlers(Guid owner_ID)
        {
            bool retVal = false;

            try
            {
                OwnersDogsClassesHandlersBL ownersDogsClassesHandlers = new OwnersDogsClassesHandlersBL(_connString);
                retVal = ownersDogsClassesHandlers.PopulateOwnersDogsClassesHandlers(owner_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}
