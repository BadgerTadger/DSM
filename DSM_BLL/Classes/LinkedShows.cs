using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;


namespace BLL
{
    public class LinkedShows
    {
        private string _connString = "";

        private DataTable lnkLinkedShows = null;

        private Guid _linked_Show_ID;
        public Guid Linked_Show_ID
        {
            get { return _linked_Show_ID; }
            set { _linked_Show_ID = value; }
        }

        private Guid _parent_Show_ID;
        public Guid Parent_Show_ID
        {
            get { return _parent_Show_ID; }
            set { _parent_Show_ID = value; }
        }

        private Guid _child_Show_ID;
        public Guid Child_Show_ID
        {
            get { return _child_Show_ID; }
            set { _child_Show_ID = value; }
        }

        private bool _deleteLinkedShow = false;
        public bool DeleteLinkedShow
        {
            get { return _deleteLinkedShow; }
            set { _deleteLinkedShow = value; }
        }

        private DateTime? _parent_Show_Opens = null;
        public DateTime? Parent_Show_Opens
        {
            get { return _parent_Show_Opens; }
            set { _parent_Show_Opens = value; }
        }

        private string _child_Show_Name = null;
        public string Child_Show_Name
        {
            get { return _child_Show_Name; }
            set { _child_Show_Name = value; }
        }

        private DateTime? _child_Show_Opens = null;
        public DateTime? Child_Show_Opens
        {
            get { return _child_Show_Opens; }
            set { _child_Show_Opens = value; }
        }

        private string _parent_Show_Name = null;
        public string Parent_Show_Name
        {
            get { return _parent_Show_Name; }
            set { _parent_Show_Name = value; }
        }

        public LinkedShows(string connString)
        {
            _connString = connString;
        }

        public LinkedShows(string connString, Guid linked_Show_ID)
        {
            _connString = connString;

            try
            {
                LinkedShowsBL linkedShows = new LinkedShowsBL(_connString);
                lnkLinkedShows = linkedShows.GetLinked_ShowByLinked_Show_ID(linked_Show_ID);
                DataRow row = lnkLinkedShows.Rows[0];

                _linked_Show_ID = linked_Show_ID;
                _parent_Show_ID = Utils.DBNullToGuid(row["Parent_Show_ID"]);
                _child_Show_ID = Utils.DBNullToGuid(row["Child_Show_ID"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<LinkedShows> GetLinked_Shows()
        {
            List<LinkedShows> retVal = new List<LinkedShows>();

            try
            {
                LinkedShowsBL linkedShows = new LinkedShowsBL(_connString);
                lnkLinkedShows = linkedShows.GetLinked_Shows();

                if (lnkLinkedShows != null && lnkLinkedShows.Rows.Count > 0)
                {
                    foreach (DataRow row in lnkLinkedShows.Rows)
                    {
                        LinkedShows linkedShow = new LinkedShows(_connString, Utils.DBNullToGuid(row["Linked_Show_ID"]));
                        retVal.Add(linkedShow);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public List<LinkedShows> GetLinked_ShowsByParent_ID(Guid parent_ID)
        {
            List<LinkedShows> retVal = new List<LinkedShows>();

            try
            {
                LinkedShowsBL linkedShows = new LinkedShowsBL(_connString);
                lnkLinkedShows = linkedShows.GetLinked_ShowsByParent_Show_ID(parent_ID);

                if (lnkLinkedShows != null && lnkLinkedShows.Rows.Count > 0)
                {
                    foreach (DataRow row in lnkLinkedShows.Rows)
                    {
                        LinkedShows linkedShow = new LinkedShows(_connString, Utils.DBNullToGuid(row["Linked_Show_ID"]));
                        retVal.Add(linkedShow);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }


            return retVal;
        }

        public List<LinkedShows> GetLinked_ShowsByChild_ID(Guid child_ID)
        {
            List<LinkedShows> retVal = new List<LinkedShows>();

            try
            {
                LinkedShowsBL linkedShows = new LinkedShowsBL(_connString);
                lnkLinkedShows = linkedShows.GetLinked_ShowByChild_Show_ID(child_ID);

                if (lnkLinkedShows != null && lnkLinkedShows.Rows.Count > 0)
                {
                    foreach (DataRow row in lnkLinkedShows.Rows)
                    {
                        LinkedShows linkedShow = new LinkedShows(_connString, Utils.DBNullToGuid(row["Linked_Show_ID"]));
                        retVal.Add(linkedShow);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public Guid? Insert_Linked_Shows(Guid user_ID)
        {
            Guid? retVal = null;

            try
            {
                LinkedShowsBL linkedShows = new LinkedShowsBL(_connString);
                retVal = linkedShows.Insert_Linked_Shows(_parent_Show_ID, _child_Show_ID, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public bool Update_Linked_Shows(Guid original_ID, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                LinkedShowsBL linkedShows = new LinkedShowsBL(_connString);
                retVal = linkedShows.Update_Linked_Shows(original_ID, _parent_Show_ID, _child_Show_ID, _deleteLinkedShow, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }
}