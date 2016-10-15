using DSM_DATA;
using System;
using System.Data;


namespace BLL
{
    public class ShowRoles
    {
        private string _connString = "";

        public DataTable lkpShowRoles = null;

        private int _show_Role_ID;
        public int Show_Role_ID
        {
            get { return _show_Role_ID; }
            set { _show_Role_ID = value; }
        }

        private string _description = null;
        public string Description
        {
            get { return _description; }
            set { _description = value; }
        }

        public ShowRoles(string connString)
        {
            _connString = connString;

            try
            {
                ShowRolesBL showRoles = new ShowRolesBL(_connString);
                lkpShowRoles = showRoles.GetShow_Roles();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public ShowRoles(string connString, int show_Role_ID)
        {
            _connString = connString;

            try
            {
                ShowRolesBL showRoles = new ShowRolesBL(_connString);
                lkpShowRoles = showRoles.GetShow_RolesByShow_Role_ID(show_Role_ID);
                DataRow row = lkpShowRoles.Rows[0];

                _show_Role_ID = show_Role_ID;
                _description = Utils.DBNullToString(row["Show_Role_Description"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}