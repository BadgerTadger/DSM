using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;
using System.Data.SqlClient;
using System.Configuration;

namespace dsm_win
{ 
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new frmMain());
        }

        public static Guid UserID()
        {
            Guid retVal = new Guid("228149FE-46D2-4FBD-8916-8945E3C714FF");

            return retVal;
        }

        private static Guid? _personID;
        public static Guid? PersonID
        {
            get
            {
                return _personID;
            }
            set
            {
                _personID = value;
            }
        }

        public static string ConnectionString()
        {
            string retVal ="";

            SqlConnectionStringBuilder csb = new SqlConnectionStringBuilder(ConfigurationManager.ConnectionStrings["SSSDBConnDev"].ConnectionString);

            retVal = csb.ConnectionString;

            return retVal;
        }
    }
}
